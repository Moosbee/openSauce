<script src="https://kit.fontawesome.com/18e03e461d.js" crossorigin="anonymous"></script>
<script src="<?php echo $config->urls->templates ?>scripts/jquery-3.6.0.min.js"></script>

<!-- <link rel="stylesheet" media="screen" href="https://fontlibrary.org//face/open-sauce-one" type="text/css" /> -->
<link href="<?php echo $config->urls->templates ?>styles/open-sauce-font.css" rel="stylesheet" type="text/css" />

<!-- <script src="<?php echo $config->urls->templates ?>scripts/live.js"></script> -->


<title><?php echo ($page->title == "Home" ? $pages->get('/settings/')->webseiten_titel : $page->title) ?> <?php echo $page->phits; ?> Views</title>

<?php
$image = $page->favicon;
if ($image) {
    $fav16x16 = $image->getCrop('16x16');
    $fav32x32 = $image->getCrop('32x32');
    echo "<link rel='icon' type='image/png' href='$fav16x16->url' sizes='32x32' />";
    echo "<link rel='icon' type='image/png' href='$fav32x32->url' sizes='16x16' />";
} else {
    $image = $pages->get('/settings/')->favicon;
    $fav16x16 = $image->getCrop('16x16');
    $fav32x32 = $image->getCrop('32x32');
    echo "<link rel='icon' type='image/png' href='$fav16x16->url' sizes='32x32' />";
    echo "<link rel='icon' type='image/png' href='$fav32x32->url' sizes='16x16' />";
}
?>