<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/18e03e461d.js" crossorigin="anonymous"></script>
    
    <link rel="shortcut icon" href="<?php echo $config->urls->root ?>favicon.ico" type="image/x-icon">

    <script src="<?php echo $config->urls->templates ?>scripts/index.js"></script>
    <script src="<?php echo $config->urls->templates ?>scripts/slider.js"></script>
    <script src="<?php echo $config->urls->templates ?>scripts/jquery-3.6.0.min.js"></script>

    <link rel="stylesheet" media="screen" href="https://fontlibrary.org//face/open-sauce-one" type="text/css"/> 

    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/style.css">
    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/menuestyle.css">
    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/sliderstyle.css">

    <title>Open Sauce</title>

</head>

<body>
    <nav id="nav">
        <div class="menu">
            <h1><a href="index.php"><i class="fas fa-cheese"></i>Käse</a></h1>
            <button id="openClose">
                <div class="fas fa-align-justify small switchIcon"></div>
                <div class="fas fa-times small switchIcon start"></div>
            </button>
            <div class="menuitemsdesktop">
                <a class="menuboxdesktop" href="./index.php"><i class="fas fa-landmark"></i> Haupseite</a>
                <a class="menuboxdesktop" href="./funktion.php"><i class="fas fa-cogs"></i> Funktion</a>
                <a class="menuboxdesktop" href="./quellen.php"><i class="fas fa-book"></i> Quelle</a>
                <a class="menuboxdesktop" href="./editieren.php"><i class="fas fa-cheese"></i><sup><i class="fas fa-plus"></i></sup> Neuen Eintrag erstellen</a>

            </div>
        </div>
        <div class="menuitemspocket start">
            <a class="menubox" href="./index.php"><i class="fas fa-landmark"></i> Haupseite</a>
            <a class="menubox" href="./funktion.php"><i class="fas fa-cogs"></i> Funktion</a>
            <a class="menubox" href="./quellen.php"><i class="fas fa-book"></i> Quelle</a>
            <a class="menubox" href="./editieren.php"><i class="fas fa-cheese"></i><sup><i class="fas fa-plus"></i></sup> Neuen Eintrag erstellen</a>
        </div>
    </nav>
    <header>
        <div class="slider">
            <div id="slideimg">

                <img width="600" height="300" src="https://picsum.photos/600/300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://picsum.photos/600/300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://picsum.photos/600/300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://picsum.photos/600/300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://picsum.photos/600/300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://picsum.photos/600/300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://picsum.photos/600/300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://picsum.photos/600/300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://picsum.photos/600/300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://picsum.photos/600/300" alt="Images" class="SliderItems">
            </div>
            <div class="Sliderbuttons">
                <button id="Sliderprev" class="Sliderbutton"><i class="fas fa-chevron-left"></i></button>
                <button id="Slidernext" class="Sliderbutton"><i class="fas fa-chevron-right"></i></button>
            </div>
        </div>
    </header>
    <section>

    </section>
    <footer>
        <h6>© Bernhard Rieder</h6>
        <h6>Fuck You</h6>
        <?php if ($page->editable()) echo "<p><a href='$page->editURL'>Edit</a></p>"; ?>
    </footer>

</body>

</html>