/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: caches
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `caches` (
  `name` varchar(250) NOT NULL,
  `data` mediumtext NOT NULL,
  `expires` datetime NOT NULL,
  PRIMARY KEY (`name`),
  KEY `expires` (`expires`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: field_admin_theme
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_admin_theme` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: field_email
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_email` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`),
  FULLTEXT KEY `data` (`data`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: field_pass
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_pass` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` char(40) NOT NULL,
  `salt` char(32) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE = MyISAM DEFAULT CHARSET = ascii;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: field_permissions
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_permissions` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`, `sort`),
  KEY `data` (`data`, `pages_id`, `sort`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: field_prductname
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_prductname` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: field_process
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_process` (
  `pages_id` int(11) NOT NULL DEFAULT 0,
  `data` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: field_roles
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_roles` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`, `sort`),
  KEY `data` (`data`, `pages_id`, `sort`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: field_sliderbilder
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_sliderbilder` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` varchar(250) NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `description` text NOT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `filedata` mediumtext DEFAULT NULL,
  `filesize` int(11) DEFAULT NULL,
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 0,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ratio` decimal(4, 2) DEFAULT NULL,
  PRIMARY KEY (`pages_id`, `sort`),
  KEY `data` (`data`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `filesize` (`filesize`),
  KEY `width` (`width`),
  KEY `height` (`height`),
  KEY `ratio` (`ratio`),
  FULLTEXT KEY `description` (`description`),
  FULLTEXT KEY `filedata` (`filedata`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: field_title
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(255)),
  FULLTEXT KEY `data` (`data`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: fieldgroups
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `fieldgroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE = MyISAM AUTO_INCREMENT = 98 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: fieldgroups_fields
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `fieldgroups_fields` (
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `fields_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sort` int(11) unsigned NOT NULL DEFAULT 0,
  `data` text DEFAULT NULL,
  PRIMARY KEY (`fieldgroups_id`, `fields_id`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: fields
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `fields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(128) CHARACTER SET ascii NOT NULL,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `label` varchar(250) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `type` (`type`)
) ENGINE = MyISAM AUTO_INCREMENT = 100 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: modules
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(128) CHARACTER SET ascii NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`)
) ENGINE = MyISAM AUTO_INCREMENT = 165 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: pages
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT 0,
  `templates_id` int(11) unsigned NOT NULL DEFAULT 0,
  `name` varchar(128) CHARACTER SET ascii NOT NULL,
  `status` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_users_id` int(10) unsigned NOT NULL DEFAULT 2,
  `created` timestamp NOT NULL DEFAULT '2015-12-18 06:09:00',
  `created_users_id` int(10) unsigned NOT NULL DEFAULT 2,
  `published` datetime DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_parent_id` (`name`, `parent_id`),
  KEY `parent_id` (`parent_id`),
  KEY `templates_id` (`templates_id`),
  KEY `modified` (`modified`),
  KEY `created` (`created`),
  KEY `status` (`status`),
  KEY `published` (`published`)
) ENGINE = MyISAM AUTO_INCREMENT = 1026 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: pages_access
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `pages_access` (
  `pages_id` int(11) NOT NULL,
  `templates_id` int(11) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`pages_id`),
  KEY `templates_id` (`templates_id`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: pages_parents
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `pages_parents` (
  `pages_id` int(10) unsigned NOT NULL,
  `parents_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pages_id`, `parents_id`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: pages_sortfields
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `pages_sortfields` (
  `pages_id` int(10) unsigned NOT NULL DEFAULT 0,
  `sortfield` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`pages_id`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: session_login_throttle
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `session_login_throttle` (
  `name` varchar(128) NOT NULL,
  `attempts` int(10) unsigned NOT NULL DEFAULT 0,
  `last_attempt` int(10) unsigned NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: templates
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `templates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) CHARACTER SET ascii NOT NULL,
  `fieldgroups_id` int(10) unsigned NOT NULL DEFAULT 0,
  `flags` int(11) NOT NULL DEFAULT 0,
  `cache_time` mediumint(9) NOT NULL DEFAULT 0,
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `fieldgroups_id` (`fieldgroups_id`)
) ENGINE = MyISAM AUTO_INCREMENT = 44 DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: caches
# ------------------------------------------------------------

INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'Modules.wire/modules/',
    'AdminTheme/AdminThemeDefault/AdminThemeDefault.module\nAdminTheme/AdminThemeReno/AdminThemeReno.module\nAdminTheme/AdminThemeUikit/AdminThemeUikit.module\nFieldtype/FieldtypeCache.module\nFieldtype/FieldtypeCheckbox.module\nFieldtype/FieldtypeComments/CommentFilterAkismet.module\nFieldtype/FieldtypeComments/FieldtypeComments.module\nFieldtype/FieldtypeComments/InputfieldCommentsAdmin.module\nFieldtype/FieldtypeDatetime.module\nFieldtype/FieldtypeDecimal.module\nFieldtype/FieldtypeEmail.module\nFieldtype/FieldtypeFieldsetClose.module\nFieldtype/FieldtypeFieldsetOpen.module\nFieldtype/FieldtypeFieldsetTabOpen.module\nFieldtype/FieldtypeFile/FieldtypeFile.module\nFieldtype/FieldtypeFloat.module\nFieldtype/FieldtypeImage/FieldtypeImage.module\nFieldtype/FieldtypeInteger.module\nFieldtype/FieldtypeModule.module\nFieldtype/FieldtypeOptions/FieldtypeOptions.module\nFieldtype/FieldtypePage.module\nFieldtype/FieldtypePageTable.module\nFieldtype/FieldtypePageTitle.module\nFieldtype/FieldtypePassword.module\nFieldtype/FieldtypeRepeater/FieldtypeFieldsetPage.module\nFieldtype/FieldtypeRepeater/FieldtypeRepeater.module\nFieldtype/FieldtypeRepeater/InputfieldRepeater.module\nFieldtype/FieldtypeSelector.module\nFieldtype/FieldtypeText.module\nFieldtype/FieldtypeTextarea.module\nFieldtype/FieldtypeToggle.module\nFieldtype/FieldtypeURL.module\nFileCompilerTags.module\nImage/ImageSizerEngineAnimatedGif/ImageSizerEngineAnimatedGif.module\nImage/ImageSizerEngineIMagick/ImageSizerEngineIMagick.module\nInputfield/InputfieldAsmSelect/InputfieldAsmSelect.module\nInputfield/InputfieldButton.module\nInputfield/InputfieldCheckbox/InputfieldCheckbox.module\nInputfield/InputfieldCheckboxes/InputfieldCheckboxes.module\nInputfield/InputfieldCKEditor/InputfieldCKEditor.module\nInputfield/InputfieldDatetime/InputfieldDatetime.module\nInputfield/InputfieldEmail.module\nInputfield/InputfieldFieldset.module\nInputfield/InputfieldFile/InputfieldFile.module\nInputfield/InputfieldFloat.module\nInputfield/InputfieldForm.module\nInputfield/InputfieldHidden.module\nInputfield/InputfieldIcon/InputfieldIcon.module\nInputfield/InputfieldImage/InputfieldImage.module\nInputfield/InputfieldInteger.module\nInputfield/InputfieldMarkup.module\nInputfield/InputfieldName.module\nInputfield/InputfieldPage/InputfieldPage.module\nInputfield/InputfieldPageAutocomplete/InputfieldPageAutocomplete.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelect.module\nInputfield/InputfieldPageListSelect/InputfieldPageListSelectMultiple.module\nInputfield/InputfieldPageName/InputfieldPageName.module\nInputfield/InputfieldPageTable/InputfieldPageTable.module\nInputfield/InputfieldPageTitle/InputfieldPageTitle.module\nInputfield/InputfieldPassword/InputfieldPassword.module\nInputfield/InputfieldRadios/InputfieldRadios.module\nInputfield/InputfieldSelect.module\nInputfield/InputfieldSelectMultiple.module\nInputfield/InputfieldSelector/InputfieldSelector.module\nInputfield/InputfieldSubmit/InputfieldSubmit.module\nInputfield/InputfieldText/InputfieldText.module\nInputfield/InputfieldTextarea.module\nInputfield/InputfieldTextTags/InputfieldTextTags.module\nInputfield/InputfieldToggle/InputfieldToggle.module\nInputfield/InputfieldURL.module\nJquery/JqueryCore/JqueryCore.module\nJquery/JqueryMagnific/JqueryMagnific.module\nJquery/JqueryTableSorter/JqueryTableSorter.module\nJquery/JqueryUI/JqueryUI.module\nJquery/JqueryWireTabs/JqueryWireTabs.module\nLanguageSupport/FieldtypePageTitleLanguage.module\nLanguageSupport/FieldtypeTextareaLanguage.module\nLanguageSupport/FieldtypeTextLanguage.module\nLanguageSupport/LanguageSupport.module\nLanguageSupport/LanguageSupportFields.module\nLanguageSupport/LanguageSupportPageNames.module\nLanguageSupport/LanguageTabs.module\nLanguageSupport/ProcessLanguage.module\nLanguageSupport/ProcessLanguageTranslator.module\nLazyCron.module\nMarkup/MarkupAdminDataTable/MarkupAdminDataTable.module\nMarkup/MarkupCache.module\nMarkup/MarkupHTMLPurifier/MarkupHTMLPurifier.module\nMarkup/MarkupPageArray.module\nMarkup/MarkupPageFields.module\nMarkup/MarkupPagerNav/MarkupPagerNav.module\nMarkup/MarkupRSS.module\nPage/PageFrontEdit/PageFrontEdit.module\nPagePathHistory.module\nPagePaths.module\nPagePermissions.module\nPageRender.module\nProcess/ProcessCommentsManager/ProcessCommentsManager.module\nProcess/ProcessField/ProcessField.module\nProcess/ProcessForgotPassword/ProcessForgotPassword.module\nProcess/ProcessHome.module\nProcess/ProcessList.module\nProcess/ProcessLogger/ProcessLogger.module\nProcess/ProcessLogin/ProcessLogin.module\nProcess/ProcessModule/ProcessModule.module\nProcess/ProcessPageAdd/ProcessPageAdd.module\nProcess/ProcessPageClone.module\nProcess/ProcessPageEdit/ProcessPageEdit.module\nProcess/ProcessPageEditImageSelect/ProcessPageEditImageSelect.module\nProcess/ProcessPageEditLink/ProcessPageEditLink.module\nProcess/ProcessPageList/ProcessPageList.module\nProcess/ProcessPageLister/ProcessPageLister.module\nProcess/ProcessPageSearch/ProcessPageSearch.module\nProcess/ProcessPagesExportImport/ProcessPagesExportImport.module\nProcess/ProcessPageSort.module\nProcess/ProcessPageTrash.module\nProcess/ProcessPageType/ProcessPageType.module\nProcess/ProcessPageView.module\nProcess/ProcessPermission/ProcessPermission.module\nProcess/ProcessProfile/ProcessProfile.module\nProcess/ProcessRecentPages/ProcessRecentPages.module\nProcess/ProcessRole/ProcessRole.module\nProcess/ProcessTemplate/ProcessTemplate.module\nProcess/ProcessUser/ProcessUser.module\nSession/SessionHandlerDB/ProcessSessionDB.module\nSession/SessionHandlerDB/SessionHandlerDB.module\nSession/SessionLoginThrottle/SessionLoginThrottle.module\nSystem/SystemNotifications/FieldtypeNotifications.module\nSystem/SystemNotifications/SystemNotifications.module\nSystem/SystemUpdater/SystemUpdater.module\nTextformatter/TextformatterEntities.module\nTextformatter/TextformatterMarkdownExtra/TextformatterMarkdownExtra.module\nTextformatter/TextformatterNewlineBR.module\nTextformatter/TextformatterNewlineUL.module\nTextformatter/TextformatterPstripper.module\nTextformatter/TextformatterSmartypants/TextformatterSmartypants.module\nTextformatter/TextformatterStripTags.module',
    '2010-04-08 03:10:01'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'ModulesVerbose.info',
    '{\"148\":{\"summary\":\"Minimal admin theme that supports all ProcessWire features.\",\"core\":true,\"versionStr\":\"0.1.4\"},\"160\":{\"summary\":\"Uikit v3 admin theme\",\"core\":true,\"versionStr\":\"0.3.3\"},\"97\":{\"summary\":\"This Fieldtype stores an ON\\/OFF toggle via a single checkbox. The ON value is 1 and OFF value is 0.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"28\":{\"summary\":\"Field that stores a date and optionally time\",\"core\":true,\"versionStr\":\"1.0.5\"},\"29\":{\"summary\":\"Field that stores an e-mail address\",\"core\":true,\"versionStr\":\"1.0.1\"},\"106\":{\"summary\":\"Close a fieldset opened by FieldsetOpen. \",\"core\":true,\"versionStr\":\"1.0.0\"},\"105\":{\"summary\":\"Open a fieldset to group fields. Should be followed by a Fieldset (Close) after one or more fields.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"107\":{\"summary\":\"Open a fieldset to group fields. Same as Fieldset (Open) except that it displays in a tab instead.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"6\":{\"summary\":\"Field that stores one or more files\",\"core\":true,\"versionStr\":\"1.0.7\"},\"89\":{\"summary\":\"Field that stores a floating point number\",\"core\":true,\"versionStr\":\"1.0.6\"},\"57\":{\"summary\":\"Field that stores one or more GIF, JPG, or PNG images\",\"core\":true,\"versionStr\":\"1.0.2\"},\"84\":{\"summary\":\"Field that stores an integer\",\"core\":true,\"versionStr\":\"1.0.2\"},\"27\":{\"summary\":\"Field that stores a reference to another module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"4\":{\"summary\":\"Field that stores one or more references to ProcessWire pages\",\"core\":true,\"versionStr\":\"1.0.6\"},\"111\":{\"summary\":\"Field that stores a page title\",\"core\":true,\"versionStr\":\"1.0.0\"},\"133\":{\"summary\":\"Field that stores a hashed and salted password\",\"core\":true,\"versionStr\":\"1.0.1\"},\"3\":{\"summary\":\"Field that stores a single line of text\",\"core\":true,\"versionStr\":\"1.0.2\"},\"1\":{\"summary\":\"Field that stores multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.7\"},\"135\":{\"summary\":\"Field that stores a URL\",\"core\":true,\"versionStr\":\"1.0.1\"},\"25\":{\"summary\":\"Multiple selection, progressive enhancement to select multiple\",\"core\":true,\"versionStr\":\"2.0.2\"},\"131\":{\"summary\":\"Form button element that you can optionally pass an href attribute to.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"37\":{\"summary\":\"Single checkbox toggle\",\"core\":true,\"versionStr\":\"1.0.6\"},\"38\":{\"summary\":\"Multiple checkbox toggles\",\"core\":true,\"versionStr\":\"1.0.8\"},\"155\":{\"summary\":\"CKEditor textarea rich text editor.\",\"core\":true,\"versionStr\":\"1.6.8\"},\"94\":{\"summary\":\"Inputfield that accepts date and optionally time\",\"core\":true,\"versionStr\":\"1.0.7\"},\"80\":{\"summary\":\"E-Mail address in valid format\",\"core\":true,\"versionStr\":\"1.0.1\"},\"78\":{\"summary\":\"Groups one or more fields together in a container\",\"core\":true,\"versionStr\":\"1.0.1\"},\"55\":{\"summary\":\"One or more file uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.6\"},\"90\":{\"summary\":\"Floating point number with precision\",\"core\":true,\"versionStr\":\"1.0.4\"},\"30\":{\"summary\":\"Contains one or more fields in a form\",\"core\":true,\"versionStr\":\"1.0.7\"},\"40\":{\"summary\":\"Hidden value in a form\",\"core\":true,\"versionStr\":\"1.0.1\"},\"162\":{\"summary\":\"Select an icon\",\"core\":true,\"versionStr\":\"0.0.3\"},\"56\":{\"summary\":\"One or more image uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.4\"},\"85\":{\"summary\":\"Integer (positive or negative)\",\"core\":true,\"versionStr\":\"1.0.5\"},\"79\":{\"summary\":\"Contains any other markup and optionally child Inputfields\",\"core\":true,\"versionStr\":\"1.0.2\"},\"41\":{\"summary\":\"Text input validated as a ProcessWire name field\",\"core\":true,\"versionStr\":\"1.0.0\"},\"60\":{\"summary\":\"Select one or more pages\",\"core\":true,\"versionStr\":\"1.0.7\"},\"15\":{\"summary\":\"Selection of a single page from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"137\":{\"summary\":\"Selection of multiple pages from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.2\"},\"86\":{\"summary\":\"Text input validated as a ProcessWire Page name field\",\"core\":true,\"versionStr\":\"1.0.6\"},\"112\":{\"summary\":\"Handles input of Page Title and auto-generation of Page Name (when name is blank)\",\"core\":true,\"versionStr\":\"1.0.2\"},\"122\":{\"summary\":\"Password input with confirmation field that doesn&#039;t ever echo the input back.\",\"core\":true,\"versionStr\":\"1.0.2\"},\"39\":{\"summary\":\"Radio buttons for selection of a single item\",\"core\":true,\"versionStr\":\"1.0.6\"},\"36\":{\"summary\":\"Selection of a single value from a select pulldown\",\"core\":true,\"versionStr\":\"1.0.2\"},\"43\":{\"summary\":\"Select multiple items from a list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"149\":{\"summary\":\"Build a page finding selector visually.\",\"author\":\"Avoine + ProcessWire\",\"core\":true,\"versionStr\":\"0.2.8\"},\"32\":{\"summary\":\"Form submit button\",\"core\":true,\"versionStr\":\"1.0.3\"},\"34\":{\"summary\":\"Single line of text\",\"core\":true,\"versionStr\":\"1.0.6\"},\"35\":{\"summary\":\"Multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.3\"},\"163\":{\"summary\":\"Enables input of user entered tags or selection of predefined tags.\",\"core\":true,\"versionStr\":\"0.0.5\"},\"108\":{\"summary\":\"URL in valid format\",\"core\":true,\"versionStr\":\"1.0.2\"},\"116\":{\"summary\":\"jQuery Core as required by ProcessWire Admin and plugins\",\"href\":\"http:\\/\\/jquery.com\",\"core\":true,\"versionStr\":\"1.8.3\"},\"151\":{\"summary\":\"Provides lightbox capability for image galleries. Replacement for FancyBox. Uses Magnific Popup by @dimsemenov.\",\"href\":\"http:\\/\\/dimsemenov.com\\/plugins\\/magnific-popup\\/\",\"core\":true,\"versionStr\":\"0.0.1\"},\"103\":{\"summary\":\"Provides a jQuery plugin for sorting tables.\",\"href\":\"http:\\/\\/mottie.github.io\\/tablesorter\\/\",\"core\":true,\"versionStr\":\"2.2.1\"},\"117\":{\"summary\":\"jQuery UI as required by ProcessWire and plugins\",\"href\":\"http:\\/\\/ui.jquery.com\",\"core\":true,\"versionStr\":\"1.9.6\"},\"45\":{\"summary\":\"Provides a jQuery plugin for generating tabs in ProcessWire.\",\"core\":true,\"versionStr\":\"1.1.0\"},\"67\":{\"summary\":\"Generates markup for data tables used by ProcessWire admin\",\"core\":true,\"versionStr\":\"1.0.7\"},\"156\":{\"summary\":\"Front-end to the HTML Purifier library.\",\"core\":true,\"versionStr\":\"4.9.6\"},\"113\":{\"summary\":\"Adds renderPager() method to all PaginatedArray types, for easy pagination output. Plus a render() method to PageArray instances.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"98\":{\"summary\":\"Generates markup for pagination navigation\",\"core\":true,\"versionStr\":\"1.0.5\"},\"114\":{\"summary\":\"Adds various permission methods to Page objects that are used by Process modules.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"115\":{\"summary\":\"Adds a render method to Page and caches page output.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"48\":{\"summary\":\"Edit individual fields that hold page data\",\"core\":true,\"versionStr\":\"1.1.3\",\"searchable\":\"fields\"},\"87\":{\"summary\":\"Acts as a placeholder Process for the admin root. Ensures proper flow control after login.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"76\":{\"summary\":\"Lists the Process assigned to each child page of the current\",\"core\":true,\"versionStr\":\"1.0.1\"},\"161\":{\"summary\":\"View and manage system logs.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"logs-view\":\"Can view system logs\",\"logs-edit\":\"Can manage system logs\"},\"page\":{\"name\":\"logs\",\"parent\":\"setup\",\"title\":\"Logs\"}},\"10\":{\"summary\":\"Login to ProcessWire\",\"core\":true,\"versionStr\":\"1.0.8\"},\"50\":{\"summary\":\"List, edit or install\\/uninstall modules\",\"core\":true,\"versionStr\":\"1.1.9\"},\"17\":{\"summary\":\"Add a new page\",\"core\":true,\"versionStr\":\"1.0.8\"},\"7\":{\"summary\":\"Edit a Page\",\"core\":true,\"versionStr\":\"1.1.0\"},\"129\":{\"summary\":\"Provides image manipulation functions for image fields and rich text editors.\",\"core\":true,\"versionStr\":\"1.2.0\"},\"121\":{\"summary\":\"Provides a link capability as used by some Fieldtype modules (like rich text editors).\",\"core\":true,\"versionStr\":\"1.0.9\"},\"12\":{\"summary\":\"List pages in a hierarchical tree structure\",\"core\":true,\"versionStr\":\"1.2.3\"},\"150\":{\"summary\":\"Admin tool for finding and listing pages by any property.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.2.6\",\"permissions\":{\"page-lister\":\"Use Page Lister\"}},\"104\":{\"summary\":\"Provides a page search engine for admin use.\",\"core\":true,\"versionStr\":\"1.0.6\"},\"14\":{\"summary\":\"Handles page sorting and moving for PageList\",\"core\":true,\"versionStr\":\"1.0.0\"},\"109\":{\"summary\":\"Handles emptying of Page trash\",\"core\":true,\"versionStr\":\"1.0.3\"},\"134\":{\"summary\":\"List, Edit and Add pages of a specific type\",\"core\":true,\"versionStr\":\"1.0.1\"},\"83\":{\"summary\":\"All page views are routed through this Process\",\"core\":true,\"versionStr\":\"1.0.4\"},\"136\":{\"summary\":\"Manage system permissions\",\"core\":true,\"versionStr\":\"1.0.1\"},\"138\":{\"summary\":\"Enables user to change their password, email address and other settings that you define.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"159\":{\"summary\":\"Shows a list of recently edited pages in your admin.\",\"author\":\"Ryan Cramer\",\"href\":\"http:\\/\\/modules.processwire.com\\/\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"page-edit-recent\":\"Can see recently edited pages\"},\"page\":{\"name\":\"recent-pages\",\"parent\":\"page\",\"title\":\"Recent\"}},\"68\":{\"summary\":\"Manage user roles and what permissions are attached\",\"core\":true,\"versionStr\":\"1.0.4\"},\"47\":{\"summary\":\"List and edit the templates that control page output\",\"core\":true,\"versionStr\":\"1.1.4\",\"searchable\":\"templates\"},\"66\":{\"summary\":\"Manage system users\",\"core\":true,\"versionStr\":\"1.0.7\",\"searchable\":\"users\"},\"125\":{\"summary\":\"Throttles login attempts to help prevent dictionary attacks.\",\"core\":true,\"versionStr\":\"1.0.3\"},\"139\":{\"summary\":\"Manages system versions and upgrades.\",\"core\":true,\"versionStr\":\"0.1.9\"},\"61\":{\"summary\":\"Entity encode ampersands, quotes (single and double) and greater-than\\/less-than signs using htmlspecialchars(str, ENT_QUOTES). It is recommended that you use this on all text\\/textarea fields except those using a rich text editor or a markup language like Markdown.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"164\":{\"summary\":\"A toggle providing similar input capability to a checkbox but much more configurable.\",\"core\":true,\"versionStr\":\"0.0.1\"}}',
    '2010-04-08 03:10:01'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'ModulesUninstalled.info',
    '{\"AdminThemeReno\":{\"name\":\"AdminThemeReno\",\"title\":\"Reno\",\"version\":17,\"versionStr\":\"0.1.7\",\"author\":\"Tom Reno (Renobird)\",\"summary\":\"Admin theme for ProcessWire 2.5+ by Tom Reno (Renobird)\",\"requiresVersions\":{\"AdminThemeDefault\":[\">=\",0]},\"autoload\":\"template=admin\",\"created\":1630086528,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeCache\":{\"name\":\"FieldtypeCache\",\"title\":\"Cache\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Caches the values of other fields for fewer runtime queries. Can also be used to combine multiple text fields and have them all be searchable under the cached field name.\",\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"CommentFilterAkismet\":{\"name\":\"CommentFilterAkismet\",\"title\":\"Comment Filter: Akismet\",\"version\":200,\"versionStr\":\"2.0.0\",\"summary\":\"Uses the Akismet service to identify comment spam. Module plugin for the Comments Fieldtype.\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1630086528,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeComments\":{\"name\":\"FieldtypeComments\",\"title\":\"Comments\",\"version\":109,\"versionStr\":\"1.0.9\",\"summary\":\"Field that stores user posted comments for a single Page\",\"installs\":[\"InputfieldCommentsAdmin\"],\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldCommentsAdmin\":{\"name\":\"InputfieldCommentsAdmin\",\"title\":\"Comments Admin\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides an administrative interface for working with comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeDecimal\":{\"name\":\"FieldtypeDecimal\",\"title\":\"Decimal\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Field that stores a decimal number\",\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeOptions\":{\"name\":\"FieldtypeOptions\",\"title\":\"Select Options\",\"version\":2,\"versionStr\":\"0.0.2\",\"summary\":\"Field that stores single and multi select options.\",\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypePageTable\":{\"name\":\"FieldtypePageTable\",\"title\":\"ProFields: Page Table\",\"version\":8,\"versionStr\":\"0.0.8\",\"summary\":\"A fieldtype containing a group of editable pages.\",\"installs\":[\"InputfieldPageTable\"],\"autoload\":true,\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeFieldsetPage\":{\"name\":\"FieldtypeFieldsetPage\",\"title\":\"Fieldset (Page)\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Fieldset with fields isolated to separate namespace (page), enabling re-use of fields.\",\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"autoload\":true,\"created\":1630086528,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeRepeater\":{\"name\":\"FieldtypeRepeater\",\"title\":\"Repeater\",\"version\":107,\"versionStr\":\"1.0.7\",\"summary\":\"Maintains a collection of fields that are repeated for any number of times.\",\"installs\":[\"InputfieldRepeater\"],\"autoload\":true,\"created\":1630086528,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldRepeater\":{\"name\":\"InputfieldRepeater\",\"title\":\"Repeater\",\"version\":107,\"versionStr\":\"1.0.7\",\"summary\":\"Repeats fields from another template. Provides the input for FieldtypeRepeater.\",\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeSelector\":{\"name\":\"FieldtypeSelector\",\"title\":\"Selector\",\"version\":13,\"versionStr\":\"0.1.3\",\"author\":\"Avoine + ProcessWire\",\"summary\":\"Build a page finding selector visually.\",\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeToggle\":{\"name\":\"FieldtypeToggle\",\"title\":\"Toggle (Yes\\/No)\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Configurable yes\\/no, on\\/off toggle alternative to a checkbox, plus optional \\u201cother\\u201d option.\",\"requiresVersions\":{\"InputfieldToggle\":[\">=\",0]},\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FileCompilerTags\":{\"name\":\"FileCompilerTags\",\"title\":\"Tags File Compiler\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables {var} or {var.property} variables in markup sections of a file. Can be used with any API variable.\",\"created\":1630086528,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ImageSizerEngineAnimatedGif\":{\"name\":\"ImageSizerEngineAnimatedGif\",\"title\":\"Animated GIF Image Sizer\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations for animated GIFs.\",\"created\":1630086528,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ImageSizerEngineIMagick\":{\"name\":\"ImageSizerEngineIMagick\",\"title\":\"IMagick Image Sizer\",\"version\":3,\"versionStr\":\"0.0.3\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations to use PHP\'s ImageMagick library when possible.\",\"created\":1630086528,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldPageAutocomplete\":{\"name\":\"InputfieldPageAutocomplete\",\"title\":\"Page Auto Complete\",\"version\":112,\"versionStr\":\"1.1.2\",\"summary\":\"Multiple Page selection using auto completion and sorting capability. Intended for use as an input field for Page reference fields.\",\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldPageTable\":{\"name\":\"InputfieldPageTable\",\"title\":\"ProFields: Page Table\",\"version\":14,\"versionStr\":\"0.1.4\",\"summary\":\"Inputfield to accompany FieldtypePageTable\",\"requiresVersions\":{\"FieldtypePageTable\":[\">=\",0]},\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypePageTitleLanguage\":{\"name\":\"FieldtypePageTitleLanguage\",\"title\":\"Page Title (Multi-Language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Field that stores a page title in multiple languages. Use this only if you want title inputs created for ALL languages on ALL pages. Otherwise create separate languaged-named title fields, i.e. title_fr, title_es, title_fi, etc. \",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0],\"FieldtypeTextLanguage\":[\">=\",0]},\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeTextareaLanguage\":{\"name\":\"FieldtypeTextareaLanguage\",\"title\":\"Textarea (Multi-language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Field that stores a multiple lines of text in multiple languages\",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeTextLanguage\":{\"name\":\"FieldtypeTextLanguage\",\"title\":\"Text (Multi-language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Field that stores a single line of text in multiple languages\",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageSupport\":{\"name\":\"LanguageSupport\",\"title\":\"Languages Support\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"ProcessWire multi-language support.\",\"installs\":[\"ProcessLanguage\",\"ProcessLanguageTranslator\"],\"autoload\":true,\"singular\":true,\"created\":1630086528,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"addFlag\":32},\"LanguageSupportFields\":{\"name\":\"LanguageSupportFields\",\"title\":\"Languages Support - Fields\",\"version\":101,\"versionStr\":\"1.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Required to use multi-language fields.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"installs\":[\"FieldtypePageTitleLanguage\",\"FieldtypeTextareaLanguage\",\"FieldtypeTextLanguage\"],\"autoload\":true,\"singular\":true,\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageSupportPageNames\":{\"name\":\"LanguageSupportPageNames\",\"title\":\"Languages Support - Page Names\",\"version\":10,\"versionStr\":\"0.1.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Required to use multi-language page names.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0],\"LanguageSupportFields\":[\">=\",0]},\"autoload\":true,\"singular\":true,\"created\":1630086528,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageTabs\":{\"name\":\"LanguageTabs\",\"title\":\"Languages Support - Tabs\",\"version\":115,\"versionStr\":\"1.1.5\",\"author\":\"adamspruijt, ryan\",\"summary\":\"Organizes multi-language fields into tabs for a cleaner easier to use interface.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"autoload\":\"template=admin\",\"singular\":true,\"created\":1630086528,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessLanguage\":{\"name\":\"ProcessLanguage\",\"title\":\"Languages\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage system languages\",\"icon\":\"language\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"permissions\":{\"lang-edit\":\"Administer languages and static translation files\"},\"created\":1630086528,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"useNavJSON\":true},\"ProcessLanguageTranslator\":{\"name\":\"ProcessLanguageTranslator\",\"title\":\"Language Translator\",\"version\":101,\"versionStr\":\"1.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Provides language translation capabilities for ProcessWire core and modules.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LazyCron\":{\"name\":\"LazyCron\",\"title\":\"Lazy Cron\",\"version\":103,\"versionStr\":\"1.0.3\",\"summary\":\"Provides hooks that are automatically executed at various intervals. It is called \'lazy\' because it\'s triggered by a pageview, so the interval is guaranteed to be at least the time requested, rather than exactly the time requested. This is fine for most cases, but you can make it not lazy by connecting this to a real CRON job. See the module file for details. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/lazy-cron\\/\",\"autoload\":true,\"singular\":true,\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"MarkupCache\":{\"name\":\"MarkupCache\",\"title\":\"Markup Cache\",\"version\":101,\"versionStr\":\"1.0.1\",\"summary\":\"A simple way to cache segments of markup in your templates. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/markupcache\\/\",\"autoload\":true,\"singular\":true,\"created\":1630086528,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"MarkupPageFields\":{\"name\":\"MarkupPageFields\",\"title\":\"Markup Page Fields\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Adds $page->renderFields() and $page->images->render() methods that return basic markup for output during development and debugging.\",\"autoload\":true,\"singular\":true,\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"permanent\":true},\"MarkupRSS\":{\"name\":\"MarkupRSS\",\"title\":\"Markup RSS Feed\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Renders an RSS feed. Given a PageArray, renders an RSS feed of them.\",\"icon\":\"rss-square\",\"created\":1630086528,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"PageFrontEdit\":{\"name\":\"PageFrontEdit\",\"title\":\"Front-End Page Editor\",\"version\":3,\"versionStr\":\"0.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables front-end editing of page fields.\",\"icon\":\"cube\",\"permissions\":{\"page-edit-front\":\"Use the front-end page editor\"},\"autoload\":true,\"created\":1630086528,\"installed\":false,\"configurable\":\"PageFrontEditConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"license\":\"MPL 2.0\"},\"PagePathHistory\":{\"name\":\"PagePathHistory\",\"title\":\"Page Path History\",\"version\":6,\"versionStr\":\"0.0.6\",\"summary\":\"Keeps track of past URLs where pages have lived and automatically redirects (301 permament) to the new location whenever the past URL is accessed.\",\"autoload\":true,\"singular\":true,\"created\":1630086528,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"PagePaths\":{\"name\":\"PagePaths\",\"title\":\"Page Paths\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables page paths\\/urls to be queryable by selectors. Also offers potential for improved load performance. Builds an index at install (may take time on a large site). Currently supports only single languages sites.\",\"autoload\":true,\"singular\":true,\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessCommentsManager\":{\"name\":\"ProcessCommentsManager\",\"title\":\"Comments\",\"version\":10,\"versionStr\":\"0.1.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage comments in your site outside of the page editor.\",\"icon\":\"comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"permission\":\"comments-manager\",\"permissions\":{\"comments-manager\":\"Use the comments manager\"},\"created\":1630086528,\"installed\":false,\"searchable\":\"comments\",\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"comments\",\"parent\":\"setup\",\"title\":\"Comments\"},\"nav\":[{\"url\":\"?go=approved\",\"label\":\"Approved\"},{\"url\":\"?go=pending\",\"label\":\"Pending\"},{\"url\":\"?go=spam\",\"label\":\"Spam\"},{\"url\":\"?go=all\",\"label\":\"All\"}]},\"ProcessForgotPassword\":{\"name\":\"ProcessForgotPassword\",\"title\":\"Forgot Password\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides password reset\\/email capability for the Login process.\",\"permission\":\"page-view\",\"created\":1630086528,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessPageClone\":{\"name\":\"ProcessPageClone\",\"title\":\"Page Clone\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides ability to clone\\/copy\\/duplicate pages in the admin. Adds a &quot;copy&quot; option to all applicable pages in the PageList.\",\"permission\":\"page-clone\",\"permissions\":{\"page-clone\":\"Clone a page\",\"page-clone-tree\":\"Clone a tree of pages\"},\"autoload\":\"template=admin\",\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"clone\",\"title\":\"Clone\",\"parent\":\"page\",\"status\":1024}},\"ProcessPagesExportImport\":{\"name\":\"ProcessPagesExportImport\",\"title\":\"Pages Export\\/Import\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables exporting and importing of pages. Development version, not yet recommended for production use.\",\"icon\":\"paper-plane-o\",\"permission\":\"page-edit-export\",\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"export-import\",\"parent\":\"page\",\"title\":\"Export\\/Import\"}},\"ProcessSessionDB\":{\"name\":\"ProcessSessionDB\",\"title\":\"Sessions\",\"version\":5,\"versionStr\":\"0.0.5\",\"summary\":\"Enables you to browse active database sessions.\",\"icon\":\"dashboard\",\"requiresVersions\":{\"SessionHandlerDB\":[\">=\",0]},\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"sessions-db\",\"parent\":\"access\",\"title\":\"Sessions\"}},\"SessionHandlerDB\":{\"name\":\"SessionHandlerDB\",\"title\":\"Session Handler Database\",\"version\":6,\"versionStr\":\"0.0.6\",\"summary\":\"Installing this module makes ProcessWire store sessions in the database rather than the file system. Note that this module will log you out after install or uninstall.\",\"installs\":[\"ProcessSessionDB\"],\"created\":1630086528,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeNotifications\":{\"name\":\"FieldtypeNotifications\",\"title\":\"Notifications\",\"version\":4,\"versionStr\":\"0.0.4\",\"summary\":\"Field that stores user notifications.\",\"requiresVersions\":{\"SystemNotifications\":[\">=\",0]},\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"SystemNotifications\":{\"name\":\"SystemNotifications\",\"title\":\"System Notifications\",\"version\":12,\"versionStr\":\"0.1.2\",\"summary\":\"Adds support for notifications in ProcessWire (currently in development)\",\"icon\":\"bell\",\"installs\":[\"FieldtypeNotifications\"],\"autoload\":true,\"created\":1630086528,\"installed\":false,\"configurable\":\"SystemNotificationsConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterMarkdownExtra\":{\"name\":\"TextformatterMarkdownExtra\",\"title\":\"Markdown\\/Parsedown Extra\",\"version\":180,\"versionStr\":\"1.8.0\",\"summary\":\"Markdown\\/Parsedown extra lightweight markup language by Emanuil Rusev. Based on Markdown by John Gruber.\",\"created\":1630086528,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterNewlineBR\":{\"name\":\"TextformatterNewlineBR\",\"title\":\"Newlines to XHTML Line Breaks\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to XHTML line break <br \\/> tags. \",\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterNewlineUL\":{\"name\":\"TextformatterNewlineUL\",\"title\":\"Newlines to Unordered List\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to <li> list items and surrounds in an <ul> unordered list. \",\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterPstripper\":{\"name\":\"TextformatterPstripper\",\"title\":\"Paragraph Stripper\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips paragraph <p> tags that may have been applied by other text formatters before it. \",\"created\":1630086528,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterSmartypants\":{\"name\":\"TextformatterSmartypants\",\"title\":\"SmartyPants Typographer\",\"version\":171,\"versionStr\":\"1.7.1\",\"summary\":\"Smart typography for web sites, by Michel Fortin based on SmartyPants by John Gruber. If combined with Markdown, it should be applied AFTER Markdown.\",\"created\":1630086528,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"url\":\"https:\\/\\/github.com\\/michelf\\/php-smartypants\"},\"TextformatterStripTags\":{\"name\":\"TextformatterStripTags\",\"title\":\"Strip Markup Tags\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips HTML\\/XHTML Markup Tags\",\"created\":1630086528,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"Helloworld\":{\"name\":\"Helloworld\",\"title\":\"Hello World\",\"version\":3,\"versionStr\":\"0.0.3\",\"summary\":\"An example module used for demonstration purposes.\",\"href\":\"https:\\/\\/processwire.com\",\"icon\":\"smile-o\",\"autoload\":true,\"singular\":true,\"created\":1650459967,\"installed\":false}}',
    '2010-04-08 03:10:01'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'Modules.site/modules/',
    'Helloworld/Helloworld.module',
    '2010-04-08 03:10:01'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'Modules.info',
    '{\"148\":{\"name\":\"AdminThemeDefault\",\"title\":\"Default\",\"version\":14,\"autoload\":\"template=admin\",\"created\":1650459967,\"configurable\":19,\"namespace\":\"ProcessWire\\\\\"},\"160\":{\"name\":\"AdminThemeUikit\",\"title\":\"Uikit\",\"version\":33,\"autoload\":\"template=admin\",\"created\":1650459986,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\"},\"97\":{\"name\":\"FieldtypeCheckbox\",\"title\":\"Checkbox\",\"version\":101,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"28\":{\"name\":\"FieldtypeDatetime\",\"title\":\"Datetime\",\"version\":105,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"29\":{\"name\":\"FieldtypeEmail\",\"title\":\"E-Mail\",\"version\":101,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"106\":{\"name\":\"FieldtypeFieldsetClose\",\"title\":\"Fieldset (Close)\",\"version\":100,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"105\":{\"name\":\"FieldtypeFieldsetOpen\",\"title\":\"Fieldset (Open)\",\"version\":101,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"107\":{\"name\":\"FieldtypeFieldsetTabOpen\",\"title\":\"Fieldset in Tab (Open)\",\"version\":100,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"6\":{\"name\":\"FieldtypeFile\",\"title\":\"Files\",\"version\":107,\"created\":1650459967,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"89\":{\"name\":\"FieldtypeFloat\",\"title\":\"Float\",\"version\":106,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"57\":{\"name\":\"FieldtypeImage\",\"title\":\"Images\",\"version\":102,\"created\":1650459967,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"84\":{\"name\":\"FieldtypeInteger\",\"title\":\"Integer\",\"version\":102,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"27\":{\"name\":\"FieldtypeModule\",\"title\":\"Module Reference\",\"version\":101,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"4\":{\"name\":\"FieldtypePage\",\"title\":\"Page Reference\",\"version\":106,\"autoload\":true,\"singular\":true,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"111\":{\"name\":\"FieldtypePageTitle\",\"title\":\"Page Title\",\"version\":100,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"133\":{\"name\":\"FieldtypePassword\",\"title\":\"Password\",\"version\":101,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"3\":{\"name\":\"FieldtypeText\",\"title\":\"Text\",\"version\":102,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"1\":{\"name\":\"FieldtypeTextarea\",\"title\":\"Textarea\",\"version\":107,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"135\":{\"name\":\"FieldtypeURL\",\"title\":\"URL\",\"version\":101,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"25\":{\"name\":\"InputfieldAsmSelect\",\"title\":\"asmSelect\",\"version\":202,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"131\":{\"name\":\"InputfieldButton\",\"title\":\"Button\",\"version\":100,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"37\":{\"name\":\"InputfieldCheckbox\",\"title\":\"Checkbox\",\"version\":106,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"38\":{\"name\":\"InputfieldCheckboxes\",\"title\":\"Checkboxes\",\"version\":108,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"155\":{\"name\":\"InputfieldCKEditor\",\"title\":\"CKEditor\",\"version\":168,\"installs\":[\"MarkupHTMLPurifier\"],\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"94\":{\"name\":\"InputfieldDatetime\",\"title\":\"Datetime\",\"version\":107,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"80\":{\"name\":\"InputfieldEmail\",\"title\":\"Email\",\"version\":101,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"78\":{\"name\":\"InputfieldFieldset\",\"title\":\"Fieldset\",\"version\":101,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"55\":{\"name\":\"InputfieldFile\",\"title\":\"Files\",\"version\":126,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"90\":{\"name\":\"InputfieldFloat\",\"title\":\"Float\",\"version\":104,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"30\":{\"name\":\"InputfieldForm\",\"title\":\"Form\",\"version\":107,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"40\":{\"name\":\"InputfieldHidden\",\"title\":\"Hidden\",\"version\":101,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"162\":{\"name\":\"InputfieldIcon\",\"title\":\"Icon\",\"version\":3,\"created\":1650459990,\"namespace\":\"ProcessWire\\\\\"},\"56\":{\"name\":\"InputfieldImage\",\"title\":\"Images\",\"version\":124,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"85\":{\"name\":\"InputfieldInteger\",\"title\":\"Integer\",\"version\":105,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"79\":{\"name\":\"InputfieldMarkup\",\"title\":\"Markup\",\"version\":102,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"41\":{\"name\":\"InputfieldName\",\"title\":\"Name\",\"version\":100,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"60\":{\"name\":\"InputfieldPage\",\"title\":\"Page\",\"version\":107,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"15\":{\"name\":\"InputfieldPageListSelect\",\"title\":\"Page List Select\",\"version\":101,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"137\":{\"name\":\"InputfieldPageListSelectMultiple\",\"title\":\"Page List Select Multiple\",\"version\":102,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"86\":{\"name\":\"InputfieldPageName\",\"title\":\"Page Name\",\"version\":106,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"112\":{\"name\":\"InputfieldPageTitle\",\"title\":\"Page Title\",\"version\":102,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"122\":{\"name\":\"InputfieldPassword\",\"title\":\"Password\",\"version\":102,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"39\":{\"name\":\"InputfieldRadios\",\"title\":\"Radio Buttons\",\"version\":106,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"36\":{\"name\":\"InputfieldSelect\",\"title\":\"Select\",\"version\":102,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"43\":{\"name\":\"InputfieldSelectMultiple\",\"title\":\"Select Multiple\",\"version\":101,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"149\":{\"name\":\"InputfieldSelector\",\"title\":\"Selector\",\"version\":28,\"autoload\":\"template=admin\",\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"addFlag\":32},\"32\":{\"name\":\"InputfieldSubmit\",\"title\":\"Submit\",\"version\":103,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"34\":{\"name\":\"InputfieldText\",\"title\":\"Text\",\"version\":106,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"35\":{\"name\":\"InputfieldTextarea\",\"title\":\"Textarea\",\"version\":103,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"163\":{\"name\":\"InputfieldTextTags\",\"title\":\"Text Tags\",\"version\":5,\"icon\":\"tags\",\"created\":1651666701,\"namespace\":\"ProcessWire\\\\\"},\"108\":{\"name\":\"InputfieldURL\",\"title\":\"URL\",\"version\":102,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"116\":{\"name\":\"JqueryCore\",\"title\":\"jQuery Core\",\"version\":183,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"151\":{\"name\":\"JqueryMagnific\",\"title\":\"jQuery Magnific Popup\",\"version\":1,\"singular\":1,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"103\":{\"name\":\"JqueryTableSorter\",\"title\":\"jQuery Table Sorter Plugin\",\"version\":221,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"117\":{\"name\":\"JqueryUI\",\"title\":\"jQuery UI\",\"version\":196,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"45\":{\"name\":\"JqueryWireTabs\",\"title\":\"jQuery Wire Tabs Plugin\",\"version\":110,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"67\":{\"name\":\"MarkupAdminDataTable\",\"title\":\"Admin Data Table\",\"version\":107,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"156\":{\"name\":\"MarkupHTMLPurifier\",\"title\":\"HTML Purifier\",\"version\":496,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"113\":{\"name\":\"MarkupPageArray\",\"title\":\"PageArray Markup\",\"version\":100,\"autoload\":true,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"98\":{\"name\":\"MarkupPagerNav\",\"title\":\"Pager (Pagination) Navigation\",\"version\":105,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"114\":{\"name\":\"PagePermissions\",\"title\":\"Page Permissions\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"115\":{\"name\":\"PageRender\",\"title\":\"Page Render\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"48\":{\"name\":\"ProcessField\",\"title\":\"Fields\",\"version\":113,\"icon\":\"cube\",\"permission\":\"field-admin\",\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"87\":{\"name\":\"ProcessHome\",\"title\":\"Admin Home\",\"version\":101,\"permission\":\"page-view\",\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"76\":{\"name\":\"ProcessList\",\"title\":\"List\",\"version\":101,\"permission\":\"page-view\",\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"161\":{\"name\":\"ProcessLogger\",\"title\":\"Logs\",\"version\":2,\"icon\":\"tree\",\"permission\":\"logs-view\",\"singular\":1,\"created\":1650459990,\"namespace\":\"ProcessWire\\\\\",\"useNavJSON\":true},\"10\":{\"name\":\"ProcessLogin\",\"title\":\"Login\",\"version\":108,\"permission\":\"page-view\",\"created\":1650459967,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"50\":{\"name\":\"ProcessModule\",\"title\":\"Modules\",\"version\":119,\"permission\":\"module-admin\",\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"nav\":[{\"url\":\"?site#tab_site_modules\",\"label\":\"Site\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?site=1\"},{\"url\":\"?core#tab_core_modules\",\"label\":\"Core\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?core=1\"},{\"url\":\"?configurable#tab_configurable_modules\",\"label\":\"Configure\",\"icon\":\"gear\",\"navJSON\":\"navJSON\\/?configurable=1\"},{\"url\":\"?install#tab_install_modules\",\"label\":\"Install\",\"icon\":\"sign-in\",\"navJSON\":\"navJSON\\/?install=1\"},{\"url\":\"?new#tab_new_modules\",\"label\":\"New\",\"icon\":\"plus\"},{\"url\":\"?reset=1\",\"label\":\"Refresh\",\"icon\":\"refresh\"}]},\"17\":{\"name\":\"ProcessPageAdd\",\"title\":\"Page Add\",\"version\":108,\"icon\":\"plus-circle\",\"permission\":\"page-edit\",\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"7\":{\"name\":\"ProcessPageEdit\",\"title\":\"Page Edit\",\"version\":110,\"icon\":\"edit\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"129\":{\"name\":\"ProcessPageEditImageSelect\",\"title\":\"Page Edit Image\",\"version\":120,\"permission\":\"page-edit\",\"singular\":1,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"121\":{\"name\":\"ProcessPageEditLink\",\"title\":\"Page Edit Link\",\"version\":109,\"icon\":\"link\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"12\":{\"name\":\"ProcessPageList\",\"title\":\"Page List\",\"version\":123,\"icon\":\"sitemap\",\"permission\":\"page-edit\",\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"150\":{\"name\":\"ProcessPageLister\",\"title\":\"Lister\",\"version\":26,\"icon\":\"search\",\"permission\":\"page-lister\",\"created\":1650459967,\"configurable\":true,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"104\":{\"name\":\"ProcessPageSearch\",\"title\":\"Page Search\",\"version\":106,\"permission\":\"page-edit\",\"singular\":1,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"14\":{\"name\":\"ProcessPageSort\",\"title\":\"Page Sort and Move\",\"version\":100,\"permission\":\"page-edit\",\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"109\":{\"name\":\"ProcessPageTrash\",\"title\":\"Page Trash\",\"version\":103,\"singular\":1,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"134\":{\"name\":\"ProcessPageType\",\"title\":\"Page Type\",\"version\":101,\"singular\":1,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"83\":{\"name\":\"ProcessPageView\",\"title\":\"Page View\",\"version\":104,\"permission\":\"page-view\",\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"136\":{\"name\":\"ProcessPermission\",\"title\":\"Permissions\",\"version\":101,\"icon\":\"gear\",\"permission\":\"permission-admin\",\"singular\":1,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"138\":{\"name\":\"ProcessProfile\",\"title\":\"User Profile\",\"version\":105,\"permission\":\"profile-edit\",\"singular\":1,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"159\":{\"name\":\"ProcessRecentPages\",\"title\":\"Recent Pages\",\"version\":2,\"icon\":\"clock-o\",\"permission\":\"page-edit-recent\",\"singular\":1,\"created\":1650459985,\"namespace\":\"ProcessWire\\\\\",\"useNavJSON\":true,\"nav\":[{\"url\":\"?edited=1\",\"label\":\"Edited\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?edited=1\"},{\"url\":\"?added=1\",\"label\":\"Created\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?added=1\"},{\"url\":\"?edited=1&me=1\",\"label\":\"Edited by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?edited=1&me=1\"},{\"url\":\"?added=1&me=1\",\"label\":\"Created by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"another\\/\",\"label\":\"Add another\",\"icon\":\"plus-circle\",\"navJSON\":\"anotherNavJSON\\/\"}]},\"68\":{\"name\":\"ProcessRole\",\"title\":\"Roles\",\"version\":104,\"icon\":\"gears\",\"permission\":\"role-admin\",\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"47\":{\"name\":\"ProcessTemplate\",\"title\":\"Templates\",\"version\":114,\"icon\":\"cubes\",\"permission\":\"template-admin\",\"created\":1650459967,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"66\":{\"name\":\"ProcessUser\",\"title\":\"Users\",\"version\":107,\"icon\":\"group\",\"permission\":\"user-admin\",\"created\":1650459967,\"configurable\":\"ProcessUserConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"125\":{\"name\":\"SessionLoginThrottle\",\"title\":\"Session Login Throttle\",\"version\":103,\"autoload\":\"function\",\"singular\":true,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"},\"139\":{\"name\":\"SystemUpdater\",\"title\":\"System Updater\",\"version\":19,\"singular\":true,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"61\":{\"name\":\"TextformatterEntities\",\"title\":\"HTML Entity Encoder (htmlspecialchars)\",\"version\":100,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"164\":{\"name\":\"InputfieldToggle\",\"title\":\"Toggle\",\"version\":1,\"namespace\":\"ProcessWire\\\\\"}}',
    '2010-04-08 03:10:01'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__fe863f23f9d67d9a038194e074bebba7',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/templates\\/admin.php\",\"hash\":\"1e0b59ea7b71052027a7c9dd37c55e85\",\"size\":479,\"time\":1630086528,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/admin.php\",\"hash\":\"1e0b59ea7b71052027a7c9dd37c55e85\",\"size\":479,\"time\":1630086528}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'Permissions.names',
    '{\"logs-edit\":1014,\"logs-view\":1013,\"page-delete\":34,\"page-edit\":32,\"page-edit-recent\":1011,\"page-lister\":1006,\"page-lock\":54,\"page-move\":35,\"page-sort\":50,\"page-template\":51,\"page-view\":36,\"profile-edit\":53,\"user-admin\":52}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__a00a54d9a295494ebe10b695958f576b',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/templates\\/home.php\",\"hash\":\"2b363956e816cbf5c16de873632c9623\",\"size\":8676,\"time\":1652360342,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/home.php\",\"hash\":\"2b363956e816cbf5c16de873632c9623\",\"size\":8676,\"time\":1652360342}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__6abee2988f5d12d0c13b7e051f679567',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/templates\\/basic-page.php\",\"hash\":\"db5828c7dd5a5123c7963c0fb016f7a7\",\"size\":419,\"time\":1630086528,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/basic-page.php\",\"hash\":\"db5828c7dd5a5123c7963c0fb016f7a7\",\"size\":419,\"time\":1630086528}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__5e59b1a8e611ed188ef953ac37087952',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/templates\\/basbase.php\",\"hash\":\"cb923066155d7ef840e4e27434ccc9ef\",\"size\":2787,\"time\":1651668921,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/basbase.php\",\"hash\":\"cb923066155d7ef840e4e27434ccc9ef\",\"size\":2787,\"time\":1651668921}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__4a9f9fbce61e8510ca18715082aa351d',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/templates\\/home.php\",\"hash\":\"38b6611cd7a3cfe7f7c6c5469d4a7592\",\"size\":8981,\"time\":1652385499,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/home.php\",\"hash\":\"38b6611cd7a3cfe7f7c6c5469d4a7592\",\"size\":8981,\"time\":1652385499}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__e5d53a60c9fb971bf3335706bb59b0d0',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/templates\\/admin.php\",\"hash\":\"cee113a4886ecac536c1a277d093096a\",\"size\":495,\"time\":1652023784,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/admin.php\",\"hash\":\"cee113a4886ecac536c1a277d093096a\",\"size\":495,\"time\":1652023784}}',
    '2010-04-08 03:10:10'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_admin_theme
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_email
# ------------------------------------------------------------

INSERT INTO
  `field_email` (`pages_id`, `data`)
VALUES
  (41, 'bernhardr91104@gmail.com');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_pass
# ------------------------------------------------------------

INSERT INTO
  `field_pass` (`pages_id`, `data`, `salt`)
VALUES
  (
    41,
    'Z.ayFtphMQH7sJK8AiVxdKo/bpTVSLq',
    '$2y$11$joLmSEolLzbNLaJL68nRYO'
  );
INSERT INTO
  `field_pass` (`pages_id`, `data`, `salt`)
VALUES
  (40, '', '');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_permissions
# ------------------------------------------------------------

INSERT INTO
  `field_permissions` (`pages_id`, `data`, `sort`)
VALUES
  (38, 32, 1);
INSERT INTO
  `field_permissions` (`pages_id`, `data`, `sort`)
VALUES
  (38, 34, 2);
INSERT INTO
  `field_permissions` (`pages_id`, `data`, `sort`)
VALUES
  (38, 35, 3);
INSERT INTO
  `field_permissions` (`pages_id`, `data`, `sort`)
VALUES
  (37, 36, 0);
INSERT INTO
  `field_permissions` (`pages_id`, `data`, `sort`)
VALUES
  (38, 36, 0);
INSERT INTO
  `field_permissions` (`pages_id`, `data`, `sort`)
VALUES
  (38, 50, 4);
INSERT INTO
  `field_permissions` (`pages_id`, `data`, `sort`)
VALUES
  (38, 51, 5);
INSERT INTO
  `field_permissions` (`pages_id`, `data`, `sort`)
VALUES
  (38, 52, 7);
INSERT INTO
  `field_permissions` (`pages_id`, `data`, `sort`)
VALUES
  (38, 53, 8);
INSERT INTO
  `field_permissions` (`pages_id`, `data`, `sort`)
VALUES
  (38, 54, 6);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_prductname
# ------------------------------------------------------------

INSERT INTO
  `field_prductname` (`pages_id`, `data`)
VALUES
  (1015, 'rhufoöjkfsiöostfjklöiuftg');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_process
# ------------------------------------------------------------

INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (6, 17);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (3, 12);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (8, 12);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (9, 14);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (10, 7);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (11, 47);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (16, 48);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (300, 104);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (21, 50);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (29, 66);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (23, 10);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (304, 138);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (31, 136);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (22, 76);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (30, 68);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (303, 129);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (2, 87);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (302, 121);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (301, 109);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (28, 76);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (1007, 150);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (1010, 159);
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (1012, 161);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_roles
# ------------------------------------------------------------

INSERT INTO
  `field_roles` (`pages_id`, `data`, `sort`)
VALUES
  (40, 37, 0);
INSERT INTO
  `field_roles` (`pages_id`, `data`, `sort`)
VALUES
  (41, 37, 0);
INSERT INTO
  `field_roles` (`pages_id`, `data`, `sort`)
VALUES
  (41, 38, 2);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_sliderbilder
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_title
# ------------------------------------------------------------

INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (11, 'Templates');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (16, 'Fields');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (22, 'Setup');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (3, 'Pages');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (6, 'Add Page');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (8, 'Tree');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (9, 'Save Sort');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (10, 'Edit');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (21, 'Modules');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (29, 'Users');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (30, 'Roles');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (2, 'Admin');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (7, 'Trash');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (27, '404 Not Found');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (302, 'Insert Link');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (23, 'Login');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (304, 'Profile');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (301, 'Empty Trash');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (300, 'Search');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (303, 'Insert Image');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (28, 'Access');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (31, 'Permissions');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (32, 'Edit pages');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (34, 'Delete pages');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (35, 'Move pages (change parent)');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (36, 'View pages');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (50, 'Sort child pages');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (51, 'Change templates on pages');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (52, 'Administer users');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (53, 'User can update profile/password');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (54, 'Lock or unlock a page');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1, 'Home');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1006, 'Use Page Lister');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1007, 'Find');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1010, 'Recent');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1011, 'Can see recently edited pages');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1012, 'Logs');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1013, 'Can view system logs');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1014, 'Can manage system logs');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1015, 'testetttekskshhkj');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1016, 'Salat Dressing');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1017, 'Steak Soßen');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1018, 'BBQ Soßen');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1019, 'Herstellorte');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1020, 'Wien');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1021, 'Salzburg');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1023, 'Privacy Policy');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1024, 'About Us');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1025, 'Legal Stuff');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: fieldgroups
# ------------------------------------------------------------

