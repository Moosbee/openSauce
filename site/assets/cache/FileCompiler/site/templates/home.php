<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/18e03e461d.js" crossorigin="anonymous"></script>

    <link rel="shortcut icon" href="<?php echo $config->urls->root ?>favicon.ico" type="image/x-icon">

    <!-- <script src="<?php echo $config->urls->templates ?>scripts/live.js"></script> -->
    <script src="<?php echo $config->urls->templates ?>scripts/index.js"></script>
    <script src="<?php echo $config->urls->templates ?>scripts/slider.js"></script>
    <script src="<?php echo $config->urls->templates ?>scripts/jquery-3.6.0.min.js"></script>

    <link rel="stylesheet" media="screen" href="https://fontlibrary.org//face/open-sauce-one" type="text/css" />

    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/style.css">
    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/menuestyle.css">
    <link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/sliderstyle.css">

    <title>Open Sauce</title>

</head>

<body>
    <nav id="nav">
        <ul class="menu">
            <li><a href="<?php echo $config->urls->root ?>">Home</a></li>
            <li class="dropdown">
                <a href="">Service</a>
                <ul class="submenu">
                    <li>
                        <a href="">satu</a>
                    </li>
                    <li class="dropdown">
                        <a href="">dua</a>
                        <ul class="submenu">
                            <li class="dropdown">
                                <a href="">jeruh dua</a>
                                <ul class="submenu">
                                    <li>
                                        <a href="">mentok satu</a>
                                    </li>
                                    <li class="dropdown">
                                        <a href="">mentok dua</a>
                                        <ul class="submenu">
                                            <li>
                                                <a href="">njedok prend satu</a>
                                            </li>
                                            <li>
                                                <a href="">njedok prend dua</a>
                                            </li>
                                            <li>
                                                <a href="">njedok prend tiga</a>
                                            </li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="">mentok satu</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="">jeruh satu</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </li>
            <?php
            $homepage = $pages->get("/");

            function echoChild($child)
            {
                echo "<li>";
                echoLink($child);
                echo "</li>";
            }
            function echoLink($child)
            {
                echo "<a href='$child->url'>$child->title</a>";
            }

            function echoChildren($childs)
            {
                foreach ($childs as $child) {

                    if ($child->hasChildren()) {
                        echo '<li class="dropdown">';
                        echoLink($child);
                        echo '<ul class="submenu">';
                        echoChildren($child->children());
                        echo "</ul></li>";
                    } else {
                        echoChild($child);
                    }
                }
            }

            echoChildren($homepage->children());
            ?>
        </ul>
        <!-- <div class="menu">
            <button id="openClose">
                <div class="fas fa-align-justify small switchIcon"></div>
                <div class="fas fa-times small switchIcon start"></div>
            </button>
            <div class="menuitemsdesktop">
                <a class="menuboxdesktop" href="">Home</a>
                <?php
                // $homepage = $pages->get("/");

                // function echoChild($child)
                // {
                //     echo "<a class='menuboxdesktop' href='$child->url'>$child->title</a>";
                // }

                // function echoChildren($childs)
                // {
                //     foreach ($childs as $child) {

                //         if ($child->hasChildren()) {
                //             echo "<div class='menuboxdesktop'>";
                //             echoChild($child);
                //             echoChildren($child->children());
                //             echo "</div>";
                //         } else {
                //             echoChild($child);
                //         }
                //     }
                // }

                // echoChildren($homepage->children());
                ?>

            </div>
        </div> -->
        <!-- <div class="menuitemspocket start">
            <a class="menubox" href="./index.php">Haupseite</a>
            <a class="menubox" href="./funktion.php">Funktion</a>
            <a class="menubox" href="./quellen.php">Quelle</a>
        </div> -->
    </nav>
    <header>
        <div class="slider">
            <div id="slideimg">
                <img width="600" height="300" src="https://via.placeholder.com/600x300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://via.placeholder.com/600x300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://via.placeholder.com/600x300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://via.placeholder.com/600x300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://via.placeholder.com/600x300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://via.placeholder.com/600x300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://via.placeholder.com/600x300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://via.placeholder.com/600x300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://via.placeholder.com/600x300" alt="Images" class="SliderItems">
                <img width="600" height="300" src="https://via.placeholder.com/600x300" alt="Images" class="SliderItems">
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