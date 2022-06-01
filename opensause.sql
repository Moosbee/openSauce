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
# SCHEMA DUMP FOR TABLE: field_favicon
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_favicon` (
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
# SCHEMA DUMP FOR TABLE: field_home_page_images
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_home_page_images` (
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
# SCHEMA DUMP FOR TABLE: field_home_page_text
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_home_page_text` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `count` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(1)),
  KEY `count` (`count`, `pages_id`),
  KEY `parent_id` (`parent_id`, `pages_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: field_home_page_text_title
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_home_page_text_title` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: field_logo
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_logo` (
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
# SCHEMA DUMP FOR TABLE: field_phits
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_phits` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(10) unsigned DEFAULT 0,
  `last_hit` datetime DEFAULT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;

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
# SCHEMA DUMP FOR TABLE: field_slider_images
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_slider_images` (
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
# SCHEMA DUMP FOR TABLE: field_standart_images
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_standart_images` (
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
# SCHEMA DUMP FOR TABLE: field_standart_text
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_standart_text` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: field_textbox
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_textbox` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: field_textt
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_textt` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
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
# SCHEMA DUMP FOR TABLE: field_zitat
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_zitat` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: field_zitat_end
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_zitat_end` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data` (`data`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: field_zitat_name
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_zitat_name` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
  FULLTEXT KEY `data` (`data`)
) ENGINE = MyISAM DEFAULT CHARSET = utf8;

# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: field_zitat_text
# ------------------------------------------------------------

CREATE TABLE IF NOT EXISTS `field_zitat_text` (
  `pages_id` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`pages_id`),
  KEY `data_exact` (`data`(250)),
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
) ENGINE = MyISAM AUTO_INCREMENT = 100 DEFAULT CHARSET = utf8;

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
) ENGINE = MyISAM AUTO_INCREMENT = 118 DEFAULT CHARSET = utf8;

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
) ENGINE = MyISAM AUTO_INCREMENT = 175 DEFAULT CHARSET = utf8;

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
) ENGINE = MyISAM AUTO_INCREMENT = 1034 DEFAULT CHARSET = utf8;

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
) ENGINE = MyISAM AUTO_INCREMENT = 46 DEFAULT CHARSET = utf8;

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
    'Modules.info',
    '{\"148\":{\"name\":\"AdminThemeDefault\",\"title\":\"Default\",\"version\":14,\"autoload\":\"template=admin\",\"created\":1650459967,\"configurable\":19,\"namespace\":\"ProcessWire\\\\\"},\"160\":{\"name\":\"AdminThemeUikit\",\"title\":\"Uikit\",\"version\":33,\"autoload\":\"template=admin\",\"created\":1650459986,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\"},\"97\":{\"name\":\"FieldtypeCheckbox\",\"title\":\"Checkbox\",\"version\":101,\"singular\":1,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"28\":{\"name\":\"FieldtypeDatetime\",\"title\":\"Datetime\",\"version\":105,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"29\":{\"name\":\"FieldtypeEmail\",\"title\":\"E-Mail\",\"version\":101,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"106\":{\"name\":\"FieldtypeFieldsetClose\",\"title\":\"Fieldset (Close)\",\"version\":100,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"105\":{\"name\":\"FieldtypeFieldsetOpen\",\"title\":\"Fieldset (Open)\",\"version\":101,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"107\":{\"name\":\"FieldtypeFieldsetTabOpen\",\"title\":\"Fieldset in Tab (Open)\",\"version\":100,\"singular\":1,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"6\":{\"name\":\"FieldtypeFile\",\"title\":\"Files\",\"version\":107,\"created\":1650459967,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"89\":{\"name\":\"FieldtypeFloat\",\"title\":\"Float\",\"version\":106,\"singular\":1,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"57\":{\"name\":\"FieldtypeImage\",\"title\":\"Images\",\"version\":102,\"created\":1650459967,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"84\":{\"name\":\"FieldtypeInteger\",\"title\":\"Integer\",\"version\":102,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"27\":{\"name\":\"FieldtypeModule\",\"title\":\"Module Reference\",\"version\":101,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"4\":{\"name\":\"FieldtypePage\",\"title\":\"Page Reference\",\"version\":106,\"autoload\":true,\"singular\":true,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"111\":{\"name\":\"FieldtypePageTitle\",\"title\":\"Page Title\",\"version\":100,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"133\":{\"name\":\"FieldtypePassword\",\"title\":\"Password\",\"version\":101,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"172\":{\"name\":\"FieldtypeRepeater\",\"title\":\"Repeater\",\"version\":107,\"installs\":[\"InputfieldRepeater\"],\"autoload\":true,\"singular\":true,\"created\":1652873342,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"},\"174\":{\"name\":\"FieldtypeFieldsetPage\",\"title\":\"Fieldset (Page)\",\"version\":1,\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"autoload\":true,\"singular\":true,\"created\":1652873359,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"},\"173\":{\"name\":\"InputfieldRepeater\",\"title\":\"Repeater\",\"version\":107,\"requiresVersions\":{\"FieldtypeRepeater\":[\">=\",0]},\"created\":1652873342,\"namespace\":\"ProcessWire\\\\\"},\"3\":{\"name\":\"FieldtypeText\",\"title\":\"Text\",\"version\":102,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"1\":{\"name\":\"FieldtypeTextarea\",\"title\":\"Textarea\",\"version\":107,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"135\":{\"name\":\"FieldtypeURL\",\"title\":\"URL\",\"version\":101,\"singular\":1,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"25\":{\"name\":\"InputfieldAsmSelect\",\"title\":\"asmSelect\",\"version\":202,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"131\":{\"name\":\"InputfieldButton\",\"title\":\"Button\",\"version\":100,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"37\":{\"name\":\"InputfieldCheckbox\",\"title\":\"Checkbox\",\"version\":106,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"38\":{\"name\":\"InputfieldCheckboxes\",\"title\":\"Checkboxes\",\"version\":108,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"155\":{\"name\":\"InputfieldCKEditor\",\"title\":\"CKEditor\",\"version\":168,\"installs\":[\"MarkupHTMLPurifier\"],\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"94\":{\"name\":\"InputfieldDatetime\",\"title\":\"Datetime\",\"version\":107,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"80\":{\"name\":\"InputfieldEmail\",\"title\":\"Email\",\"version\":101,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"78\":{\"name\":\"InputfieldFieldset\",\"title\":\"Fieldset\",\"version\":101,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"55\":{\"name\":\"InputfieldFile\",\"title\":\"Files\",\"version\":126,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"90\":{\"name\":\"InputfieldFloat\",\"title\":\"Float\",\"version\":104,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"30\":{\"name\":\"InputfieldForm\",\"title\":\"Form\",\"version\":107,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"40\":{\"name\":\"InputfieldHidden\",\"title\":\"Hidden\",\"version\":101,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"162\":{\"name\":\"InputfieldIcon\",\"title\":\"Icon\",\"version\":3,\"created\":1650459990,\"namespace\":\"ProcessWire\\\\\"},\"56\":{\"name\":\"InputfieldImage\",\"title\":\"Images\",\"version\":124,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"85\":{\"name\":\"InputfieldInteger\",\"title\":\"Integer\",\"version\":105,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"79\":{\"name\":\"InputfieldMarkup\",\"title\":\"Markup\",\"version\":102,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"41\":{\"name\":\"InputfieldName\",\"title\":\"Name\",\"version\":100,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"60\":{\"name\":\"InputfieldPage\",\"title\":\"Page\",\"version\":107,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"15\":{\"name\":\"InputfieldPageListSelect\",\"title\":\"Page List Select\",\"version\":101,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"137\":{\"name\":\"InputfieldPageListSelectMultiple\",\"title\":\"Page List Select Multiple\",\"version\":102,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"86\":{\"name\":\"InputfieldPageName\",\"title\":\"Page Name\",\"version\":106,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"112\":{\"name\":\"InputfieldPageTitle\",\"title\":\"Page Title\",\"version\":102,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"122\":{\"name\":\"InputfieldPassword\",\"title\":\"Password\",\"version\":102,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"39\":{\"name\":\"InputfieldRadios\",\"title\":\"Radio Buttons\",\"version\":106,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"36\":{\"name\":\"InputfieldSelect\",\"title\":\"Select\",\"version\":102,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"43\":{\"name\":\"InputfieldSelectMultiple\",\"title\":\"Select Multiple\",\"version\":101,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"149\":{\"name\":\"InputfieldSelector\",\"title\":\"Selector\",\"version\":28,\"autoload\":\"template=admin\",\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"addFlag\":32},\"32\":{\"name\":\"InputfieldSubmit\",\"title\":\"Submit\",\"version\":103,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"34\":{\"name\":\"InputfieldText\",\"title\":\"Text\",\"version\":106,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"35\":{\"name\":\"InputfieldTextarea\",\"title\":\"Textarea\",\"version\":103,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"163\":{\"name\":\"InputfieldTextTags\",\"title\":\"Text Tags\",\"version\":5,\"icon\":\"tags\",\"created\":1651666701,\"namespace\":\"ProcessWire\\\\\"},\"164\":{\"name\":\"InputfieldToggle\",\"title\":\"Toggle\",\"version\":1,\"created\":1651669260,\"namespace\":\"ProcessWire\\\\\"},\"108\":{\"name\":\"InputfieldURL\",\"title\":\"URL\",\"version\":102,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"116\":{\"name\":\"JqueryCore\",\"title\":\"jQuery Core\",\"version\":183,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"151\":{\"name\":\"JqueryMagnific\",\"title\":\"jQuery Magnific Popup\",\"version\":1,\"singular\":1,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"103\":{\"name\":\"JqueryTableSorter\",\"title\":\"jQuery Table Sorter Plugin\",\"version\":221,\"singular\":1,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"117\":{\"name\":\"JqueryUI\",\"title\":\"jQuery UI\",\"version\":196,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"45\":{\"name\":\"JqueryWireTabs\",\"title\":\"jQuery Wire Tabs Plugin\",\"version\":110,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"67\":{\"name\":\"MarkupAdminDataTable\",\"title\":\"Admin Data Table\",\"version\":107,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"156\":{\"name\":\"MarkupHTMLPurifier\",\"title\":\"HTML Purifier\",\"version\":496,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"113\":{\"name\":\"MarkupPageArray\",\"title\":\"PageArray Markup\",\"version\":100,\"autoload\":true,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"98\":{\"name\":\"MarkupPagerNav\",\"title\":\"Pager (Pagination) Navigation\",\"version\":105,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"114\":{\"name\":\"PagePermissions\",\"title\":\"Page Permissions\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"115\":{\"name\":\"PageRender\",\"title\":\"Page Render\",\"version\":105,\"autoload\":true,\"singular\":true,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"48\":{\"name\":\"ProcessField\",\"title\":\"Fields\",\"version\":113,\"icon\":\"cube\",\"permission\":\"field-admin\",\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"87\":{\"name\":\"ProcessHome\",\"title\":\"Admin Home\",\"version\":101,\"permission\":\"page-view\",\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"76\":{\"name\":\"ProcessList\",\"title\":\"List\",\"version\":101,\"permission\":\"page-view\",\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"161\":{\"name\":\"ProcessLogger\",\"title\":\"Logs\",\"version\":2,\"icon\":\"tree\",\"permission\":\"logs-view\",\"singular\":1,\"created\":1650459990,\"namespace\":\"ProcessWire\\\\\",\"useNavJSON\":true},\"10\":{\"name\":\"ProcessLogin\",\"title\":\"Login\",\"version\":108,\"permission\":\"page-view\",\"created\":1650459967,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"50\":{\"name\":\"ProcessModule\",\"title\":\"Modules\",\"version\":119,\"permission\":\"module-admin\",\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"nav\":[{\"url\":\"?site#tab_site_modules\",\"label\":\"Site\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?site=1\"},{\"url\":\"?core#tab_core_modules\",\"label\":\"Core\",\"icon\":\"plug\",\"navJSON\":\"navJSON\\/?core=1\"},{\"url\":\"?configurable#tab_configurable_modules\",\"label\":\"Configure\",\"icon\":\"gear\",\"navJSON\":\"navJSON\\/?configurable=1\"},{\"url\":\"?install#tab_install_modules\",\"label\":\"Install\",\"icon\":\"sign-in\",\"navJSON\":\"navJSON\\/?install=1\"},{\"url\":\"?new#tab_new_modules\",\"label\":\"New\",\"icon\":\"plus\"},{\"url\":\"?reset=1\",\"label\":\"Refresh\",\"icon\":\"refresh\"}]},\"17\":{\"name\":\"ProcessPageAdd\",\"title\":\"Page Add\",\"version\":108,\"icon\":\"plus-circle\",\"permission\":\"page-edit\",\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"7\":{\"name\":\"ProcessPageEdit\",\"title\":\"Page Edit\",\"version\":110,\"icon\":\"edit\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"129\":{\"name\":\"ProcessPageEditImageSelect\",\"title\":\"Page Edit Image\",\"version\":120,\"permission\":\"page-edit\",\"singular\":1,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"121\":{\"name\":\"ProcessPageEditLink\",\"title\":\"Page Edit Link\",\"version\":109,\"icon\":\"link\",\"permission\":\"page-edit\",\"singular\":1,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"12\":{\"name\":\"ProcessPageList\",\"title\":\"Page List\",\"version\":123,\"icon\":\"sitemap\",\"permission\":\"page-edit\",\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"150\":{\"name\":\"ProcessPageLister\",\"title\":\"Lister\",\"version\":26,\"icon\":\"search\",\"permission\":\"page-lister\",\"created\":1650459967,\"configurable\":true,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"104\":{\"name\":\"ProcessPageSearch\",\"title\":\"Page Search\",\"version\":106,\"permission\":\"page-edit\",\"singular\":1,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"14\":{\"name\":\"ProcessPageSort\",\"title\":\"Page Sort and Move\",\"version\":100,\"permission\":\"page-edit\",\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"109\":{\"name\":\"ProcessPageTrash\",\"title\":\"Page Trash\",\"version\":103,\"singular\":1,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"134\":{\"name\":\"ProcessPageType\",\"title\":\"Page Type\",\"version\":101,\"singular\":1,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true,\"addFlag\":32},\"83\":{\"name\":\"ProcessPageView\",\"title\":\"Page View\",\"version\":104,\"permission\":\"page-view\",\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"136\":{\"name\":\"ProcessPermission\",\"title\":\"Permissions\",\"version\":101,\"icon\":\"gear\",\"permission\":\"permission-admin\",\"singular\":1,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"138\":{\"name\":\"ProcessProfile\",\"title\":\"User Profile\",\"version\":105,\"permission\":\"profile-edit\",\"singular\":1,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"159\":{\"name\":\"ProcessRecentPages\",\"title\":\"Recent Pages\",\"version\":2,\"icon\":\"clock-o\",\"permission\":\"page-edit-recent\",\"singular\":1,\"created\":1650459985,\"namespace\":\"ProcessWire\\\\\",\"useNavJSON\":true,\"nav\":[{\"url\":\"?edited=1\",\"label\":\"Edited\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?edited=1\"},{\"url\":\"?added=1\",\"label\":\"Created\",\"icon\":\"users\",\"navJSON\":\"navJSON\\/?added=1\"},{\"url\":\"?edited=1&me=1\",\"label\":\"Edited by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?edited=1&me=1\"},{\"url\":\"?added=1&me=1\",\"label\":\"Created by me\",\"icon\":\"user\",\"navJSON\":\"navJSON\\/?added=1&me=1\"},{\"url\":\"another\\/\",\"label\":\"Add another\",\"icon\":\"plus-circle\",\"navJSON\":\"anotherNavJSON\\/\"}]},\"68\":{\"name\":\"ProcessRole\",\"title\":\"Roles\",\"version\":104,\"icon\":\"gears\",\"permission\":\"role-admin\",\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"47\":{\"name\":\"ProcessTemplate\",\"title\":\"Templates\",\"version\":114,\"icon\":\"cubes\",\"permission\":\"template-admin\",\"created\":1650459967,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"66\":{\"name\":\"ProcessUser\",\"title\":\"Users\",\"version\":107,\"icon\":\"group\",\"permission\":\"user-admin\",\"created\":1650459967,\"configurable\":\"ProcessUserConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"permanent\":true,\"useNavJSON\":true},\"125\":{\"name\":\"SessionLoginThrottle\",\"title\":\"Session Login Throttle\",\"version\":103,\"autoload\":\"function\",\"singular\":true,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\"},\"139\":{\"name\":\"SystemUpdater\",\"title\":\"System Updater\",\"version\":19,\"singular\":true,\"created\":1650459967,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"permanent\":true},\"61\":{\"name\":\"TextformatterEntities\",\"title\":\"HTML Entity Encoder (htmlspecialchars)\",\"version\":100,\"created\":1650459967,\"namespace\":\"ProcessWire\\\\\"},\"169\":{\"name\":\"CookieManagementBanner\",\"title\":\"Cookie Management Banner\",\"version\":\"0.4.11\",\"requiresVersions\":{\"PHP\":[\">=\",\"5.4.4\"]},\"autoload\":true,\"singular\":true,\"created\":1652467836,\"configurable\":\"CookieManagementBanner.config.php\",\"namespace\":\"\\\\\"},\"165\":{\"name\":\"CroppableImage3\",\"title\":\"Croppable Image 3 (Wrapper-Module)\",\"version\":\"1.2.0\",\"icon\":\"crop\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.20\"],\"PHP\":[\">=\",\"5.3.8\"]},\"installs\":[\"FieldtypeCroppableImage3\"],\"created\":1652452093},\"166\":{\"name\":\"FieldtypeCroppableImage3\",\"title\":\"Croppable Image 3 (Fieldtype & Main-Module)\",\"version\":\"1.2.0\",\"icon\":\"crop\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.20\"],\"PHP\":[\">=\",\"5.3.8\"],\"CroppableImage3\":[\">=\",\"1.2.0\"]},\"installs\":[\"InputfieldCroppableImage3\",\"ProcessCroppableImage3\"],\"singular\":true,\"created\":1652452093,\"configurable\":true},\"167\":{\"name\":\"InputfieldCroppableImage3\",\"title\":\"Croppable Image 3 (Inputfield)\",\"version\":\"1.2.0\",\"icon\":\"crop\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.20\"],\"PHP\":[\">=\",\"5.3.8\"],\"FieldtypeCroppableImage3\":[\">=\",\"1.2.0\"]},\"created\":1652452093},\"168\":{\"name\":\"ProcessCroppableImage3\",\"title\":\"Croppable Images 3 (Process)\",\"version\":\"1.2.0\",\"icon\":\"crop\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.20\"],\"PHP\":[\">=\",\"5.3.8\"],\"FieldtypeCroppableImage3\":[\">=\",\"1.2.0\"]},\"permission\":\"croppable-image-3\",\"singular\":1,\"created\":1652452093},\"171\":{\"name\":\"FieldtypePageHitCounter\",\"title\":\"Page Hit Counter Selector Field\",\"version\":123,\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.80\"],\"PHP\":[\">=\",\"5.6\"],\"PageHitCounter\":[\">=\",0]},\"singular\":true,\"created\":1652872172},\"170\":{\"name\":\"PageHitCounter\",\"title\":\"Page Hit Counter\",\"version\":200,\"icon\":\"eye\",\"requiresVersions\":{\"ProcessWire\":[\">=\",\"3.0.80\"],\"PHP\":[\">=\",\"5.6\"]},\"installs\":[\"FieldtypePageHitCounter\"],\"autoload\":true,\"singular\":true,\"created\":1652872172,\"configurable\":true}}',
    '2010-04-08 03:10:01'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'Modules.site/modules/',
    'CookieManagementBanner/CookieManagementBanner.module.php\nCroppableImage3/CroppableImage3.module\nCroppableImage3/FieldtypeCroppableImage3/FieldtypeCroppableImage3.module\nCroppableImage3/InputfieldCroppableImage3/InputfieldCroppableImage3.module\nCroppableImage3/ProcessCroppableImage3/ProcessCroppableImage3.module\nHelloworld/Helloworld.module\nPageHitCounter/FieldtypePageHitCounter.module\nPageHitCounter/PageHitCounter.module',
    '2010-04-08 03:10:01'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'ModulesVerbose.info',
    '{\"148\":{\"summary\":\"Minimal admin theme that supports all ProcessWire features.\",\"core\":true,\"versionStr\":\"0.1.4\"},\"160\":{\"summary\":\"Uikit v3 admin theme\",\"core\":true,\"versionStr\":\"0.3.3\"},\"97\":{\"summary\":\"This Fieldtype stores an ON\\/OFF toggle via a single checkbox. The ON value is 1 and OFF value is 0.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"28\":{\"summary\":\"Field that stores a date and optionally time\",\"core\":true,\"versionStr\":\"1.0.5\"},\"29\":{\"summary\":\"Field that stores an e-mail address\",\"core\":true,\"versionStr\":\"1.0.1\"},\"106\":{\"summary\":\"Close a fieldset opened by FieldsetOpen. \",\"core\":true,\"versionStr\":\"1.0.0\"},\"105\":{\"summary\":\"Open a fieldset to group fields. Should be followed by a Fieldset (Close) after one or more fields.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"107\":{\"summary\":\"Open a fieldset to group fields. Same as Fieldset (Open) except that it displays in a tab instead.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"6\":{\"summary\":\"Field that stores one or more files\",\"core\":true,\"versionStr\":\"1.0.7\"},\"89\":{\"summary\":\"Field that stores a floating point number\",\"core\":true,\"versionStr\":\"1.0.6\"},\"57\":{\"summary\":\"Field that stores one or more GIF, JPG, or PNG images\",\"core\":true,\"versionStr\":\"1.0.2\"},\"84\":{\"summary\":\"Field that stores an integer\",\"core\":true,\"versionStr\":\"1.0.2\"},\"27\":{\"summary\":\"Field that stores a reference to another module\",\"core\":true,\"versionStr\":\"1.0.1\"},\"4\":{\"summary\":\"Field that stores one or more references to ProcessWire pages\",\"core\":true,\"versionStr\":\"1.0.6\"},\"111\":{\"summary\":\"Field that stores a page title\",\"core\":true,\"versionStr\":\"1.0.0\"},\"133\":{\"summary\":\"Field that stores a hashed and salted password\",\"core\":true,\"versionStr\":\"1.0.1\"},\"172\":{\"summary\":\"Maintains a collection of fields that are repeated for any number of times.\",\"core\":true,\"versionStr\":\"1.0.7\"},\"174\":{\"summary\":\"Fieldset with fields isolated to separate namespace (page), enabling re-use of fields.\",\"core\":true,\"versionStr\":\"0.0.1\"},\"173\":{\"summary\":\"Repeats fields from another template. Provides the input for FieldtypeRepeater.\",\"core\":true,\"versionStr\":\"1.0.7\"},\"3\":{\"summary\":\"Field that stores a single line of text\",\"core\":true,\"versionStr\":\"1.0.2\"},\"1\":{\"summary\":\"Field that stores multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.7\"},\"135\":{\"summary\":\"Field that stores a URL\",\"core\":true,\"versionStr\":\"1.0.1\"},\"25\":{\"summary\":\"Multiple selection, progressive enhancement to select multiple\",\"core\":true,\"versionStr\":\"2.0.2\"},\"131\":{\"summary\":\"Form button element that you can optionally pass an href attribute to.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"37\":{\"summary\":\"Single checkbox toggle\",\"core\":true,\"versionStr\":\"1.0.6\"},\"38\":{\"summary\":\"Multiple checkbox toggles\",\"core\":true,\"versionStr\":\"1.0.8\"},\"155\":{\"summary\":\"CKEditor textarea rich text editor.\",\"core\":true,\"versionStr\":\"1.6.8\"},\"94\":{\"summary\":\"Inputfield that accepts date and optionally time\",\"core\":true,\"versionStr\":\"1.0.7\"},\"80\":{\"summary\":\"E-Mail address in valid format\",\"core\":true,\"versionStr\":\"1.0.1\"},\"78\":{\"summary\":\"Groups one or more fields together in a container\",\"core\":true,\"versionStr\":\"1.0.1\"},\"55\":{\"summary\":\"One or more file uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.6\"},\"90\":{\"summary\":\"Floating point number with precision\",\"core\":true,\"versionStr\":\"1.0.4\"},\"30\":{\"summary\":\"Contains one or more fields in a form\",\"core\":true,\"versionStr\":\"1.0.7\"},\"40\":{\"summary\":\"Hidden value in a form\",\"core\":true,\"versionStr\":\"1.0.1\"},\"162\":{\"summary\":\"Select an icon\",\"core\":true,\"versionStr\":\"0.0.3\"},\"56\":{\"summary\":\"One or more image uploads (sortable)\",\"core\":true,\"versionStr\":\"1.2.4\"},\"85\":{\"summary\":\"Integer (positive or negative)\",\"core\":true,\"versionStr\":\"1.0.5\"},\"79\":{\"summary\":\"Contains any other markup and optionally child Inputfields\",\"core\":true,\"versionStr\":\"1.0.2\"},\"41\":{\"summary\":\"Text input validated as a ProcessWire name field\",\"core\":true,\"versionStr\":\"1.0.0\"},\"60\":{\"summary\":\"Select one or more pages\",\"core\":true,\"versionStr\":\"1.0.7\"},\"15\":{\"summary\":\"Selection of a single page from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"137\":{\"summary\":\"Selection of multiple pages from a ProcessWire page tree list\",\"core\":true,\"versionStr\":\"1.0.2\"},\"86\":{\"summary\":\"Text input validated as a ProcessWire Page name field\",\"core\":true,\"versionStr\":\"1.0.6\"},\"112\":{\"summary\":\"Handles input of Page Title and auto-generation of Page Name (when name is blank)\",\"core\":true,\"versionStr\":\"1.0.2\"},\"122\":{\"summary\":\"Password input with confirmation field that doesn&#039;t ever echo the input back.\",\"core\":true,\"versionStr\":\"1.0.2\"},\"39\":{\"summary\":\"Radio buttons for selection of a single item\",\"core\":true,\"versionStr\":\"1.0.6\"},\"36\":{\"summary\":\"Selection of a single value from a select pulldown\",\"core\":true,\"versionStr\":\"1.0.2\"},\"43\":{\"summary\":\"Select multiple items from a list\",\"core\":true,\"versionStr\":\"1.0.1\"},\"149\":{\"summary\":\"Build a page finding selector visually.\",\"author\":\"Avoine + ProcessWire\",\"core\":true,\"versionStr\":\"0.2.8\"},\"32\":{\"summary\":\"Form submit button\",\"core\":true,\"versionStr\":\"1.0.3\"},\"34\":{\"summary\":\"Single line of text\",\"core\":true,\"versionStr\":\"1.0.6\"},\"35\":{\"summary\":\"Multiple lines of text\",\"core\":true,\"versionStr\":\"1.0.3\"},\"163\":{\"summary\":\"Enables input of user entered tags or selection of predefined tags.\",\"core\":true,\"versionStr\":\"0.0.5\"},\"164\":{\"summary\":\"A toggle providing similar input capability to a checkbox but much more configurable.\",\"core\":true,\"versionStr\":\"0.0.1\"},\"108\":{\"summary\":\"URL in valid format\",\"core\":true,\"versionStr\":\"1.0.2\"},\"116\":{\"summary\":\"jQuery Core as required by ProcessWire Admin and plugins\",\"href\":\"http:\\/\\/jquery.com\",\"core\":true,\"versionStr\":\"1.8.3\"},\"151\":{\"summary\":\"Provides lightbox capability for image galleries. Replacement for FancyBox. Uses Magnific Popup by @dimsemenov.\",\"href\":\"http:\\/\\/dimsemenov.com\\/plugins\\/magnific-popup\\/\",\"core\":true,\"versionStr\":\"0.0.1\"},\"103\":{\"summary\":\"Provides a jQuery plugin for sorting tables.\",\"href\":\"http:\\/\\/mottie.github.io\\/tablesorter\\/\",\"core\":true,\"versionStr\":\"2.2.1\"},\"117\":{\"summary\":\"jQuery UI as required by ProcessWire and plugins\",\"href\":\"http:\\/\\/ui.jquery.com\",\"core\":true,\"versionStr\":\"1.9.6\"},\"45\":{\"summary\":\"Provides a jQuery plugin for generating tabs in ProcessWire.\",\"core\":true,\"versionStr\":\"1.1.0\"},\"67\":{\"summary\":\"Generates markup for data tables used by ProcessWire admin\",\"core\":true,\"versionStr\":\"1.0.7\"},\"156\":{\"summary\":\"Front-end to the HTML Purifier library.\",\"core\":true,\"versionStr\":\"4.9.6\"},\"113\":{\"summary\":\"Adds renderPager() method to all PaginatedArray types, for easy pagination output. Plus a render() method to PageArray instances.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"98\":{\"summary\":\"Generates markup for pagination navigation\",\"core\":true,\"versionStr\":\"1.0.5\"},\"114\":{\"summary\":\"Adds various permission methods to Page objects that are used by Process modules.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"115\":{\"summary\":\"Adds a render method to Page and caches page output.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"48\":{\"summary\":\"Edit individual fields that hold page data\",\"core\":true,\"versionStr\":\"1.1.3\",\"searchable\":\"fields\"},\"87\":{\"summary\":\"Acts as a placeholder Process for the admin root. Ensures proper flow control after login.\",\"core\":true,\"versionStr\":\"1.0.1\"},\"76\":{\"summary\":\"Lists the Process assigned to each child page of the current\",\"core\":true,\"versionStr\":\"1.0.1\"},\"161\":{\"summary\":\"View and manage system logs.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"logs-view\":\"Can view system logs\",\"logs-edit\":\"Can manage system logs\"},\"page\":{\"name\":\"logs\",\"parent\":\"setup\",\"title\":\"Logs\"}},\"10\":{\"summary\":\"Login to ProcessWire\",\"core\":true,\"versionStr\":\"1.0.8\"},\"50\":{\"summary\":\"List, edit or install\\/uninstall modules\",\"core\":true,\"versionStr\":\"1.1.9\"},\"17\":{\"summary\":\"Add a new page\",\"core\":true,\"versionStr\":\"1.0.8\"},\"7\":{\"summary\":\"Edit a Page\",\"core\":true,\"versionStr\":\"1.1.0\"},\"129\":{\"summary\":\"Provides image manipulation functions for image fields and rich text editors.\",\"core\":true,\"versionStr\":\"1.2.0\"},\"121\":{\"summary\":\"Provides a link capability as used by some Fieldtype modules (like rich text editors).\",\"core\":true,\"versionStr\":\"1.0.9\"},\"12\":{\"summary\":\"List pages in a hierarchical tree structure\",\"core\":true,\"versionStr\":\"1.2.3\"},\"150\":{\"summary\":\"Admin tool for finding and listing pages by any property.\",\"author\":\"Ryan Cramer\",\"core\":true,\"versionStr\":\"0.2.6\",\"permissions\":{\"page-lister\":\"Use Page Lister\"}},\"104\":{\"summary\":\"Provides a page search engine for admin use.\",\"core\":true,\"versionStr\":\"1.0.6\"},\"14\":{\"summary\":\"Handles page sorting and moving for PageList\",\"core\":true,\"versionStr\":\"1.0.0\"},\"109\":{\"summary\":\"Handles emptying of Page trash\",\"core\":true,\"versionStr\":\"1.0.3\"},\"134\":{\"summary\":\"List, Edit and Add pages of a specific type\",\"core\":true,\"versionStr\":\"1.0.1\"},\"83\":{\"summary\":\"All page views are routed through this Process\",\"core\":true,\"versionStr\":\"1.0.4\"},\"136\":{\"summary\":\"Manage system permissions\",\"core\":true,\"versionStr\":\"1.0.1\"},\"138\":{\"summary\":\"Enables user to change their password, email address and other settings that you define.\",\"core\":true,\"versionStr\":\"1.0.5\"},\"159\":{\"summary\":\"Shows a list of recently edited pages in your admin.\",\"author\":\"Ryan Cramer\",\"href\":\"http:\\/\\/modules.processwire.com\\/\",\"core\":true,\"versionStr\":\"0.0.2\",\"permissions\":{\"page-edit-recent\":\"Can see recently edited pages\"},\"page\":{\"name\":\"recent-pages\",\"parent\":\"page\",\"title\":\"Recent\"}},\"68\":{\"summary\":\"Manage user roles and what permissions are attached\",\"core\":true,\"versionStr\":\"1.0.4\"},\"47\":{\"summary\":\"List and edit the templates that control page output\",\"core\":true,\"versionStr\":\"1.1.4\",\"searchable\":\"templates\"},\"66\":{\"summary\":\"Manage system users\",\"core\":true,\"versionStr\":\"1.0.7\",\"searchable\":\"users\"},\"125\":{\"summary\":\"Throttles login attempts to help prevent dictionary attacks.\",\"core\":true,\"versionStr\":\"1.0.3\"},\"139\":{\"summary\":\"Manages system versions and upgrades.\",\"core\":true,\"versionStr\":\"0.1.9\"},\"61\":{\"summary\":\"Entity encode ampersands, quotes (single and double) and greater-than\\/less-than signs using htmlspecialchars(str, ENT_QUOTES). It is recommended that you use this on all text\\/textarea fields except those using a rich text editor or a markup language like Markdown.\",\"core\":true,\"versionStr\":\"1.0.0\"},\"169\":{\"summary\":\"Cookie management banner allows users to manage tracking cookies.\",\"author\":\"Adrian Jones, Oliver Walker, David Miller, and Roland Toth\",\"href\":\"https:\\/\\/processwire.com\\/talk\\/topic\\/19525-cookie-management-banner\\/\",\"versionStr\":\"0.4.11\"},\"165\":{\"summary\":\"One or more image uploads (optional predefined crops)\",\"author\":\"Horst Nogajski\",\"versionStr\":\"1.2.0\"},\"166\":{\"summary\":\"One or more image uploads (optional predefined crops)\",\"author\":\"Horst Nogajski\",\"versionStr\":\"1.2.0\"},\"167\":{\"summary\":\"One or more image uploads (optional predefined crops)\",\"author\":\"Horst Nogajski\",\"versionStr\":\"1.2.0\"},\"168\":{\"summary\":\"One or more image uploads (optional predefined crops)\",\"author\":\"Horst Nogajski\",\"versionStr\":\"1.2.0\",\"permissions\":{\"croppable-image-3\":\"Crop images with CroppableImage3\"}},\"171\":{\"summary\":\"This field is needed to provide page views as selector for sorting.\",\"author\":\"David Karich - flipzoom; Media\",\"href\":\"https:\\/\\/github.com\\/FlipZoomMedia\\/PageHitCounter\",\"versionStr\":\"1.2.3\"},\"170\":{\"summary\":\"The Page Hit Counter module implements a simple page view counter. Page views of visitors are automatically tracked on defined templates, with monitoring of multiple page views. Even if the page is cached. Also works with ProCache and AdBlockers. With a lightweight tracking code of 320 bytes (gzipped). In addition GDPR compliant, since no personal data or IP addresses are stored. Only session cookies are stored without information.\",\"author\":\"David Karich - flipzoom; Media\",\"href\":\"https:\\/\\/github.com\\/FlipZoomMedia\\/PageHitCounter\",\"versionStr\":\"2.0.0\"}}',
    '2010-04-08 03:10:01'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'Permissions.names',
    '{\"croppable-image-3\":1027,\"logs-edit\":1014,\"logs-view\":1013,\"page-delete\":34,\"page-edit\":32,\"page-edit-recent\":1011,\"page-lister\":1006,\"page-lock\":54,\"page-move\":35,\"page-sort\":50,\"page-template\":51,\"page-view\":36,\"profile-edit\":53,\"user-admin\":52}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__fe863f23f9d67d9a038194e074bebba7',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/templates\\/admin.php\",\"hash\":\"cee113a4886ecac536c1a277d093096a\",\"size\":495,\"time\":1653125056,\"ns\":\"ProcessWire\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/admin.php\",\"hash\":\"cee113a4886ecac536c1a277d093096a\",\"size\":495,\"time\":1653125056}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__a00a54d9a295494ebe10b695958f576b',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/templates\\/home.php\",\"hash\":\"df3159bfcf0f3c5b1e61f596c31ba6bb\",\"size\":4528,\"time\":1654085007,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/home.php\",\"hash\":\"7dee1bd3147985345539adfde5fb5c36\",\"size\":4872,\"time\":1654085007}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__6abee2988f5d12d0c13b7e051f679567',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/templates\\/basic-page.php\",\"hash\":\"fb79671cafab6de9df0e466ae2e41ceb\",\"size\":2089,\"time\":1653468655,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/basic-page.php\",\"hash\":\"08158390c945709dc4ae58aab279a11b\",\"size\":2433,\"time\":1653468655}}',
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
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/templates\\/home.php\",\"hash\":\"da5ffe11d85a0778982ab6b8a0b29f77\",\"size\":7611,\"time\":1652640914,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/home.php\",\"hash\":\"da5ffe11d85a0778982ab6b8a0b29f77\",\"size\":7611,\"time\":1652640914}}',
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
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__a29f28c3f17628c6fbcb2284e78acb1d',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/templates\\/basic-page.php\",\"hash\":\"424b15c1ccd9bfa80964eb7b8d634305\",\"size\":5761,\"time\":1652480175,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/basic-page.php\",\"hash\":\"424b15c1ccd9bfa80964eb7b8d634305\",\"size\":5761,\"time\":1652480175}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__bf1b8bf2c1ecded0d4530382aff204af',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/modules\\/CookieManagementBanner\\/CookieManagementBanner.module.php\",\"hash\":\"39c9349254a720c1b63c8148b1bfb1cd\",\"size\":8425,\"time\":1571779843,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/CookieManagementBanner\\/CookieManagementBanner.module.php\",\"hash\":\"b073d80fcbd0abb510ea7ec5256078ba\",\"size\":8636,\"time\":1571779843}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__ba96a44fad60337733eb8df9ef815c4e',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/modules\\/CookieManagementBanner\\/CookieManagementBanner.config.php\",\"hash\":\"151fdb367f4344b67e2af10091678bca\",\"size\":10722,\"time\":1652474392,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/CookieManagementBanner\\/CookieManagementBanner.config.php\",\"hash\":\"c00988a72e2ba5e67e1b932e8a2985e3\",\"size\":11398,\"time\":1652474392}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__a3dbb5a31d30effdb706370dcc696d0c',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/modules\\/CookieManagementBanner\\/wrapper.tpl.php\",\"hash\":\"668d3633003ba7ff4876ff58018b029e\",\"size\":424,\"time\":1652475486,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/CookieManagementBanner\\/wrapper.tpl.php\",\"hash\":\"9e6cb45871ce2a478af2b4d0e6740f31\",\"size\":787,\"time\":1652475486}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__32e5cdb9a2fa672e621957ff51b81067',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/modules\\/CookieManagementBanner\\/notice.tpl.php\",\"hash\":\"cfcfe1e430a271e7c1271692a1a8abf4\",\"size\":978,\"time\":1571779843,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/CookieManagementBanner\\/notice.tpl.php\",\"hash\":\"cfcfe1e430a271e7c1271692a1a8abf4\",\"size\":978,\"time\":1571779843}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__df3a248a2c2a0494eca1fdf0c263d899',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/modules\\/CookieManagementBanner\\/manage.tpl.php\",\"hash\":\"316db92edd67d11458902df627ffa567\",\"size\":1583,\"time\":1571779843,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/CookieManagementBanner\\/manage.tpl.php\",\"hash\":\"316db92edd67d11458902df627ffa567\",\"size\":1583,\"time\":1571779843}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__6c013a952b10766840aee2090f4134df',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/modules\\/CookieManagementBanner\\/message.tpl.php\",\"hash\":\"89d82e42229a4942497dd1f9127eed71\",\"size\":197,\"time\":1571779843,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/CookieManagementBanner\\/message.tpl.php\",\"hash\":\"89d82e42229a4942497dd1f9127eed71\",\"size\":197,\"time\":1571779843}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__4913147065d159d17687ec97952fffaa',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/templates\\/footer.php\",\"hash\":\"63d2bf39557d18425c6d34e7f608e609\",\"size\":436,\"time\":1652638185,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/opensauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/footer.php\",\"hash\":\"63d2bf39557d18425c6d34e7f608e609\",\"size\":436,\"time\":1652638185}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__cece63e89cd0bb652d54c6dc36a2e4e0',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/modules\\/CookieManagementBanner\\/CookieManagementBanner.module.php\",\"hash\":\"f63198f056ad98b73e2e8c284b85b20e\",\"size\":8627,\"time\":1652672862,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/CookieManagementBanner\\/CookieManagementBanner.module.php\",\"hash\":\"d73c382d0345e10cb9c791bd2da416af\",\"size\":8838,\"time\":1652672862}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__86f2d40e9d76770add48e201b6cb2111',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/modules\\/CookieManagementBanner\\/CookieManagementBanner.config.php\",\"hash\":\"81d9c948dfd452ccf8a9d20991151e41\",\"size\":10952,\"time\":1652672862,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/CookieManagementBanner\\/CookieManagementBanner.config.php\",\"hash\":\"2398b3a1e5b4ebe541119053b4c8ae95\",\"size\":11628,\"time\":1652672862}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__a2b2288eff974fe220e09287ac412e14',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/modules\\/CookieManagementBanner\\/wrapper.tpl.php\",\"hash\":\"45b00d17cc55edb375aebfe97c77e0e8\",\"size\":432,\"time\":1652672862,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/CookieManagementBanner\\/wrapper.tpl.php\",\"hash\":\"df45c53b5f73e2feafda1fbe125d3b70\",\"size\":795,\"time\":1652672862}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__84e11003bf81a4a92bace5332cd68011',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/modules\\/CookieManagementBanner\\/notice.tpl.php\",\"hash\":\"03bd17d480a15abd68d6d63eb3bf1735\",\"size\":997,\"time\":1652672862,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/CookieManagementBanner\\/notice.tpl.php\",\"hash\":\"03bd17d480a15abd68d6d63eb3bf1735\",\"size\":997,\"time\":1652672862}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__aafa758a03b0b7c109ed431dcbe51153',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/modules\\/CookieManagementBanner\\/manage.tpl.php\",\"hash\":\"02d8eaa4716acb63c9538b6d9328dda1\",\"size\":1608,\"time\":1652672862,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/CookieManagementBanner\\/manage.tpl.php\",\"hash\":\"02d8eaa4716acb63c9538b6d9328dda1\",\"size\":1608,\"time\":1652672862}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__79f6f3a418a66977736e7d8236b8af9a',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/modules\\/CookieManagementBanner\\/message.tpl.php\",\"hash\":\"a7763e187c61eae1a67fb0a831c56860\",\"size\":202,\"time\":1652672862,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/modules\\/CookieManagementBanner\\/message.tpl.php\",\"hash\":\"a7763e187c61eae1a67fb0a831c56860\",\"size\":202,\"time\":1652672862}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'ModulesUninstalled.info',
    '{\"AdminThemeReno\":{\"name\":\"AdminThemeReno\",\"title\":\"Reno\",\"version\":17,\"versionStr\":\"0.1.7\",\"author\":\"Tom Reno (Renobird)\",\"summary\":\"Admin theme for ProcessWire 2.5+ by Tom Reno (Renobird)\",\"requiresVersions\":{\"AdminThemeDefault\":[\">=\",0]},\"autoload\":\"template=admin\",\"created\":1653125056,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeCache\":{\"name\":\"FieldtypeCache\",\"title\":\"Cache\",\"version\":102,\"versionStr\":\"1.0.2\",\"summary\":\"Caches the values of other fields for fewer runtime queries. Can also be used to combine multiple text fields and have them all be searchable under the cached field name.\",\"created\":1653125056,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"CommentFilterAkismet\":{\"name\":\"CommentFilterAkismet\",\"title\":\"Comment Filter: Akismet\",\"version\":200,\"versionStr\":\"2.0.0\",\"summary\":\"Uses the Akismet service to identify comment spam. Module plugin for the Comments Fieldtype.\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1653125056,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeComments\":{\"name\":\"FieldtypeComments\",\"title\":\"Comments\",\"version\":109,\"versionStr\":\"1.0.9\",\"summary\":\"Field that stores user posted comments for a single Page\",\"installs\":[\"InputfieldCommentsAdmin\"],\"created\":1653125056,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldCommentsAdmin\":{\"name\":\"InputfieldCommentsAdmin\",\"title\":\"Comments Admin\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides an administrative interface for working with comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"created\":1653125056,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeDecimal\":{\"name\":\"FieldtypeDecimal\",\"title\":\"Decimal\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Field that stores a decimal number\",\"created\":1653125056,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeOptions\":{\"name\":\"FieldtypeOptions\",\"title\":\"Select Options\",\"version\":2,\"versionStr\":\"0.0.2\",\"summary\":\"Field that stores single and multi select options.\",\"created\":1653125056,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypePageTable\":{\"name\":\"FieldtypePageTable\",\"title\":\"ProFields: Page Table\",\"version\":8,\"versionStr\":\"0.0.8\",\"summary\":\"A fieldtype containing a group of editable pages.\",\"installs\":[\"InputfieldPageTable\"],\"autoload\":true,\"created\":1653125056,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeSelector\":{\"name\":\"FieldtypeSelector\",\"title\":\"Selector\",\"version\":13,\"versionStr\":\"0.1.3\",\"author\":\"Avoine + ProcessWire\",\"summary\":\"Build a page finding selector visually.\",\"created\":1653125056,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeToggle\":{\"name\":\"FieldtypeToggle\",\"title\":\"Toggle (Yes\\/No)\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Configurable yes\\/no, on\\/off toggle alternative to a checkbox, plus optional \\u201cother\\u201d option.\",\"requiresVersions\":{\"InputfieldToggle\":[\">=\",0]},\"created\":1653125056,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FileCompilerTags\":{\"name\":\"FileCompilerTags\",\"title\":\"Tags File Compiler\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables {var} or {var.property} variables in markup sections of a file. Can be used with any API variable.\",\"created\":1653125056,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ImageSizerEngineAnimatedGif\":{\"name\":\"ImageSizerEngineAnimatedGif\",\"title\":\"Animated GIF Image Sizer\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations for animated GIFs.\",\"created\":1653125056,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ImageSizerEngineIMagick\":{\"name\":\"ImageSizerEngineIMagick\",\"title\":\"IMagick Image Sizer\",\"version\":3,\"versionStr\":\"0.0.3\",\"author\":\"Horst Nogajski\",\"summary\":\"Upgrades image manipulations to use PHP\'s ImageMagick library when possible.\",\"created\":1653125056,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldPageAutocomplete\":{\"name\":\"InputfieldPageAutocomplete\",\"title\":\"Page Auto Complete\",\"version\":112,\"versionStr\":\"1.1.2\",\"summary\":\"Multiple Page selection using auto completion and sorting capability. Intended for use as an input field for Page reference fields.\",\"created\":1653125057,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"InputfieldPageTable\":{\"name\":\"InputfieldPageTable\",\"title\":\"ProFields: Page Table\",\"version\":14,\"versionStr\":\"0.1.4\",\"summary\":\"Inputfield to accompany FieldtypePageTable\",\"requiresVersions\":{\"FieldtypePageTable\":[\">=\",0]},\"created\":1653125057,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypePageTitleLanguage\":{\"name\":\"FieldtypePageTitleLanguage\",\"title\":\"Page Title (Multi-Language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Field that stores a page title in multiple languages. Use this only if you want title inputs created for ALL languages on ALL pages. Otherwise create separate languaged-named title fields, i.e. title_fr, title_es, title_fi, etc. \",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0],\"FieldtypeTextLanguage\":[\">=\",0]},\"created\":1653125057,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeTextareaLanguage\":{\"name\":\"FieldtypeTextareaLanguage\",\"title\":\"Textarea (Multi-language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Field that stores a multiple lines of text in multiple languages\",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"created\":1653125057,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeTextLanguage\":{\"name\":\"FieldtypeTextLanguage\",\"title\":\"Text (Multi-language)\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Field that stores a single line of text in multiple languages\",\"requiresVersions\":{\"LanguageSupportFields\":[\">=\",0]},\"created\":1653125057,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageSupport\":{\"name\":\"LanguageSupport\",\"title\":\"Languages Support\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"ProcessWire multi-language support.\",\"installs\":[\"ProcessLanguage\",\"ProcessLanguageTranslator\"],\"autoload\":true,\"singular\":true,\"created\":1653125057,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"addFlag\":32},\"LanguageSupportFields\":{\"name\":\"LanguageSupportFields\",\"title\":\"Languages Support - Fields\",\"version\":101,\"versionStr\":\"1.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Required to use multi-language fields.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"installs\":[\"FieldtypePageTitleLanguage\",\"FieldtypeTextareaLanguage\",\"FieldtypeTextLanguage\"],\"autoload\":true,\"singular\":true,\"created\":1653125057,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageSupportPageNames\":{\"name\":\"LanguageSupportPageNames\",\"title\":\"Languages Support - Page Names\",\"version\":10,\"versionStr\":\"0.1.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Required to use multi-language page names.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0],\"LanguageSupportFields\":[\">=\",0]},\"autoload\":true,\"singular\":true,\"created\":1653125057,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LanguageTabs\":{\"name\":\"LanguageTabs\",\"title\":\"Languages Support - Tabs\",\"version\":115,\"versionStr\":\"1.1.5\",\"author\":\"adamspruijt, ryan\",\"summary\":\"Organizes multi-language fields into tabs for a cleaner easier to use interface.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"autoload\":\"template=admin\",\"singular\":true,\"created\":1653125057,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessLanguage\":{\"name\":\"ProcessLanguage\",\"title\":\"Languages\",\"version\":103,\"versionStr\":\"1.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage system languages\",\"icon\":\"language\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"permissions\":{\"lang-edit\":\"Administer languages and static translation files\"},\"created\":1653125057,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"useNavJSON\":true},\"ProcessLanguageTranslator\":{\"name\":\"ProcessLanguageTranslator\",\"title\":\"Language Translator\",\"version\":101,\"versionStr\":\"1.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Provides language translation capabilities for ProcessWire core and modules.\",\"requiresVersions\":{\"LanguageSupport\":[\">=\",0]},\"permission\":\"lang-edit\",\"created\":1653125057,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"LazyCron\":{\"name\":\"LazyCron\",\"title\":\"Lazy Cron\",\"version\":103,\"versionStr\":\"1.0.3\",\"summary\":\"Provides hooks that are automatically executed at various intervals. It is called \'lazy\' because it\'s triggered by a pageview, so the interval is guaranteed to be at least the time requested, rather than exactly the time requested. This is fine for most cases, but you can make it not lazy by connecting this to a real CRON job. See the module file for details. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/lazy-cron\\/\",\"autoload\":true,\"singular\":true,\"created\":1653125057,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"MarkupCache\":{\"name\":\"MarkupCache\",\"title\":\"Markup Cache\",\"version\":101,\"versionStr\":\"1.0.1\",\"summary\":\"A simple way to cache segments of markup in your templates. \",\"href\":\"https:\\/\\/processwire.com\\/api\\/modules\\/markupcache\\/\",\"autoload\":true,\"singular\":true,\"created\":1653125057,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"MarkupPageFields\":{\"name\":\"MarkupPageFields\",\"title\":\"Markup Page Fields\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Adds $page->renderFields() and $page->images->render() methods that return basic markup for output during development and debugging.\",\"autoload\":true,\"singular\":true,\"created\":1653125057,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"permanent\":true},\"MarkupRSS\":{\"name\":\"MarkupRSS\",\"title\":\"Markup RSS Feed\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Renders an RSS feed. Given a PageArray, renders an RSS feed of them.\",\"icon\":\"rss-square\",\"created\":1653125057,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"PageFrontEdit\":{\"name\":\"PageFrontEdit\",\"title\":\"Front-End Page Editor\",\"version\":3,\"versionStr\":\"0.0.3\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables front-end editing of page fields.\",\"icon\":\"cube\",\"permissions\":{\"page-edit-front\":\"Use the front-end page editor\"},\"autoload\":true,\"created\":1653125057,\"installed\":false,\"configurable\":\"PageFrontEditConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"license\":\"MPL 2.0\"},\"PagePathHistory\":{\"name\":\"PagePathHistory\",\"title\":\"Page Path History\",\"version\":6,\"versionStr\":\"0.0.6\",\"summary\":\"Keeps track of past URLs where pages have lived and automatically redirects (301 permament) to the new location whenever the past URL is accessed.\",\"autoload\":true,\"singular\":true,\"created\":1653125057,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"PagePaths\":{\"name\":\"PagePaths\",\"title\":\"Page Paths\",\"version\":1,\"versionStr\":\"0.0.1\",\"summary\":\"Enables page paths\\/urls to be queryable by selectors. Also offers potential for improved load performance. Builds an index at install (may take time on a large site). Currently supports only single languages sites.\",\"autoload\":true,\"singular\":true,\"created\":1653125057,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessCommentsManager\":{\"name\":\"ProcessCommentsManager\",\"title\":\"Comments\",\"version\":10,\"versionStr\":\"0.1.0\",\"author\":\"Ryan Cramer\",\"summary\":\"Manage comments in your site outside of the page editor.\",\"icon\":\"comments\",\"requiresVersions\":{\"FieldtypeComments\":[\">=\",0]},\"permission\":\"comments-manager\",\"permissions\":{\"comments-manager\":\"Use the comments manager\"},\"created\":1653125057,\"installed\":false,\"searchable\":\"comments\",\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"comments\",\"parent\":\"setup\",\"title\":\"Comments\"},\"nav\":[{\"url\":\"?go=approved\",\"label\":\"Approved\"},{\"url\":\"?go=pending\",\"label\":\"Pending\"},{\"url\":\"?go=spam\",\"label\":\"Spam\"},{\"url\":\"?go=all\",\"label\":\"All\"}]},\"ProcessForgotPassword\":{\"name\":\"ProcessForgotPassword\",\"title\":\"Forgot Password\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides password reset\\/email capability for the Login process.\",\"permission\":\"page-view\",\"created\":1653125057,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"ProcessPageClone\":{\"name\":\"ProcessPageClone\",\"title\":\"Page Clone\",\"version\":104,\"versionStr\":\"1.0.4\",\"summary\":\"Provides ability to clone\\/copy\\/duplicate pages in the admin. Adds a &quot;copy&quot; option to all applicable pages in the PageList.\",\"permission\":\"page-clone\",\"permissions\":{\"page-clone\":\"Clone a page\",\"page-clone-tree\":\"Clone a tree of pages\"},\"autoload\":\"template=admin\",\"created\":1653125057,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"clone\",\"title\":\"Clone\",\"parent\":\"page\",\"status\":1024}},\"ProcessPagesExportImport\":{\"name\":\"ProcessPagesExportImport\",\"title\":\"Pages Export\\/Import\",\"version\":1,\"versionStr\":\"0.0.1\",\"author\":\"Ryan Cramer\",\"summary\":\"Enables exporting and importing of pages. Development version, not yet recommended for production use.\",\"icon\":\"paper-plane-o\",\"permission\":\"page-edit-export\",\"created\":1653125057,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"export-import\",\"parent\":\"page\",\"title\":\"Export\\/Import\"}},\"ProcessSessionDB\":{\"name\":\"ProcessSessionDB\",\"title\":\"Sessions\",\"version\":5,\"versionStr\":\"0.0.5\",\"summary\":\"Enables you to browse active database sessions.\",\"icon\":\"dashboard\",\"requiresVersions\":{\"SessionHandlerDB\":[\">=\",0]},\"created\":1653125057,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"page\":{\"name\":\"sessions-db\",\"parent\":\"access\",\"title\":\"Sessions\"}},\"SessionHandlerDB\":{\"name\":\"SessionHandlerDB\",\"title\":\"Session Handler Database\",\"version\":6,\"versionStr\":\"0.0.6\",\"summary\":\"Installing this module makes ProcessWire store sessions in the database rather than the file system. Note that this module will log you out after install or uninstall.\",\"installs\":[\"ProcessSessionDB\"],\"created\":1653125057,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"FieldtypeNotifications\":{\"name\":\"FieldtypeNotifications\",\"title\":\"Notifications\",\"version\":4,\"versionStr\":\"0.0.4\",\"summary\":\"Field that stores user notifications.\",\"requiresVersions\":{\"SystemNotifications\":[\">=\",0]},\"created\":1653125057,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"SystemNotifications\":{\"name\":\"SystemNotifications\",\"title\":\"System Notifications\",\"version\":12,\"versionStr\":\"0.1.2\",\"summary\":\"Adds support for notifications in ProcessWire (currently in development)\",\"icon\":\"bell\",\"installs\":[\"FieldtypeNotifications\"],\"autoload\":true,\"created\":1653125057,\"installed\":false,\"configurable\":\"SystemNotificationsConfig.php\",\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterMarkdownExtra\":{\"name\":\"TextformatterMarkdownExtra\",\"title\":\"Markdown\\/Parsedown Extra\",\"version\":180,\"versionStr\":\"1.8.0\",\"summary\":\"Markdown\\/Parsedown extra lightweight markup language by Emanuil Rusev. Based on Markdown by John Gruber.\",\"created\":1653125057,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterNewlineBR\":{\"name\":\"TextformatterNewlineBR\",\"title\":\"Newlines to XHTML Line Breaks\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to XHTML line break <br \\/> tags. \",\"created\":1653125057,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterNewlineUL\":{\"name\":\"TextformatterNewlineUL\",\"title\":\"Newlines to Unordered List\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Converts newlines to <li> list items and surrounds in an <ul> unordered list. \",\"created\":1653125057,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterPstripper\":{\"name\":\"TextformatterPstripper\",\"title\":\"Paragraph Stripper\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips paragraph <p> tags that may have been applied by other text formatters before it. \",\"created\":1653125057,\"installed\":false,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"TextformatterSmartypants\":{\"name\":\"TextformatterSmartypants\",\"title\":\"SmartyPants Typographer\",\"version\":171,\"versionStr\":\"1.7.1\",\"summary\":\"Smart typography for web sites, by Michel Fortin based on SmartyPants by John Gruber. If combined with Markdown, it should be applied AFTER Markdown.\",\"created\":1653125057,\"installed\":false,\"configurable\":4,\"namespace\":\"ProcessWire\\\\\",\"core\":true,\"url\":\"https:\\/\\/github.com\\/michelf\\/php-smartypants\"},\"TextformatterStripTags\":{\"name\":\"TextformatterStripTags\",\"title\":\"Strip Markup Tags\",\"version\":100,\"versionStr\":\"1.0.0\",\"summary\":\"Strips HTML\\/XHTML Markup Tags\",\"created\":1653125057,\"installed\":false,\"configurable\":3,\"namespace\":\"ProcessWire\\\\\",\"core\":true},\"Helloworld\":{\"name\":\"Helloworld\",\"title\":\"Hello World\",\"version\":3,\"versionStr\":\"0.0.3\",\"summary\":\"An example module used for demonstration purposes.\",\"href\":\"https:\\/\\/processwire.com\",\"icon\":\"smile-o\",\"autoload\":true,\"singular\":true,\"created\":1653125056,\"installed\":false}}',
    '2010-04-08 03:10:01'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__bb744a01f7f27008dd6e273ab6f0db40',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/templates\\/menu.php\",\"hash\":\"ee12fe01d67321bf27075a9632c166c1\",\"size\":4114,\"time\":1654088223,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/menu.php\",\"hash\":\"ee12fe01d67321bf27075a9632c166c1\",\"size\":4114,\"time\":1654088223}}',
    '2010-04-08 03:10:10'
  );
