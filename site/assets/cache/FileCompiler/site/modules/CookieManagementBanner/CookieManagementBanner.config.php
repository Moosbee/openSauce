<?php

$config = array(
    // Settings
    array(
        'type' => 'fieldset',
        'label' => \ProcessWire\__("Settings"),
        'children' => array(
            array(
                'type' => 'checkbox',
                'name' => 'status',
                'label' => \ProcessWire\__('Enable cookie management banner'),
                'columnWidth' => 50,
                'value' => null
            ),
            array(
                'type' => 'text',
                'name' => 'version',
                'label' => \ProcessWire\__('Version number'),
                'notes' => \ProcessWire\__('Changing the version number will trigger the cookie modal to be displayed to all users until they make their preference known. Increment this value when policy or wordings change and new opt-ins are required.'),
                'columnWidth' => 50,
                'required' => true,
                'value' => 1
            ),
            array(
                'type' => 'checkbox',
                'name' => 'autoload_assets',
                'label' => \ProcessWire\__('Autoload Assets'),
                'description' => \ProcessWire\__('Autoload module CSS and JS files.'),
                'notes' => \ProcessWire\__("If you disable this, you will need to load these files manually:\n```&lt;link rel='stylesheet' type='text/css' href='/site/modules/CookieManagementBanner/assets/css/CookieManagementBanner.css' /&gt;\n&lt;script defer src='/site/modules/CookieManagementBanner/assets/js/CookieManagementBanner.js'&gt;&lt;/script&gt;```\nNOTE: you must load the JS file with the defer attribute."),
                'value' => 1
            ),
            array(
                'type' => 'radios',
                'name' => 'js_version',
                'label' => \ProcessWire\__('JS Version'),
                'description' => \ProcessWire\__('Which version of the JS file to use.'),
                'notes' => \ProcessWire\__("The vanilla JS version is thanks to RolandToth(@tpr), but is currently in need of further testing, so use with care for the time being. This setting will be removed and this version will become the default sometime soon."),
                'options' => array(
                    'jquery' => \ProcessWire\__('jQuery'),
                    'vanilla' => \ProcessWire\__('Vanilla JS')
                ),
                'value' => 'jquery'
            ),
            array(
                'type' => 'checkbox',
                'name' => 'allow_manage',
                'label' => \ProcessWire\__('Allow users to manage'),
                'description' => \ProcessWire\__('This gives users the option to manage their acceptance of tracking cookies.'),
                'columnWidth' => 50,
                'value' => 1
            ),
            array(
                'type' => 'checkbox',
                'name' => 'auto_accept',
                'label' => \ProcessWire\__('Auto-accept mode'),
                'description' => \ProcessWire\__('Enabling auto-accept mode will send the acceptance beacon if the document is interacted with in any way.'),
                'columnWidth' => 50,
                'value' => 0
            ),
            array(
                'type' => 'checkbox',
                'name' => 'eu_visitors_only',
                'label' => \ProcessWire\__('Only display for EU visitors'),
                'description' => \ProcessWire\__('Only visitors from the EU (based on IP address) will see the banner.'),
                'notes' => \ProcessWire\__('This will send location data to the IP to Country service selected, along with https://restcountries.eu to determine if the user is in a country in the EU.'),
                'columnWidth' => 50,
                'value' => null
            ),
            array(
                'type' => 'AsmSelect',
                'name' => 'ip_country_service',
                'label' => \ProcessWire\__('IP to country service'),
                'description' => \ProcessWire\__('Service to determine user\'s country. Only relevant if "Only display for EU visitors" is checked. Services will be pinged in the selected order.'),
                'notes' => \ProcessWire\__('A big thanks to these free services, especially [https://ip.nf/](https://ip.nf/) who kindly answered many questions about their service.'),
                'options' => array(
                    'ip.nf' => 'https://ip.nf/',
                    'ip.sb' => 'https://ip.sb/api/'
                ),
                'columnWidth' => 50,
                'showIf' => 'eu_visitors_only=1',
                'required' => true,
                'requiredIf' => 'eu_visitors_only=1',
                'value' => array('ip.nf', 'geoip.nekudo.com', 'ip.sb')
            )
        )
    ),
    // Testing
    array(
        'type' => 'fieldset',
        'name' => 'testing',
        'label' => \ProcessWire\__("Testing"),
        'children' => array(
            array(
                'type' => 'markup',
                'name' => 'clear_local_storage',
                'label' => \ProcessWire\__('Clear Local Storage'),
                'description' => \ProcessWire\__('This will clear the LocalStorage data to emulate a new visitor to the site.'),
                'notes' => \ProcessWire\__('Clicking this will reload the page to trigger the banner to load.'),
                'columnWidth' => 50,
                'value' => '<button onclick="pwcmbClearLS()" class="ui-button ui-widget ui-corner-all required ui-state-default" name="clear_local_storage" value="Clear" type="button"><span class="ui-button-text">Clear</span></button>'
            ),
            array(
                'type' => 'text',
                'name' => 'ip_test',
                'label' => \ProcessWire\__('IP Address Test'),
                'description' => \ProcessWire\__('You can use this to test the result of an IP address. This is only relevant on this module settings page - it won\'t affect what is reported for users on the site.'),
                'notes' => \ProcessWire\__("You can use 85.214.132.117 or 2003:da:cbd6:8872:29f3:69e5:f8fc:9c04 as valid tests for Germany (which is in the EU). If this is blank the system will use your actual IP address.\n\n** From EU test: ** `".(isset($this->wire('session')->userFromEu['value']) ? $this->wire('session')->userFromEu['value'] : 'Not Tested') ."`"),
                'columnWidth' => 50,
                'showIf' => 'eu_visitors_only=1'
            )
        )
    ),
    // Notice Content
    array(
        'type' => 'fieldset',
        'name' => 'noticeContent',
        'label' => \ProcessWire\__("Notice Content"),
        'children' => array(
            array(
                'type' => 'text',
                'name' => 'title',
                'label' => \ProcessWire\__('Title'),
                'notes' => \ProcessWire\__('Leave empty for no title.'),
                'useLanguages' => true
            ),
            array(
                'type' => 'CKEditor',
                'name' => 'text',
                'label' => \ProcessWire\__('Notice content'),
                'useLanguages' => true,
                'required' => true,
                'value' => \ProcessWire\__('Cookies are used to make this website work and to enhance your experience. To learn more about the types of cookies this website uses, see our Cookie Policy. You can provide consent by clicking the "I Consent" button or by canceling this cookie notice.')
            ),
            array(
                'type' => 'text',
                'name' => 'accept_btn_text',
                'label' => \ProcessWire\__('Accept button text'),
                'useLanguages' => true,
                'columnWidth' => 33,
                'required' => true,
                'value' => 'I Consent'
            ),
            array(
                'type' => 'text',
                'name' => 'manage_btn_text',
                'label' => \ProcessWire\__('Manage cookies'),
                'useLanguages' => true,
                'columnWidth' => 34,
                'required' => true,
                'value' => 'Manage Cookies'

            ),
            array(
                'type' => 'text',
                'name' => 'manage_title',
                'label' => \ProcessWire\__('Manage title'),
                'notes' => \ProcessWire\__('Leave empty for no title.'),
                'columnWidth' => 33,
                'useLanguages' => true,
            ),
            array(
                'type' => 'CKEditor',
                'name' => 'manage_text',
                'label' => \ProcessWire\__('Manage intro text'),
                'useLanguages' => true,
                'required' => true,
                'value' => \ProcessWire\__('Cookies are used to make this website work and to enhance your experience. To learn more about the types of cookies this website uses, see our Cookie Policy.  We need your consent to use marketing cookies. Marketing cookies are used to track visitors across websites. The intention is to display ads (via third party services) that are relevant and engaging for individual users. Please select the checkbox below to indicate your consent.')
            ),
            array(
                'type' => 'text',
                'name' => 'consent_label',
                'label' => \ProcessWire\__('Marketing cookie consent label'),
                'columnWidth' => 25,
                'useLanguages' => true,
                'required' => true,
                'value' => \ProcessWire\__('I consent')
            ),
            array(
                'type' => 'text',
                'name' => 'no_consent_label',
                'label' => \ProcessWire\__('Marketing cookie no consent label'),
                'columnWidth' => 25,
                'useLanguages' => true,
                'required' => true,
                'value' => \ProcessWire\__('I do not consent')
            ),
            array(
                'type' => 'text',
                'name' => 'preferences_btn_text',
                'label' => \ProcessWire\__('Save preferences button text'),
                'columnWidth' => 25,
                'useLanguages' => true,
                'required' => true,
                'value' => \ProcessWire\__('Save Preferences')
            ),
            array(
                'type' => 'text',
                'name' => 'preferences_saved_message',
                'label' => \ProcessWire\__('Preferences saved message'),
                'columnWidth' => 25,
                'useLanguages' => true,
                'required' => true,
                'value' => \ProcessWire\__('Your cookie preferences have been saved')
            ),
        )
    ),
    // Layout
    array(
        'type' => 'fieldset',
        'name' => 'layout',
        'label' => \ProcessWire\__("Layout"),
        'children' => array(
            array(
                'type' => 'select',
                'name' => 'style',
                'label' => \ProcessWire\__("Position"),
                'options' => array(
                    'bottom_overlay' => \ProcessWire\__('Fixed Overlay at Bottom of Page')
                ),
                'columnWidth' => 33,
                'required' => true,
                'value' => 'bottom_overlay'
            )
        )
    )
);


