<footer>
    <p class="footerdark">Copyright © 2022 OpenSause</p>
    <div>
        <a href="<?php echo $config->urls->root ?>/about-us/legal-stuff">Legal Stuff</a>
        <a class="footerdark" href="<?php echo ($page->editable() ? $page->editURL : "#") ?>"><?php echo ($page->editable() ? "Edit" : "|") ?></a>
        <a href="<?php echo $config->urls->root ?>/about-us/privacy-policy/">Privacy Policy</a>
    </div>
</footer>