INSERT INTO
  `caches` (`name`, `data`, `expires`)
VALUES
  (
    'FileCompiler__7c84fa706a40bc700bf5984c61404725',
    '{\"source\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/templates\\/footer.php\",\"hash\":\"63d2bf39557d18425c6d34e7f608e609\",\"size\":436,\"time\":1653468655,\"ns\":\"\\\\\"},\"target\":{\"file\":\"C:\\/xampp\\/htdocs\\/openSauce\\/site\\/assets\\/cache\\/FileCompiler\\/site\\/templates\\/footer.php\",\"hash\":\"63d2bf39557d18425c6d34e7f608e609\",\"size\":436,\"time\":1653468655}}',
    '2010-04-08 03:10:10'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_admin_theme
# ------------------------------------------------------------

INSERT INTO
  `field_admin_theme` (`pages_id`, `data`)
VALUES
  (41, 160);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_email
# ------------------------------------------------------------

INSERT INTO
  `field_email` (`pages_id`, `data`)
VALUES
  (41, 'bernhardr91104@gmail.com');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_favicon
# ------------------------------------------------------------

INSERT INTO
  `field_favicon` (
    `pages_id`,
    `data`,
    `sort`,
    `description`,
    `modified`,
    `created`,
    `filedata`,
    `filesize`,
    `created_users_id`,
    `modified_users_id`,
    `width`,
    `height`,
    `ratio`
  )
VALUES
  (
    1033,
    'favicon-32x32.png',
    0,
    '',
    '2022-06-01 14:22:58',
    '2022-06-01 14:22:58',
    '',
    1681,
    41,
    41,
    32,
    32,
    1.00
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_home_page_images
# ------------------------------------------------------------

INSERT INTO
  `field_home_page_images` (
    `pages_id`,
    `data`,
    `sort`,
    `description`,
    `modified`,
    `created`,
    `filedata`,
    `filesize`,
    `created_users_id`,
    `modified_users_id`,
    `width`,
    `height`,
    `ratio`
  )
VALUES
  (
    1031,
    'bbq-sauce-barbecue-sosse-colourbox17890425.jpg',
    0,
    'My bad',
    '2022-05-19 15:20:58',
    '2022-05-19 15:20:58',
    '',
    111254,
    41,
    41,
    1500,
    1500,
    1.00
  );
INSERT INTO
  `field_home_page_images` (
    `pages_id`,
    `data`,
    `sort`,
    `description`,
    `modified`,
    `created`,
    `filedata`,
    `filesize`,
    `created_users_id`,
    `modified_users_id`,
    `width`,
    `height`,
    `ratio`
  )
VALUES
  (
    1032,
    'produktbild-von.jpg',
    0,
    '',
    '2022-05-30 12:10:27',
    '2022-05-30 12:10:27',
    '',
    31418,
    41,
    41,
    1200,
    630,
    1.90
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_home_page_text
# ------------------------------------------------------------

INSERT INTO
  `field_home_page_text` (`pages_id`, `data`, `count`, `parent_id`)
VALUES
  (1, '1031,1032', 2, 1030);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_home_page_text_title
# ------------------------------------------------------------

INSERT INTO
  `field_home_page_text_title` (`pages_id`, `data`)
VALUES
  (1031, 'Wir wissen was sie wollen');
INSERT INTO
  `field_home_page_text_title` (`pages_id`, `data`)
VALUES
  (1032, 'Unser Betrieb steht seit 2022');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_logo
# ------------------------------------------------------------

INSERT INTO
  `field_logo` (
    `pages_id`,
    `data`,
    `sort`,
    `description`,
    `modified`,
    `created`,
    `filedata`,
    `filesize`,
    `created_users_id`,
    `modified_users_id`,
    `width`,
    `height`,
    `ratio`
  )
VALUES
  (
    1033,
    'logo1-1.png',
    0,
    '',
    '2022-06-01 14:22:58',
    '2022-06-01 14:22:58',
    '',
    18594,
    41,
    41,
    506,
    343,
    1.48
  );

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
# DATA DUMP FOR TABLE: field_phits
# ------------------------------------------------------------

INSERT INTO
  `field_phits` (`pages_id`, `data`, `last_hit`)
VALUES
  (1, 16, '2022-06-01 14:52:42');
INSERT INTO
  `field_phits` (`pages_id`, `data`, `last_hit`)
VALUES
  (1016, 1, '2022-06-01 14:52:25');
INSERT INTO
  `field_phits` (`pages_id`, `data`, `last_hit`)
VALUES
  (1018, 2, '2022-06-01 14:58:01');
INSERT INTO
  `field_phits` (`pages_id`, `data`, `last_hit`)
VALUES
  (1025, 2, '2022-05-27 10:06:31');

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
INSERT INTO
  `field_process` (`pages_id`, `data`)
VALUES
  (1026, 168);

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
# DATA DUMP FOR TABLE: field_slider_images
# ------------------------------------------------------------

INSERT INTO
  `field_slider_images` (
    `pages_id`,
    `data`,
    `sort`,
    `description`,
    `modified`,
    `created`,
    `filedata`,
    `filesize`,
    `created_users_id`,
    `modified_users_id`,
    `width`,
    `height`,
    `ratio`
  )
VALUES
  (
    1,
    'sossen.jpg',
    4,
    'Nothing But Delicious!',
    '2022-05-15 20:51:00',
    '2022-05-13 16:47:12',
    '',
    328017,
    41,
    41,
    1480,
    600,
    2.47
  );
INSERT INTO
  `field_slider_images` (
    `pages_id`,
    `data`,
    `sort`,
    `description`,
    `modified`,
    `created`,
    `filedata`,
    `filesize`,
    `created_users_id`,
    `modified_users_id`,
    `width`,
    `height`,
    `ratio`
  )
VALUES
  (
    1,
    'kalorienarme-sossen-zum-abnehmen.jpg',
    3,
    'Soßen, Dressing, Marinaden',
    '2022-05-15 20:51:00',
    '2022-05-13 16:47:12',
    '',
    66614,
    41,
    41,
    720,
    378,
    1.90
  );
INSERT INTO
  `field_slider_images` (
    `pages_id`,
    `data`,
    `sort`,
    `description`,
    `modified`,
    `created`,
    `filedata`,
    `filesize`,
    `created_users_id`,
    `modified_users_id`,
    `width`,
    `height`,
    `ratio`
  )
VALUES
  (
    1,
    'braune-sosse-th.jpg',
    2,
    'Everyone\'s Favourite Sauce',
    '2022-05-15 20:51:00',
    '2022-05-13 16:47:12',
    '',
    48382,
    41,
    41,
    960,
    540,
    1.78
  );
INSERT INTO
  `field_slider_images` (
    `pages_id`,
    `data`,
    `sort`,
    `description`,
    `modified`,
    `created`,
    `filedata`,
    `filesize`,
    `created_users_id`,
    `modified_users_id`,
    `width`,
    `height`,
    `ratio`
  )
VALUES
  (
    1,
    '50117118_353918d6c891b5_full.jpg',
    1,
    'ohne uns schmeckt alles fade',
    '2022-05-15 20:51:00',
    '2022-05-13 16:47:12',
    '',
    67573,
    41,
    41,
    700,
    465,
    1.51
  );
INSERT INTO
  `field_slider_images` (
    `pages_id`,
    `data`,
    `sort`,
    `description`,
    `modified`,
    `created`,
    `filedata`,
    `filesize`,
    `created_users_id`,
    `modified_users_id`,
    `width`,
    `height`,
    `ratio`
  )
VALUES
  (
    1,
    '7706.jpg',
    0,
    'Wir bringen Geschmack',
    '2022-05-15 20:51:00',
    '2022-05-13 16:47:12',
    '{\"focus\":{\"top\":51,\"left\":51.4,\"zoom\":0}}',
    98384,
    41,
    41,
    1024,
    612,
    1.67
  );
INSERT INTO
  `field_slider_images` (
    `pages_id`,
    `data`,
    `sort`,
    `description`,
    `modified`,
    `created`,
    `filedata`,
    `filesize`,
    `created_users_id`,
    `modified_users_id`,
    `width`,
    `height`,
    `ratio`
  )
VALUES
  (
    1,
    'sossen-b.jpg',
    5,
    'Foods For Life',
    '2022-05-15 20:51:00',
    '2022-05-13 16:47:12',
    '',
    667421,
    41,
    41,
    1320,
    992,
    1.33
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_standart_images
# ------------------------------------------------------------

INSERT INTO
  `field_standart_images` (
    `pages_id`,
    `data`,
    `sort`,
    `description`,
    `modified`,
    `created`,
    `filedata`,
    `filesize`,
    `created_users_id`,
    `modified_users_id`,
    `width`,
    `height`,
    `ratio`
  )
VALUES
  (
    1025,
    'fdf024649086eaa31475262c3b870407.jpg',
    0,
    '',
    '2022-05-14 00:31:26',
    '2022-05-14 00:31:26',
    '',
    22007,
    41,
    41,
    650,
    487,
    1.33
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_standart_text
# ------------------------------------------------------------

INSERT INTO
  `field_standart_text` (`pages_id`, `data`)
VALUES
  (
    1025,
    '<h1>Generic Privacy Policy</h1>\n\n<p>Last updated: November 2014</p>\n\n<h2>Information that is gathered from visitors</h2>\n\n<p>In common with other websites, log files are stored on the web server saving details such as the visitor\'s IP address, browser type, referring page and time of visit.</p>\n\n<p>Cookies may be used to remember visitor preferences when interacting with the website.</p>\n\n<p>Where registration is required, the visitor\'s email and a username will be stored on the server.</p>\n\n<h2>How the Information is used</h2>\n\n<p>The information is used to enhance the vistor\'s experience when using the website to display personalised content and possibly advertising.</p>\n\n<p>E-mail addresses will not be sold, rented or leased to 3rd parties.</p>\n\n<p>E-mail may be sent to inform you of news of our services or offers by us or our affiliates.</p>\n\n<h2>Visitor Options</h2>\n\n<p>If you have subscribed to one of our services, you may unsubscribe by following the instructions which are included in e-mail that you receive.</p>\n\n<p>You may be able to block cookies via your browser settings but this may prevent you from access to certain features of the website.</p>\n\n<h2>Cookies</h2>\n\n<p>Cookies are small digital signature files that are stored by your web browser that allow your preferences to be recorded when visiting the website. Also they may be used to track your return visits to the website.</p>\n\n<p>3rd party advertising companies may also use cookies for tracking purposes.</p>\n\n<h2>Google Ads</h2>\n\n<p>Google, as a third party vendor, uses cookies to serve ads.</p>\n\n<p>Google\'s use of the DART cookie enables it to serve ads to visitors based on their visit to sites they visit on the Internet.</p>\n\n<p>Website visitors may opt out of the use of the DART cookie by visiting the Google ad and content network privacy policy.</p>'
  );
INSERT INTO
  `field_standart_text` (`pages_id`, `data`)
VALUES
  (1031, '<p>Wir wissen was wir hier tun</p>');
INSERT INTO
  `field_standart_text` (`pages_id`, `data`)
VALUES
  (
    1032,
    '<p>Dieser Betrieb funktioniert schon ein gesamtes Jahr lang mäßig gut.</p>'
  );
INSERT INTO
  `field_standart_text` (`pages_id`, `data`)
VALUES
  (
    1023,
    '<p><strong>Datenschutzerklärung</strong></p>\n\n<p><strong>Allgemeiner Hinweis und Pflichtinformationen</strong></p>\n\n<p><strong>Benennung der verantwortlichen Stelle</strong></p>\n\n<p>Die verantwortliche Stelle für die Datenverarbeitung auf dieser Website ist:</p>\n\n<p>Open Sauce<br />\nBernhard Rieder<br />\ndd<br />\n123 Musteort</p>\n\n<p> </p>\n\n<p>Die verantwortliche Stelle entscheidet allein oder gemeinsam mit anderen über die Zwecke und Mittel der Verarbeitung von personenbezogenen Daten (z.B. Namen, Kontaktdaten o. Ä.).</p>\n\n<p><strong>Widerruf Ihrer Einwilligung zur Datenverarbeitung</strong></p>\n\n<p>Nur mit Ihrer ausdrücklichen Einwilligung sind einige Vorgänge der Datenverarbeitung möglich. Ein Widerruf Ihrer bereits erteilten Einwilligung ist jederzeit möglich. Für den Widerruf genügt eine formlose Mitteilung per E-Mail. Die Rechtmäßigkeit der bis zum Widerruf erfolgten Datenverarbeitung bleibt vom Widerruf unberührt.</p>\n\n<p><strong>Recht auf Beschwerde bei der zuständigen Aufsichtsbehörde</strong></p>\n\n<p>Als Betroffener steht Ihnen im Falle eines datenschutzrechtlichen Verstoßes ein Beschwerderecht bei der zuständigen Aufsichtsbehörde zu. Zuständige Aufsichtsbehörde bezüglich datenschutzrechtlicher Fragen ist der Landesdatenschutzbeauftragte des Bundeslandes, in dem sich der Sitz unseres Unternehmens befindet. Der folgende Link stellt eine Liste der Datenschutzbeauftragten sowie deren Kontaktdaten bereit: <a href=\"https://www.bfdi.bund.de/DE/Infothek/Anschriften_Links/anschriften_links-node.html\" target=\"_blank\" rel=\"noreferrer noopener\">https://www.bfdi.bund.de/DE/Infothek/Anschriften_Links/anschriften_links-node.html</a>.</p>\n\n<p><strong>Recht auf Datenübertragbarkeit</strong></p>\n\n<p>Ihnen steht das Recht zu, Daten, die wir auf Grundlage Ihrer Einwilligung oder in Erfüllung eines Vertrags automatisiert verarbeiten, an sich oder an Dritte aushändigen zu lassen. Die Bereitstellung erfolgt in einem maschinenlesbaren Format. Sofern Sie die direkte Übertragung der Daten an einen anderen Verantwortlichen verlangen, erfolgt dies nur, soweit es technisch machbar ist.</p>\n\n<p><strong>Recht auf Auskunft, Berichtigung, Sperrung, Löschung</strong></p>\n\n<p>Sie haben jederzeit im Rahmen der geltenden gesetzlichen Bestimmungen das Recht auf unentgeltliche Auskunft über Ihre gespeicherten personenbezogenen Daten, Herkunft der Daten, deren Empfänger und den Zweck der Datenverarbeitung und ggf. ein Recht auf Berichtigung, Sperrung oder Löschung dieser Daten. Diesbezüglich und auch zu weiteren Fragen zum Thema personenbezogene Daten können Sie sich jederzeit über die im Impressum aufgeführten Kontaktmöglichkeiten an uns wenden.</p>\n\n<p><strong>SSL- bzw. TLS-Verschlüsselung</strong></p>\n\n<p>Aus Sicherheitsgründen und zum Schutz der Übertragung vertraulicher Inhalte, die Sie an uns als Seitenbetreiber senden, nutzt unsere Website eine SSL-bzw. TLS-Verschlüsselung. Damit sind Daten, die Sie über diese Website übermitteln, für Dritte nicht mitlesbar. Sie erkennen eine verschlüsselte Verbindung an der „https://“ Adresszeile Ihres Browsers und am Schloss-Symbol in der Browserzeile.</p>\n\n<p><strong>Server-Log-Dateien</strong></p>\n\n<p>In Server-Log-Dateien erhebt und speichert der Provider der Website automatisch Informationen, die Ihr Browser automatisch an uns übermittelt. Dies sind:</p>\n\n<ul>\n\t<li>Besuchte Seite auf unserer Domain</li>\n\t<li>Datum und Uhrzeit der Serveranfrage</li>\n\t<li>Browsertyp und Browserversion</li>\n\t<li>Verwendetes Betriebssystem</li>\n\t<li>Referrer URL</li>\n\t<li>Hostname des zugreifenden Rechners</li>\n\t<li>IP-Adresse</li>\n</ul>\n\n<p>Es findet keine Zusammenführung dieser Daten mit anderen Datenquellen statt. Grundlage der Datenverarbeitung bildet Art. 6 Abs. 1 lit. b DSGVO, der die Verarbeitung von Daten zur Erfüllung eines Vertrags oder vorvertraglicher Maßnahmen gestattet.</p>\n\n<p><strong>YouTube</strong></p>\n\n<p>Für Integration und Darstellung von Videoinhalten nutzt unsere Website Plugins von YouTube. Anbieter des Videoportals ist die YouTube, LLC, 901 Cherry Ave., San Bruno, CA 94066, USA.</p>\n\n<p>Bei Aufruf einer Seite mit integriertem YouTube-Plugin wird eine Verbindung zu den Servern von YouTube hergestellt. YouTube erfährt hierdurch, welche unserer Seiten Sie aufgerufen haben.</p>\n\n<p>YouTube kann Ihr Surfverhalten direkt Ihrem persönlichen Profil zuzuordnen, sollten Sie in Ihrem YouTube Konto eingeloggt sein. Durch vorheriges Ausloggen haben Sie die Möglichkeit, dies zu unterbinden.</p>\n\n<p>Die Nutzung von YouTube erfolgt im Interesse einer ansprechenden Darstellung unserer Online-Angebote. Dies stellt ein berechtigtes Interesse im Sinne von Art. 6 Abs. 1 lit. f DSGVO dar.</p>\n\n<p>Einzelheiten zum Umgang mit Nutzerdaten finden Sie in der Datenschutzerklärung von YouTube unter: <a href=\"https://www.google.de/intl/de/policies/privacy\">https://www.google.de/intl/de/policies/privacy</a>.</p>\n\n<p><strong>Cookies</strong></p>\n\n<p>Unsere Website verwendet Cookies. Das sind kleine Textdateien, die Ihr Webbrowser auf Ihrem Endgerät speichert. Cookies helfen uns dabei, unser Angebot nutzerfreundlicher, effektiver und sicherer zu machen.</p>\n\n<p>Einige Cookies sind “Session-Cookies.” Solche Cookies werden nach Ende Ihrer Browser-Sitzung von selbst gelöscht. Hingegen bleiben andere Cookies auf Ihrem Endgerät bestehen, bis Sie diese selbst löschen. Solche Cookies helfen uns, Sie bei Rückkehr auf unserer Website wiederzuerkennen.</p>\n\n<p>Mit einem modernen Webbrowser können Sie das Setzen von Cookies überwachen, einschränken oder unterbinden. Viele Webbrowser lassen sich so konfigurieren, dass Cookies mit dem Schließen des Programms von selbst gelöscht werden. Die Deaktivierung von Cookies kann eine eingeschränkte Funktionalität unserer Website zur Folge haben.</p>\n\n<p>Das Setzen von Cookies, die zur Ausübung elektronischer Kommunikationsvorgänge oder der Bereitstellung bestimmter, von Ihnen erwünschter Funktionen (z.B. Warenkorb) notwendig sind, erfolgt auf Grundlage von Art. 6 Abs. 1 lit. f DSGVO. Als Betreiber dieser Website haben wir ein berechtigtes Interesse an der Speicherung von Cookies zur technisch fehlerfreien und reibungslosen Bereitstellung unserer Dienste. Sofern die Setzung anderer Cookies (z.B. für Analyse-Funktionen) erfolgt, werden diese in dieser Datenschutzerklärung separat behandelt.</p>\n\n<p><strong>Google Analytics</strong></p>\n\n<p>Unsere Website verwendet Funktionen des Webanalysedienstes Google Analytics. Anbieter des Webanalysedienstes ist die Google Inc., 1600 Amphitheatre Parkway, Mountain View, CA 94043, USA.</p>\n\n<p>Google Analytics verwendet \"Cookies.\" Das sind kleine Textdateien, die Ihr Webbrowser auf Ihrem Endgerät speichert und eine Analyse der Website-Benutzung ermöglichen. Mittels Cookie erzeugte Informationen über Ihre Benutzung unserer Website werden an einen Server von Google übermittelt und dort gespeichert. Server-Standort ist im Regelfall die USA.</p>\n\n<p>Das Setzen von Google-Analytics-Cookies erfolgt auf Grundlage von Art. 6 Abs. 1 lit. f DSGVO. Als Betreiber dieser Website haben wir  ein berechtigtes Interesse an der Analyse des Nutzerverhaltens, um unser Webangebot und ggf. auch Werbung zu optimieren.</p>\n\n<p>IP-Anonymisierung</p>\n\n<p>Wir setzen Google Analytics in Verbindung mit der Funktion IP-Anonymisierung ein. Sie gewährleistet, dass Google Ihre IP-Adresse innerhalb von Mitgliedstaaten der Europäischen Union oder in anderen Vertragsstaaten des Abkommens über den Europäischen Wirtschaftsraum vor der Übermittlung in die USA kürzt. Es kann Ausnahmefälle geben, in denen Google die volle IP-Adresse an einen Server in den USA überträgt und dort kürzt. In unserem Auftrag wird Google diese Informationen benutzen, um Ihre Nutzung der Website auszuwerten, um Reports über Websiteaktivitäten zu erstellen und um weitere mit der Websitenutzung und der Internetnutzung verbundene Dienstleistungen gegenüber uns zu erbringen. Es findet keine Zusammenführung der von Google Analytics übermittelten IP-Adresse mit anderen Daten von Google statt.</p>\n\n<p>Browser Plugin</p>\n\n<p>Das Setzen von Cookies durch Ihren Webbrowser ist verhinderbar. Einige Funktionen unserer Website könnten dadurch jedoch eingeschränkt werden. Ebenso können Sie die Erfassung von Daten bezüglich Ihrer Website-Nutzung einschließlich Ihrer IP-Adresse mitsamt anschließender Verarbeitung durch Google unterbinden. Dies ist möglich, indem Sie das über folgenden Link erreichbare Browser-Plugin herunterladen und installieren: <a href=\"https://tools.google.com/dlpage/gaoptout?hl=de\">https://tools.google.com/dlpage/gaoptout?hl=de</a>.</p>\n\n<p>Widerspruch gegen die Datenerfassung</p>\n\n<p>Sie können die Erfassung Ihrer Daten durch Google Analytics verhindern, indem Sie auf folgenden Link klicken. Es wird ein Opt-Out-Cookie gesetzt, der die Erfassung Ihrer Daten bei zukünftigen Besuchen unserer Website verhindert: Google Analytics deaktivieren.</p>\n\n<p>Einzelheiten zum Umgang mit Nutzerdaten bei Google Analytics finden Sie in der Datenschutzerklärung von Google: <a href=\"https://support.google.com/analytics/answer/6004245?hl=de\">https://support.google.com/analytics/answer/6004245?hl=de</a>.</p>\n\n<p>Auftragsverarbeitung</p>\n\n<p>Zur vollständigen Erfüllung der gesetzlichen Datenschutzvorgaben haben wir mit Google einen Vertrag über die Auftragsverarbeitung abgeschlossen.</p>\n\n<p>Demografische Merkmale bei Google Analytics</p>\n\n<p>Unsere Website verwendet die Funktion “demografische Merkmale” von Google Analytics. Mit ihr lassen sich Berichte erstellen, die Aussagen zu Alter, Geschlecht und Interessen der Seitenbesucher enthalten. Diese Daten stammen aus interessenbezogener Werbung von Google sowie aus Besucherdaten von Drittanbietern. Eine Zuordnung der Daten zu einer bestimmten Person ist nicht möglich. Sie können diese Funktion jederzeit deaktivieren. Dies ist über die Anzeigeneinstellungen in Ihrem Google-Konto möglich oder indem Sie die Erfassung Ihrer Daten durch Google Analytics, wie im Punkt “Widerspruch gegen die Datenerfassung” erläutert, generell untersagen.</p>\n\n<p><small>Quelle: Datenschutz-Konfigurator von <a href=\"http://www.mein-datenschutzbeauftragter.de\" target=\"_blank\" rel=\"noreferrer noopener\">mein-datenschutzbeauftragter.de</a></small></p>'
  );

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_textbox
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_textt
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
  (1026, 'Croppable Images 3');
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
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1027, 'Crop images with CroppableImage3');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1028, 'Repeaters');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1029, 'home_page_text');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1030, 'home');
INSERT INTO
  `field_title` (`pages_id`, `data`)
VALUES
  (1033, 'settings');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_zitat
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_zitat_end
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_zitat_name
# ------------------------------------------------------------

INSERT INTO
  `field_zitat_name` (`pages_id`, `data`)
VALUES
  (1, 'Epikur');

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: field_zitat_text
# ------------------------------------------------------------

INSERT INTO
  `field_zitat_text` (`pages_id`, `data`)
VALUES
  (
    1,
    'Genuss ist der Beginn und das Ende eines gesegneten Lebens.'
  );

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
  (98, 'repeater_home_page_text');
INSERT INTO
  `fieldgroups` (`id`, `name`)
VALUES
  (99, 'settings');

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
  (83, 102, 3, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (98, 102, 1, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (3, 97, 3, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (83, 101, 2, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (83, 1, 0, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (1, 112, 9, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (83, 103, 1, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (1, 101, 8, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (1, 108, 7, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (1, 110, 6, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (1, 109, 5, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (1, 107, 4, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (1, 100, 3, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (1, 103, 2, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (1, 1, 1, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (83, 111, 4, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (98, 115, 0, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (1, 111, 0, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (98, 116, 2, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (99, 1, 0, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (99, 117, 1, NULL);
INSERT INTO
  `fieldgroups_fields` (`fieldgroups_id`, `fields_id`, `sort`, `data`)
VALUES
  (99, 103, 2, NULL);

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
    101,
    'FieldtypeCroppableImage3',
    'standart_images',
    0,
    'Standart Images',
    '{\"icon\":\"picture-o\",\"fileSchema\":270,\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"descriptionRows\":1,\"useTags\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"cropSetting\":\"standart,1920,1152\",\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldCroppableImage3\"}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    100,
    'FieldtypeCroppableImage3',
    'slider_images',
    0,
    'Slider Images',
    '{\"fileSchema\":270,\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":0,\"outputFormat\":0,\"descriptionRows\":1,\"useTags\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"cropSetting\":\"MainSlider,1280,962\",\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldCroppableImage3\"}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    102,
    'FieldtypeTextarea',
    'standart_text',
    0,
    'Standart Text',
    '{\"inputfieldClass\":\"InputfieldCKEditor\",\"contentType\":1,\"minlength\":0,\"maxlength\":0,\"showCount\":0,\"rows\":5,\"toolbar\":\"Format, Styles, -, Bold, Italic, -, RemoveFormat\\nNumberedList, BulletedList, -, Blockquote\\nPWLink, Unlink, Anchor\\nPWImage, Table, HorizontalRule, SpecialChar\\nPasteText, PasteFromWord\\nScayt, -, Sourcedialog\",\"inlineMode\":0,\"useACF\":1,\"usePurifier\":1,\"formatTags\":\"p;h1;h2;h3;h4;h5;h6;pre;address\",\"extraPlugins\":[\"pwimage\",\"pwlink\",\"sourcedialog\"],\"removePlugins\":\"image,magicline\"}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    103,
    'FieldtypeCroppableImage3',
    'favicon',
    0,
    'Favicon',
    '{\"fileSchema\":270,\"extensions\":\"ico gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":2,\"descriptionRows\":0,\"useTags\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"maxWidth\":32,\"maxHeight\":32,\"resizeServer\":0,\"clientQuality\":90,\"minWidth\":16,\"minHeight\":16,\"cropSetting\":\"32x32,32,32\\n16x16,16,16\",\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldCroppableImage3\"}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    107,
    'FieldtypeFieldsetOpen',
    'zitat',
    0,
    'Zitat',
    '{\"closeFieldID\":108,\"tags\":\"zitat\"}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    108,
    'FieldtypeFieldsetClose',
    'zitat_END',
    0,
    'Close an open fieldset',
    '{\"description\":\"This field was added automatically to accompany fieldset \'zitat\'.  It should be placed in your template\\/fieldgroup wherever you want the fieldset to end.\",\"openFieldID\":107,\"tags\":\"zitat\"}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    109,
    'FieldtypeText',
    'zitat_text',
    0,
    'Zitat text',
    '{\"textformatters\":[\"TextformatterEntities\"],\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0,\"columnWidth\":70,\"tags\":\"zitat\"}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    110,
    'FieldtypeText',
    'zitat_name',
    0,
    'Zitat Name',
    '{\"noRelative\":0,\"allowIDN\":0,\"allowQuotes\":0,\"addRoot\":0,\"minlength\":0,\"maxlength\":1024,\"showCount\":0,\"size\":0,\"textformatters\":[\"TextformatterEntities\"],\"columnWidth\":30,\"tags\":\"zitat\"}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    111,
    'FieldtypePageHitCounter',
    'phits',
    0,
    'Page hits',
    '{\"collapsed\":0,\"tags\":\"-pagehits\",\"icon\":\"eye\"}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    112,
    'FieldtypeRepeater',
    'home_page_text',
    0,
    'Home Page Text',
    '{\"template_id\":44,\"parent_id\":1029,\"repeaterCollapse\":0,\"repeaterLoading\":1,\"familyFriendly\":0,\"repeaterFields\":[115,102,116],\"tags\":\"home_page_text\",\"repeaterMaxItems\":20,\"collapsed\":0}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    113,
    'FieldtypeText',
    'textbox',
    0,
    'Textbox',
    '{\"textformatters\":[\"TextformatterEntities\"],\"minlength\":0,\"maxlength\":2048,\"showCount\":0,\"size\":0}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (114, 'FieldtypeText', 'textt', 0, 'Textt', '');
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    115,
    'FieldtypeText',
    'home_page_text_title',
    0,
    'home page text title',
    '{\"textformatters\":[\"TextformatterEntities\"],\"minlength\":0,\"maxlength\":2048,\"showCount\":1,\"size\":0,\"stripTags\":1,\"tags\":\"home_page_text\"}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    116,
    'FieldtypeCroppableImage3',
    'home_page_images',
    0,
    'Home Page Images',
    '{\"fileSchema\":270,\"textformatters\":[\"TextformatterEntities\"],\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":4,\"outputFormat\":2,\"descriptionRows\":1,\"useTags\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldCroppableImage3\",\"tags\":\"home_page_text\",\"collapsed\":0,\"cropSetting\":\"page,1200,800\"}'
  );
INSERT INTO
  `fields` (`id`, `type`, `name`, `flags`, `label`, `data`)
VALUES
  (
    117,
    'FieldtypeCroppableImage3',
    'logo',
    0,
    'Logo',
    '{\"fileSchema\":270,\"extensions\":\"gif jpg jpeg png\",\"maxFiles\":1,\"outputFormat\":2,\"descriptionRows\":1,\"useTags\":0,\"gridMode\":\"grid\",\"focusMode\":\"on\",\"resizeServer\":0,\"clientQuality\":90,\"maxReject\":0,\"dimensionsByAspectRatio\":0,\"defaultValuePage\":0,\"inputfieldClass\":\"InputfieldCroppableImage3\"}'
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
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (165, 'CroppableImage3', 0, '', '2022-05-13 16:28:13');
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    166,
    'FieldtypeCroppableImage3',
    1,
    '{\"labelTextType\":\"brave\",\"manualSelectionDisabled\":\"\",\"optionSharpening\":1,\"useImageEngineDefaults\":1,\"optionQuality\":90,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}',
    '2022-05-13 16:28:13'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    167,
    'InputfieldCroppableImage3',
    0,
    '',
    '2022-05-13 16:28:13'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    168,
    'ProcessCroppableImage3',
    1,
    '',
    '2022-05-13 16:28:13'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    169,
    'CookieManagementBanner',
    3,
    '{\"status\":1,\"version\":\"1\",\"autoload_assets\":1,\"js_version\":\"jquery\",\"allow_manage\":1,\"auto_accept\":\"\",\"eu_visitors_only\":\"\",\"ip_country_service\":[\"ip.nf\",\"geoip.nekudo.com\",\"ip.sb\"],\"ip_test\":\"\",\"title\":\"Wir benutzen Cookies\",\"text\":\"<p>Diese Internetseite verwendet Cookies und Google Analytics f\\u00fcr die Analyse und Statistik. Wir nutzen Cookies zu unterschiedlichen Zwecken, unter anderem zur Analyse und f\\u00fcr personalisierte Marketing-Mitteilungen. Durch die weitere Nutzung der Website stimmen Sie der Verwendung zu.<\\/p>\",\"accept_btn_text\":\"Cookies akzeptieren\",\"manage_btn_text\":\"Cookies bearbeiten\",\"manage_title\":\"\",\"manage_text\":\"<p>Wir verwenden Cookies, um Inhalte und Anzeigen zu personalisieren, Funktionen f\\u00fcr soziale Medien anbieten zu k\\u00f6nnen und die Zugriffe auf unsere Website zu analysieren. Au\\u00dferdem geben wir Informationen zu Ihrer Verwendung unserer Website an unsere Partner f\\u00fcr soziale Medien, Werbung und Analysen weiter. Unsere Partner f\\u00fchren diese Informationen m\\u00f6glicherweise mit weiteren Daten zusammen, die Sie ihnen bereitgestellt haben oder die sie im Rahmen Ihrer Nutzung der Dienste gesammelt haben.<\\/p>\",\"consent_label\":\"Ich akzeptiere\",\"no_consent_label\":\"ablehnen\",\"preferences_btn_text\":\"Speichern\",\"preferences_saved_message\":\"Cookies wirden gespeichert\",\"style\":\"bottom_overlay\",\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}',
    '2022-05-13 20:50:36'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    170,
    'PageHitCounter',
    3,
    '{\"forTemplates\":[\"home\",\"basic-page\"],\"forAPITemplates\":[],\"cookielessTracking\":1,\"sessionLifetime\":\"1200\",\"ignoreURLSegments\":\"\",\"showForBackend\":1,\"excludeTemplates\":[],\"botFilter\":\"\",\"ipValidation\":\"\",\"customAttributes\":\"defer\",\"thousandSeparator\":\".\",\"forRoles\":[],\"ipFilter\":\"\",\"resetSelector\":\"\",\"dryRun\":1,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}',
    '2022-05-18 13:09:32'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    171,
    'FieldtypePageHitCounter',
    1,
    '',
    '2022-05-18 13:09:32'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    172,
    'FieldtypeRepeater',
    35,
    '{\"repeatersRootPageID\":1028,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}',
    '2022-05-18 13:29:02'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    173,
    'InputfieldRepeater',
    0,
    '',
    '2022-05-18 13:29:02'
  );
INSERT INTO
  `modules` (`id`, `class`, `flags`, `data`, `created`)
VALUES
  (
    174,
    'FieldtypeFieldsetPage',
    35,
    '{\"repeatersRootPageID\":1028,\"uninstall\":\"\",\"submit_save_module\":\"Submit\"}',
    '2022-05-18 13:29:19'
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
    '2022-05-30 12:10:27',
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
    '2022-05-13 15:24:39',
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
    1016,
    1,
    29,
    'salat-dressing',
    1,
    '2022-05-15 20:19:26',
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
    '2022-06-01 15:31:05',
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
    1026,
    3,
    2,
    'croppable-image-3',
    1025,
    '2022-05-13 16:28:13',
    41,
    '2022-05-13 16:28:13',
    41,
    '2022-05-13 16:28:13',
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
    1025,
    1024,
    29,
    'legal-stuff',
    1,
    '2022-05-14 00:31:56',
    41,
    '2022-05-12 21:10:36',
    41,
    '2022-05-12 21:10:36',
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
    1027,
    31,
    5,
    'croppable-image-3',
    1,
    '2022-05-13 16:28:13',
    41,
    '2022-05-13 16:28:13',
    41,
    '2022-05-13 16:28:13',
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
    1028,
    2,
    2,
    'repeaters',
    1036,
    '2022-05-18 13:29:02',
    41,
    '2022-05-18 13:29:02',
    41,
    '2022-05-18 13:29:02',
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
    1029,
    1028,
    2,
    'for-field-112',
    17,
    '2022-05-18 13:31:02',
    41,
    '2022-05-18 13:31:02',
    41,
    '2022-05-18 13:31:02',
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
    1030,
    1029,
    2,
    'for-page-1',
    17,
    '2022-05-18 13:35:17',
    41,
    '2022-05-18 13:35:17',
    41,
    '2022-05-18 13:35:17',
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
    1031,
    1030,
    44,
    '1652873727-2169-1',
    1,
    '2022-05-19 15:22:31',
    41,
    '2022-05-18 13:35:27',
    41,
    '2022-05-18 13:40:48',
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
    1032,
    1030,
    44,
    '1652873728-6004-1',
    1,
    '2022-05-30 12:10:27',
    41,
    '2022-05-18 13:35:28',
    41,
    '2022-05-18 13:40:48',
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
    1033,
    1,
    45,
    'settings',
    1057,
    '2022-06-01 14:22:58',
    41,
    '2022-06-01 14:00:16',
    41,
    '2022-06-01 14:00:35',
    8
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
  (1027, 2, '2022-05-13 16:28:13');
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
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (1031, 2, '2022-05-18 13:35:27');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (1032, 2, '2022-05-18 13:35:28');
INSERT INTO
  `pages_access` (`pages_id`, `templates_id`, `ts`)
VALUES
  (1033, 1, '2022-06-01 14:00:16');

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
INSERT INTO
  `pages_parents` (`pages_id`, `parents_id`)
VALUES
  (1028, 2);
INSERT INTO
  `pages_parents` (`pages_id`, `parents_id`)
VALUES
  (1029, 2);
INSERT INTO
  `pages_parents` (`pages_id`, `parents_id`)
VALUES
  (1029, 1028);
INSERT INTO
  `pages_parents` (`pages_id`, `parents_id`)
VALUES
  (1030, 2);
INSERT INTO
  `pages_parents` (`pages_id`, `parents_id`)
VALUES
  (1030, 1028);
INSERT INTO
  `pages_parents` (`pages_id`, `parents_id`)
VALUES
  (1030, 1029);

# ------------------------------------------------------------
# DATA DUMP FOR TABLE: pages_sortfields
# ------------------------------------------------------------


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: session_login_throttle
# ------------------------------------------------------------

INSERT INTO
  `session_login_throttle` (`name`, `attempts`, `last_attempt`)
VALUES
  ('admin', 1, 1654084377);

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
    '{\"useRoles\":1,\"parentTemplates\":[2],\"allowPageNum\":1,\"redirectLogin\":23,\"slashUrls\":1,\"noGlobal\":1,\"compile\":3,\"modified\":1653125056,\"ns\":\"ProcessWire\"}'
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
    '{\"useRoles\":1,\"noParents\":1,\"slashUrls\":1,\"compile\":3,\"modified\":1654085007,\"ns\":\"\\\\\",\"roles\":[37]}'
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
    '{\"slashUrls\":1,\"compile\":3,\"modified\":1654088324,\"ns\":\"\\\\\"}'
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
    44,
    'repeater_home_page_text',
    98,
    8,
    0,
    '{\"noChildren\":1,\"noParents\":1,\"slashUrls\":1,\"pageClass\":\"RepeaterPage\",\"noGlobal\":1,\"compile\":3,\"modified\":1652873462}'
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
    45,
    'settings',
    99,
    0,
    0,
    '{\"slashUrls\":1,\"compile\":3,\"modified\":1654084793,\"ns\":\"\\\\\"}'
  );

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
