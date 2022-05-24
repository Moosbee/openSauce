<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <script src="https://kit.fontawesome.com/18e03e461d.js" crossorigin="anonymous"></script>

    <!-- <script src="<?php echo $config->urls->templates ?>scripts/live.js"></script> -->
    <script src="<?php echo $config->urls->templates ?>scripts/index.js"></script>
    <script src="<?php echo $config->urls->templates ?>scripts/menu.js"></script>
    <script src="<?php echo $config->urls->templates ?>scripts/jquery-3.6.0.min.js"></script>

    <link href="<?php echo $config->urls->templates ?>styles/open-sauce-font.css" rel="stylesheet" type="text/css" />
    <!-- <link rel="stylesheet" media="screen" href="https://fontlibrary.org//face/open-sauce-one" type="text/css" /> -->

    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/style.css">
    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/menuestyle.css">
    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/footer.css">

    <title><?php echo ($page->title == "Home" ? "OpenSauce" : $page->title) ?></title>

    <?php
    $image = $page->favicon;
    if ($image) {
        $fav16x16 = $image->getCrop('16x16');
        $fav32x32 = $image->getCrop('32x32');
        echo "<link rel='icon' type='image/png' href='$fav16x16->url' sizes='32x32' />";
        echo "<link rel='icon' type='image/png' href='$fav32x32->url' sizes='16x16' />";
    } else {
        echo "<link rel='icon' type='image/png' href='" . $config->urls->root . "favicon-32x32.png' sizes='32x32' />";
        echo "<link rel='icon' type='image/png' href='" . $config->urls->root . "favicon-16x16.png' sizes='16x16' />";
    }
    ?>
</head>

<body>
    <?php
    include("./menu.php");
    ?>
    <main>

        <?php echo $page->standart_text;  ?>

    </main>
    <?php
    include("./footer.php");
    ?>
</body>

</html>