INSERT INTO
  `fieldgroups` (`id`, `name`)
VALUES
  (2, 'admin');
INSERT INTO
  `fieldgroups` (`id`, `name`)
VALUES
  (3, 'user');
INSERT INTO
  `fieldgroups` (`id`, `name`)
VALUES
  (4, 'role');
INSERT INTO
  `fieldgroups` (`id`, `name`)
VALUES
  (5, 'permission');
INSERT INTO
  `fieldgroups` (`id`, `name`)
VALUES
  (1, 'home');
INSERT INTO
  `fieldgroups` (`id`, `name`)
VALUES
  (83, 'basic-page');
INSERT INTO
  `fieldgroups` (`id`, `name`)
VALUES
  (97, 'basbase');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: fieldgroups_fields
# ------------------------------------------------------------

INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (2, 2, 1, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (2, 1, 0, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (3, 4, 2, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (3, 92, 1, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (4, 5, 0, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (5, 1, 0, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (3, 3, 0, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (83, 1, 0, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (1, 1, 0, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (3, 97, 3, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (97, 1, 0, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (97, 98, 1, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (1, 99, 1, NULL);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: fields
# ------------------------------------------------------------

INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    1,
    'FieldtypePageTitle',
    'title',
    13,
    'Title',
    '{\"required\":1,\"textformatters\":[\"TextformatterEntities\"],\"size\":0,\"maxlength\":255}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    2,
    'FieldtypeModule',
    'process',
    25,
    'Process',
    '{\"description\":\"The process that is executed on this page. Since this is mostly used by ProcessWire internally, it is recommended that you don\'t change the value of this unless adding your own pages in the admin.\",\"collapsed\":1,\"required\":1,\"moduleTypes\":[\"Process\"],\"permanent\":1}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    3,
    'FieldtypePassword',
    'pass',
    24,
    'Set Password',
    '{\"collapsed\":1,\"size\":50,\"maxlength\":128}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    5,
    'FieldtypePage',
    'permissions',
    24,
    'Permissions',
    '{\"derefAsPage\":0,\"parent_id\":31,\"labelFieldName\":\"title\",\"inputfield\":\"InputfieldCheckboxes\"}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    4,
    'FieldtypePage',
    'roles',
    24,
    'Roles',
    '{\"derefAsPage\":0,\"parent_id\":30,\"labelFieldName\":\"name\",\"inputfield\":\"InputfieldCheckboxes\",\"description\":\"User will inherit the permissions assigned to each role. You may assign multiple roles to a user. When accessing a page, the user will only inherit permissions from the roles that are also assigned to the page\'s template.\"}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    92,
    'FieldtypeEmail',
    'email',
    9,
    'E-Mail Address',
    '{\"size\":70,\"maxlength\":255}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    97,
    'FieldtypeModule',
    'admin_theme',
    8,
    'Admin Theme',
    '{\"moduleTypes\":[\"AdminTheme\"],\"labelField\":\"title\",\"inputfieldClass\":\"InputfieldRadios\"}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    98,
    'FieldtypeText',
    'prductname',
    0,
    'PrductName',
    ''
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    99,
    'FieldtypeImage',
    'sliderbilder',
    32,
    'Slider Bilder',
    '{\"fileSchema\":270,\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"descriptionRows\":1,\"useTags\":0,\"collapsed\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldImage\",\"viewRoles\":[37]}'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: modules
# ------------------------------------------------------------

INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (1, 'FieldtypeTextarea', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (3, 'FieldtypeText', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (4, 'FieldtypePage', 3, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (30, 'InputfieldForm', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (6, 'FieldtypeFile', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (7, 'ProcessPageEdit', 1, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (10, 'ProcessLogin', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    12,
    'ProcessPageList',
    0,
    '{\"pageLabelField\":\"title\",\"paginationLimit\":25,\"limit\":50}',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    121,
    'ProcessPageEditLink',
    1,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (14, 'ProcessPageSort', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    15,
    'InputfieldPageListSelect',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (117, 'JqueryUI', 1, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (17, 'ProcessPageAdd', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    125,
    'SessionLoginThrottle',
    11,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    122,
    'InputfieldPassword',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    25,
    'InputfieldAsmSelect',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (116, 'JqueryCore', 1, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (27, 'FieldtypeModule', 1, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    28,
    'FieldtypeDatetime',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (29, 'FieldtypeEmail', 1, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (108, 'InputfieldURL', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (32, 'InputfieldSubmit', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (34, 'InputfieldText', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    35,
    'InputfieldTextarea',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (36, 'InputfieldSelect', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    37,
    'InputfieldCheckbox',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    38,
    'InputfieldCheckboxes',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (39, 'InputfieldRadios', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (40, 'InputfieldHidden', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (41, 'InputfieldName', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    43,
    'InputfieldSelectMultiple',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (45, 'JqueryWireTabs', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (47, 'ProcessTemplate', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (48, 'ProcessField', 32, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (50, 'ProcessModule', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (114, 'PagePermissions', 3, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    97,
    'FieldtypeCheckbox',
    1,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    115,
    'PageRender',
    3,
    '{\"clearCache\":1}',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (55, 'InputfieldFile', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (56, 'InputfieldImage', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (57, 'FieldtypeImage', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    60,
    'InputfieldPage',
    0,
    '{\"inputfieldClasses\":[\"InputfieldSelect\",\"InputfieldSelectMultiple\",\"InputfieldCheckboxes\",\"InputfieldRadios\",\"InputfieldAsmSelect\",\"InputfieldPageListSelect\",\"InputfieldPageListSelectMultiple\"]}',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    61,
    'TextformatterEntities',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    66,
    'ProcessUser',
    0,
    '{\"showFields\":[\"name\",\"email\",\"roles\"]}',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    67,
    'MarkupAdminDataTable',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    68,
    'ProcessRole',
    0,
    '{\"showFields\":[\"name\"]}',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (76, 'ProcessList', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    78,
    'InputfieldFieldset',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (79, 'InputfieldMarkup', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (80, 'InputfieldEmail', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (89, 'FieldtypeFloat', 1, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (83, 'ProcessPageView', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (84, 'FieldtypeInteger', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    85,
    'InputfieldInteger',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    86,
    'InputfieldPageName',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (87, 'ProcessHome', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (90, 'InputfieldFloat', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    94,
    'InputfieldDatetime',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (98, 'MarkupPagerNav', 0, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    129,
    'ProcessPageEditImageSelect',
    1,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    103,
    'JqueryTableSorter',
    1,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    104,
    'ProcessPageSearch',
    1,
    '{\"searchFields\":\"title\",\"displayField\":\"title path\"}',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    105,
    'FieldtypeFieldsetOpen',
    1,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    106,
    'FieldtypeFieldsetClose',
    1,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    107,
    'FieldtypeFieldsetTabOpen',
    1,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    109,
    'ProcessPageTrash',
    1,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    111,
    'FieldtypePageTitle',
    1,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    112,
    'InputfieldPageTitle',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (113, 'MarkupPageArray', 3, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    131,
    'InputfieldButton',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    133,
    'FieldtypePassword',
    1,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    134,
    'ProcessPageType',
    33,
    '{\"showFields\":[]}',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (135, 'FieldtypeURL', 1, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    136,
    'ProcessPermission',
    1,
    '{\"showFields\":[\"name\",\"title\"]}',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    137,
    'InputfieldPageListSelectMultiple',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    138,
    'ProcessProfile',
    1,
    '{\"profileFields\":[\"pass\",\"email\",\"admin_theme\"]}',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    139,
    'SystemUpdater',
    1,
    '{\"systemVersion\":19,\"coreVersion\":\"3.0.184\"}',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    148,
    'AdminThemeDefault',
    10,
    '{\"colors\":\"classic\"}',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    149,
    'InputfieldSelector',
    42,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    150,
    'ProcessPageLister',
    32,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (151, 'JqueryMagnific', 1, '', '2022-04-20 15:06:07');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    155,
    'InputfieldCKEditor',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    156,
    'MarkupHTMLPurifier',
    0,
    '',
    '2022-04-20 15:06:07'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    163,
    'InputfieldTextTags',
    0,
    '',
    '2022-05-04 14:18:21'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    159,
    'ProcessRecentPages',
    1,
    '',
    '2022-04-20 15:06:25'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    160,
    'AdminThemeUikit',
    10,
    '',
    '2022-04-20 15:06:26'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (161, 'ProcessLogger', 1, '', '2022-04-20 15:06:30');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (162, 'InputfieldIcon', 0, '', '2022-04-20 15:06:30');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    164,
    'InputfieldToggle',
    0,
    '',
    '2022-05-04 15:01:00'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pages
# ------------------------------------------------------------

INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1,
    0,
    1,
    'home',
    9,
    '2022-05-12 21:09:10',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    0
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    2,
    1,
    2,
    'processwire',
    1035,
    '2022-04-20 15:06:26',
    40,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    11
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    3,
    2,
    2,
    'page',
    21,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    0
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    6,
    3,
    2,
    'add',
    21,
    '2022-04-20 15:06:35',
    40,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    1
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    7,
    1,
    2,
    'trash',
    1039,
    '2022-05-12 21:15:43',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    12
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    8,
    3,
    2,
    'list',
    21,
    '2022-04-20 15:06:38',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    0
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    9,
    3,
    2,
    'sort',
    1047,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    3
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    10,
    3,
    2,
    'edit',
    1045,
    '2022-04-20 15:06:36',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    4
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    11,
    22,
    2,
    'template',
    21,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    0
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    16,
    22,
    2,
    'field',
    21,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    2
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    21,
    2,
    2,
    'module',
    21,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    2
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    22,
    2,
    2,
    'setup',
    21,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    1
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    23,
    2,
    2,
    'login',
    1035,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    4
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    27,
    1,
    29,
    'http404',
    1035,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    3,
    '2022-04-20 15:06:07',
    10
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    28,
    2,
    2,
    'access',
    13,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    3
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    29,
    28,
    2,
    'users',
    29,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    0
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    30,
    28,
    2,
    'roles',
    29,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    1
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    31,
    28,
    2,
    'permissions',
    29,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    2
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    32,
    31,
    5,
    'page-edit',
    25,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    2
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    34,
    31,
    5,
    'page-delete',
    25,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    3
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    35,
    31,
    5,
    'page-move',
    25,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    4
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    36,
    31,
    5,
    'page-view',
    25,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    0
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    37,
    30,
    4,
    'guest',
    25,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    0
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    38,
    30,
    4,
    'superuser',
    25,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    1
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    41,
    29,
    3,
    'admin',
    1,
    '2022-04-20 15:06:26',
    40,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    0
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    40,
    29,
    3,
    'guest',
    25,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    1
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    50,
    31,
    5,
    'page-sort',
    25,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    5
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    51,
    31,
    5,
    'page-template',
    25,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    6
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    52,
    31,
    5,
    'user-admin',
    25,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    10
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    53,
    31,
    5,
    'profile-edit',
    1,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    13
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    54,
    31,
    5,
    'page-lock',
    1,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    8
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    300,
    3,
    2,
    'search',
    1045,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    6
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    301,
    3,
    2,
    'trash',
    1047,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    6
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    302,
    3,
    2,
    'link',
    1041,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    7
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    303,
    3,
    2,
    'image',
    1041,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    2,
    '2022-04-20 15:06:07',
    8
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    304,
    2,
    2,
    'profile',
    1025,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    41,
    '2022-04-20 15:06:07',
    5
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1006,
    31,
    5,
    'page-lister',
    1,
    '2022-04-20 15:06:07',
    40,
    '2022-04-20 15:06:07',
    40,
    '2022-04-20 15:06:07',
    9
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1007,
    3,
    2,
    'lister',
    1,
    '2022-04-20 15:06:07',
    40,
    '2022-04-20 15:06:07',
    40,
    '2022-04-20 15:06:07',
    9
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1010,
    3,
    2,
    'recent-pages',
    1,
    '2022-04-20 15:06:25',
    40,
    '2022-04-20 15:06:25',
    40,
    '2022-04-20 15:06:25',
    10
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1011,
    31,
    5,
    'page-edit-recent',
    1,
    '2022-04-20 15:06:26',
    40,
    '2022-04-20 15:06:26',
    40,
    '2022-04-20 15:06:26',
    10
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1012,
    22,
    2,
    'logs',
    1,
    '2022-04-20 15:06:30',
    40,
    '2022-04-20 15:06:30',
    40,
    '2022-04-20 15:06:30',
    2
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1013,
    31,
    5,
    'logs-view',
    1,
    '2022-04-20 15:06:30',
    40,
    '2022-04-20 15:06:30',
    40,
    '2022-04-20 15:06:30',
    11
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1014,
    31,
    5,
    'logs-edit',
    1,
    '2022-04-20 15:06:30',
    40,
    '2022-04-20 15:06:30',
    40,
    '2022-04-20 15:06:30',
    12
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1015,
    7,
    43,
    '1015.1.3_testetttekskshhkj',
    8193,
    '2022-05-04 15:05:37',
    41,
    '2022-05-04 14:29:19',
    41,
    '2022-05-04 14:29:27',
    5
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1016,
    1,
    29,
    'salat-dressing',
    1,
    '2022-05-04 15:06:27',
    41,
    '2022-05-04 15:06:27',
    41,
    '2022-05-04 15:06:27',
    3
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1017,
    1,
    29,
    'steak-sossen',
    1,
    '2022-05-04 15:06:49',
    41,
    '2022-05-04 15:06:49',
    41,
    '2022-05-04 15:06:49',
    4
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1018,
    1,
    29,
    'bbq-sossen',
    1,
    '2022-05-04 15:07:42',
    41,
    '2022-05-04 15:07:38',
    41,
    '2022-05-04 15:07:38',
    5
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1019,
    1,
    29,
    'herstellorte',
    1,
    '2022-05-08 20:55:11',
    41,
    '2022-05-08 20:55:11',
    41,
    '2022-05-08 20:55:11',
    6
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1020,
    1019,
    29,
    'wien',
    1,
    '2022-05-08 20:55:33',
    41,
    '2022-05-08 20:55:33',
    41,
    '2022-05-08 20:55:33',
    0
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1021,
    1019,
    29,
    'salzburg',
    1,
    '2022-05-08 20:55:49',
    41,
    '2022-05-08 20:55:49',
    41,
    '2022-05-08 20:55:49',
    1
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1023,
    1024,
    29,
    'privacy-policy',
    1,
    '2022-05-12 21:16:43',
    41,
    '2022-05-12 15:24:04',
    41,
    '2022-05-12 15:24:04',
    1
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1024,
    1,
    29,
    'about-us',
    1,
    '2022-05-12 21:16:04',
    41,
    '2022-05-12 21:08:41',
    41,
    '2022-05-12 21:08:41',
    9
  );
INSERT INTO
  `pages` (
    `id`,
    `parent_id`,
    `templates_id`,
    `name`,
    `status`,
    `modified`,
    `modified_users_id`,
    `created`,
    `created_users_id`,
    `published`,
    `sort`
  )
VALUES
  (
    1025,
    1024,
    29,
    'legal-stuff',
    1,
    '2022-05-12 21:10:36',
    41,
    '2022-05-12 21:10:36',
    41,
    '2022-05-12 21:10:36',
    2
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pages_access
# ------------------------------------------------------------

INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (37, 2, '2022-04-20 15:06:07');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (38, 2, '2022-04-20 15:06:07');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (32, 2, '2022-04-20 15:06:07');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (34, 2, '2022-04-20 15:06:07');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (35, 2, '2022-04-20 15:06:07');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (36, 2, '2022-04-20 15:06:07');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (50, 2, '2022-04-20 15:06:07');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (51, 2, '2022-04-20 15:06:07');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (52, 2, '2022-04-20 15:06:07');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (53, 2, '2022-04-20 15:06:07');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (54, 2, '2022-04-20 15:06:07');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (1006, 2, '2022-04-20 15:06:07');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (1011, 2, '2022-04-20 15:06:26');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (1013, 2, '2022-04-20 15:06:30');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (1014, 2, '2022-04-20 15:06:30');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (1015, 2, '2022-05-04 15:05:37');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (1016, 1, '2022-05-04 15:06:27');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (1017, 1, '2022-05-04 15:06:49');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (1018, 1, '2022-05-04 15:07:38');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (1019, 1, '2022-05-08 20:55:11');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (1020, 1, '2022-05-08 20:55:33');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (1021, 1, '2022-05-08 20:55:49');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (1023, 1, '2022-05-12 21:15:53');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (1024, 1, '2022-05-12 21:08:41');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (1025, 1, '2022-05-12 21:10:36');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pages_parents
# ------------------------------------------------------------

INSERT INTO
  `pages_parents` (`pages_id`, `parents_id`)
VALUES
  (3, 2);
INSERT INTO
  `pages_parents` (`pages_id`, `parents_id`)
VALUES
  (22, 2);
INSERT INTO
  `pages_parents` (`pages_id`, `parents_id`)
VALUES
  (28, 2);
INSERT INTO
  `pages_parents` (`pages_id`, `parents_id`)
VALUES
  (29, 2);
INSERT INTO
  `pages_parents` (`pages_id`, `parents_id`)
VALUES
  (29, 28);
INSERT INTO
  `pages_parents` (`pages_id`, `parents_id`)
VALUES
  (30, 2);
INSERT INTO
  `pages_parents` (`pages_id`, `parents_id`)
VALUES
  (30, 28);
INSERT INTO
  `pages_parents` (`pages_id`, `parents_id`)
VALUES
  (31, 2);
INSERT INTO
  `pages_parents` (`pages_id`, `parents_id`)
VALUES
  (31, 28);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pages_sortfields
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: session_login_throttle
# ------------------------------------------------------------

INSERT INTO
  `session_login_throttle` (`name`, `attempts`, `last_attempt`)
VALUES
  ('admin', 1, 1652382451);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: templates
# ------------------------------------------------------------

INSERT INTO
  `templates` (
    `id`,
    `name`,
    `fieldgroups_id`,
    `flags`,
    `cache_time`,
    `data`
  )
VALUES
  (
    2,
    'admin',
    2,
    8,
    0,
    '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1652023784,\"ns\":\"ProcessWire\"}'
  );
INSERT INTO
  `templates` (
    `id`,
    `name`,
    `fieldgroups_id`,
    `flags`,
    `cache_time`,
    `data`
  )
VALUES
  (
    3,
    'user',
    3,
    8,
    0,
    '{\"useRoles\":1,\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"User\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'
  );
INSERT INTO
  `templates` (
    `id`,
    `name`,
    `fieldgroups_id`,
    `flags`,
    `cache_time`,
    `data`
  )
VALUES
  (
    4,
    'role',
    4,
    8,
    0,
    '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"pageClass\":\"Role\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'
  );
INSERT INTO
  `templates` (
    `id`,
    `name`,
    `fieldgroups_id`,
    `flags`,
    `cache_time`,
    `data`
  )
VALUES
  (
    5,
    'permission',
    5,
    8,
    0,
    '{\"noChildren\":1,\"parentTemplates\":[2],\"slashUrls\":1,\"guestSearchable\":1,\"pageClass\":\"Permission\",\"noGlobal\":1,\"noMove\":1,\"noTrash\":1,\"noSettings\":1,\"noChangeTemplate\":1,\"nameContentTab\":1}'
  );
INSERT INTO
  `templates` (
    `id`,
    `name`,
    `fieldgroups_id`,
    `flags`,
    `cache_time`,
    `data`
  )
VALUES
  (
    1,
    'home',
    1,
    0,
    0,
    '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1652385499,\"ns\":\"\\\\\",\"roles\":[37]}'
  );
INSERT INTO
  `templates` (
    `id`,
    `name`,
    `fieldgroups_id`,
    `flags`,
    `cache_time`,
    `data`
  )
VALUES
  (
    29,
    'basic-page',
    83,
    0,
    0,
    '{\"slashUrls\":1,\"compile\":3,\"modified\":1652376964,\"ns\":\"\\\\\"}'
  );
INSERT INTO
  `templates` (
    `id`,
    `name`,
    `fieldgroups_id`,
    `flags`,
    `cache_time`,
    `data`
  )
VALUES
  (
    43,
    'basbase',
    97,
    0,
    0,
    '{\"slashUrls\":1,\"compile\":3,\"modified\":1651756223,\"ns\":\"\\\\\"}'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
