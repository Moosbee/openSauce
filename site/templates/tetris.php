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
    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/blockrain.css">


    <?php
    include("./teilHeader.php");
    ?>
    <script src="<?php echo $config->urls->templates ?>scripts/blockrain.jquery.js"></script>

</head>

<body>
    <?php
    include("./menu.php");
    ?>
    <main class="tetris" style="height:500px;">

    </main>
    <script>
        $('.tetris').blockrain({
            blockWidth: 200, // How many blocks wide the field is (The standard is 10 blocks)
            autoBlockWidth: false, // The blockWidth is dinamically calculated based on the autoBlockSize. Disabled blockWidth. Useful for responsive backgrounds
            autoBlockSize: 1, // The max size of a block for autowidth mode
        });
    </script>
    <?php
    include("./footer.php");
    ?>
</body>

</html>