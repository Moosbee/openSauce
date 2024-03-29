<?php

/**
 *
 * GDPR cookie management banner
 * by Adrian Jones, Oliver Walker, and David Miller
 *
 * ProcessWire 3.x
 * Copyright (C) 2011 by Ryan Cramer
 * Licensed under GNU/GPL v2, see LICENSE.TXT
 *
 * http://www.processwire.com
 * http://www.ryancramer.com
 *
 */

class CookieManagementBanner extends \ProcessWire\WireData implements \ProcessWire\Module {

    public static function getModuleInfo() {
        return array(
            'title'    => 'Cookie Management Banner',
            'summary'  => \ProcessWire\__('Cookie management banner allows users to manage tracking cookies.'),
            'author'   => 'Adrian Jones, Oliver Walker, David Miller, and Roland Toth',
            'href'     => 'https://processwire.com/talk/topic/19525-cookie-management-banner/',
            'version'  => '0.4.11',
            'autoload' => true,
            'singular' => true,
            'requires'  => 'PHP>=5.4.4',
        );
    }

    protected $userFromEu = array();
    protected $isModuleSettingsPage = false;

    public function init() {}

    public function ready() {

        if(!$this->status) return;

        // don't render in formbuilder iframe
        if($this->wire('page')->template == 'form-builder') return;

        $this->isModuleSettingsPage = $this->wire('page')->process == 'ProcessModule' && $this->wire('input')->get->name == $this ? true : false;

        // stop here in backend except on this module's config \ProcessWire\page(for demonstration)
        if($this->wire('page')->template == 'admin' && !$this->isModuleSettingsPage) return;

        if($this->eu_visitors_only) {
            $this->auto_fire = 'false';
            if(!$this->wire('session')->userFromEu || $this->isModuleSettingsPage || $this->wire('session')->userFromEu['test'] == 'true') {
                $http = new \ProcessWire\WireHttp();

                if($this->isModuleSettingsPage) {
                    $this->userFromEu['test'] = 'true';
                    $ipAddress = $this->ip_test ?: $this->get_client_ip();
                }
                else {
                    $this->userFromEu['test'] = 'false';
                    $ipAddress = $this->get_client_ip();
                }

                if($ipAddress) {
                    foreach($this->ip_country_service as $ipService) {
                        if($ipService == 'ip.nf') {
                            // supports IPv6 but their server only supports 40 req/s which I worry might be an issue in the future?
                            $userLocation = $http->getJSON('https://ip.nf/' . $ipAddress . '.json');
                            if(!isset($userLocation['ip']['country_code']) || $userLocation['ip']['country_code'] == '') continue;
                            $countryInfo = $http->getJSON('https://restcountries.eu/rest/v2/alpha/'.$userLocation['ip']['country_code'].'?fields=regionalBlocs');
                        }
                        if($ipService == 'ip.sb') {
                            // no info provided on limits
                            $userLocation = $http->getJSON('https://api.ip.sb/geoip/'.$ipAddress);
                            if(!isset($userLocation['country_code']) || $userLocation['country_code'] == '') continue;
                            $countryInfo = $http->getJSON('https://restcountries.eu/rest/v2/alpha/'.$userLocation['country_code'].'?fields=regionalBlocs');
                        }
                        if(isset($countryInfo['regionalBlocs']) && $countryInfo['regionalBlocs'] != '') {
                            $this->usedService = $ipService;
                            break;
                        }
                    }

                    if(isset($countryInfo['regionalBlocs']) && $countryInfo['regionalBlocs'] != '' && $this->hasEuBloc($countryInfo['regionalBlocs'])) {
                        $this->userFromEu['value'] = 'true';
                    }
                    else {
                        $this->userFromEu['value'] = 'false';
                    }

                }
                else {
                    // don't know IP address so must force banner to display in case they are from EU
                    $this->userFromEu['value'] = 'true';
                }


                if($this->wire('modules')->isInstalled('TracyDebugger') && method_exists('\TD', 'barDump')) {
                    if(isset($userLocation)) \TD::barDump($userLocation, 'User Location from: '. $this->usedService);
                    if(isset($countryInfo)) \TD::barDump($countryInfo, 'From EU Test: ' . $this->userFromEu['value']);
                }

                $this->wire('session')->userFromEu = $this->userFromEu;

            }
            if($this->wire('session')->userFromEu['value'] != 'true') {
                $this->auto_fire = 'true';
            }

        }

        $this->wire()->addHookAfter('Page::render', null, function(\ProcessWire\HookEvent $event) {

            // get user language to determine what language to output banner text in
            if($this->wire('languages')) {
                $userLanguage = $this->wire('user')->language;
                $lang = $userLanguage->isDefault() ? '' : "__$userLanguage->id";
            }
            else {
                $lang = '';
            }

            // inject assets and banner tpl files
            $moduleUrl = $this->wire('config')->urls->$this;
            // we don't need to load the tpl or css files if the user isn't potentially going to see the banner
            if(!$this->eu_visitors_only || ($this->eu_visitors_only && $this->wire('session')->userFromEu['value'] == 'true')) {
                $cookieBanner = \ProcessWire\wirerenderfile(\ProcessWire\wire('files')->compile($this->wire('config')->paths->$this.'wrapper.tpl.php',array('includes'=>true,'namespace'=>true,'modules'=>false,'skipIfNamespace'=>false)), array('module' => $this, 'lang' => $lang));
                if($this->autoload_assets) $event->return = $this->str_replace_once("<link ", "<link rel='stylesheet' type='text/css' href='{$moduleUrl}assets/css/{$this}.css' />\n<link ", $event->return);
            }
            else {
                $cookieBanner = '';
            }
            // we still need the js file regardless of whether they will see the banner or not so that we can auto_fire
            // the tracking beacon for Google Tag Manager and the dataLayer variable
            $jsInline = '
            <script>
                var pwcmb_settings = {
                    status: "'.$this->status.'",
                    version: "'.$this->version.'",
                    auto_accept: "'.$this->auto_accept.'",
                    auto_fire: "'.$this->auto_fire.'"
                };
            </script>
            ';
            if($this->isModuleSettingsPage) {
                $jsInline .= '
                <script>
                    var pwcmbClearLS = function() {
                        localStorage.removeItem("pwcmbAllowCookies");
                        localStorage.removeItem("pwcmbSelectionMade");
                        localStorage.removeItem("pwcmbVersion");
                        localStorage.removeItem("pwcmbViewCount");
                        window.location.reload(true);
                    }
                </script>';
            }
            $jsFilename = $this->js_version == 'jquery' ? $this : $this . '.vanilla';
            $jsFile = $this->autoload_assets ? "<script defer src='{$moduleUrl}assets/js/{$jsFilename}.js'></script>" : "";
            $event->return = str_replace("</body>", "{$cookieBanner}{$jsInline}{$jsFile}</body>", $event->return);

        });

    }


    // get user IP address
    private function get_client_ip() {
		if (!empty($_SERVER["HTTP_CLIENT_IP"])) {
			$ip = $_SERVER["HTTP_CLIENT_IP"];
		}
		elseif (!empty($_SERVER["HTTP_X_FORWARDED_FOR"])) {
			$ip = $_SERVER["HTTP_X_FORWARDED_FOR"];
		}
		elseif (!empty($_SERVER["REMOTE_ADDR"])) {
			$ip = $_SERVER["REMOTE_ADDR"];
        }
        else {
            $ip = null;
        }
		return $ip;
	}


    // determine if return regionalBlocs array contains EU
    private function hasEuBloc($array) {
        foreach($array as $item) {
            if($item['acronym'] === 'EU') {
                return true;
            }
        }
       return false;
    }

    // replace once helper
    private function str_replace_once($needle, $replacement, $haystack) {
        $pos = strpos($haystack, $needle);
        if($pos !== false) {
            $haystack = substr_replace($haystack, $replacement, $pos, strlen($needle));
        }
        return $haystack;
    }

}
