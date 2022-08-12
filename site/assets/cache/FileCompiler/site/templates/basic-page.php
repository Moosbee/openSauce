<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <script src="<?php echo $config->urls->templates ?>scripts/index.js"></script>
    <script src="<?php echo $config->urls->templates ?>scripts/menu.js"></script>


    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/style.css">
    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/menuestyle.css">
    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/footer.css">


    <?php
 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/teilHeader.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));
    ?>
</head>

<body>
    <?php
 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/menu.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));
    ?>
    <main>

        <?php echo $page->standart_text;  ?>

    </main>
    <?php
 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/footer.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));
    ?>
</body>

</html>