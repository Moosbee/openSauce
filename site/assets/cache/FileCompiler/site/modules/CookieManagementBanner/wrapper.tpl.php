<?php
//you probably don't want to change any of the js-* prefixed classes
?>
<div id="cookie-manager" class="pwcmb pwcmb--<?php print $module->style; ?>">
    <?php require(\ProcessWire\wire('files')->compile($this->wire('config')->paths->$module.'notice.tpl.php',array('includes'=>true,'namespace'=>true,'modules'=>false,'skipIfNamespace'=>false))); ?>
    <?php if($module->allow_manage) require(\ProcessWire\wire('files')->compile($this->wire('config')->paths->$module.'manage.tpl.php',array('includes'=>true,'namespace'=>true,'modules'=>false,'skipIfNamespace'=>false))); ?>
    <?php require(\ProcessWire\wire('files')->compile($this->wire('config')->paths->$module.'message.tpl.php',array('includes'=>true,'namespace'=>true,'modules'=>false,'skipIfNamespace'=>false))); ?>
</div>
