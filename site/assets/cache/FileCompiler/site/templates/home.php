<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/footer.css">

    <script src="<?php echo $config->urls->templates ?>scripts/index.js"></script>
    <script src="<?php echo $config->urls->templates ?>scripts/menu.js"></script>
    <script src="<?php echo $config->urls->templates ?>scripts/slider.js"></script>


    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/style.css">
    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/menuestyle.css">
    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/sliderstyle.css">
    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/homepage.css">

    <?php
 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/teilHeader.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));
    ?>
</head>

<body>
    <?php
 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/menu.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));
    ?>
    <header>
        <div class="slider">
            <div id="slideimg">
                <?php
                if ($page->slider_images && count($page->slider_images)) {
                    foreach ($page->slider_images as $image) {
                        $croped = $image->getCrop('MainSlider');
                        echo "
                        <div class='SliderItems'>
                            <img width='1280' height='962' src='$croped->url' alt='Images' class='SliderItemsImages'>
                            <div class='SliderItemsText'>$croped->description</div>
                        </div>
                        ";
                    }
                }
                ?>
                <!-- <img width="900" height="675" src="https://via.placeholder.com/900x675" alt="Images" class="SliderItems"> -->
            </div>
            <div class="Sliderbuttons">
                <button id="Sliderprev" class="Sliderbutton"><i class="fas fa-chevron-left"></i></button>
                <button id="Slidernext" class="Sliderbutton"><i class="fas fa-chevron-right"></i></button>
            </div>
        </div>
    </header>
    <main>
        <div class="zitat">
            <q>
                <?php echo $page->zitat_text;  ?>
            </q>
            <b>
                <?php echo $page->zitat_name;  ?>
            </b>
        </div>
        <hr>
        <div class="cards">

            <?php
            if (count($page->home_page_text)) {
                foreach ($page->home_page_text as $page_text) {
                    echo "<div class='card'>";
                    $image = $page_text->home_page_images;
                    if ($image) {
                        $thumb = $image->getCrop("page");
                        echo "<a class='cardImage' href='$image->url'><img class='cardImageImage' width='1200' height='800'  src='$thumb->url' alt='$image->description'></a>";
                    }
                    echo "<h2>$page_text->home_page_text_title</h2>";
                    echo "<p>$page_text->standart_text</p>";
                    echo "</div>";
                }
            }
            ?>
        </div>
    </main>
    <?php
 include(\ProcessWire\wire('files')->compile(\ProcessWire\wire("config")->paths->root . "site/templates/footer.php",array('includes'=>true,'namespace'=>true,'modules'=>true,'skipIfNamespace'=>true)));
    ?>
</body>

</html>