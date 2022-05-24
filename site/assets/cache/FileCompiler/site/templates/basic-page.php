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
    <nav>
        <div class="navigation">
            <div class="mobilemenu">
                <a class="menuicon" href="<?php echo $config->urls->root ?>"><img class="logo" src="<?php echo $config->urls->templates ?>images/logo1.png" alt="Logo" srcset=""></a>
                <h1 class="Titel"><?php echo ($page->title == "Home" ? "OpenSauce" : $page->title) ?></h1>
                <button id="openClose">
                    <div class="fas fa-align-justify small switchIcon"></div>
                    <div class="fas fa-times small switchIcon start"></div>
                </button>
            </div>
            <ul class="menu hidefon">
                <li>
                    <div><a href="<?php echo $config->urls->root ?>">Home</a></div>
                </li>
                <li class="dropdown">
                    <div><a href="">Options</a></div>
                    <ul class="submenu">
                        <li>
                            <div>
                                <a href="#cookies" class="js-pwcmb-notice-toggle">Manage Your Cookies</a>
                            </div>
                        </li>
                        <li>
                            <div>
                                <?php
                                if ($user->isLoggedin()) {
                                    // if user is logged in, show a logout link
                                    echo "<a href='{$config->urls->admin}login/logout/'>Logout ($user->name)</a>";
                                } else {
                                    // if user not logged in, show a login link
                                    echo "<a href='{$config->urls->admin}'>Admin Login</a>";
                                }
                                ?>
                            </div>
                        </li>
                        <?php
                        if ($page->editable()) {
                            echo "<li>";
                            echo "<div><a href='$page->editURL'>Edit</a></div>";
                            echo "</li>";
                        }
                        ?>
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
                    echo "<div><a href='$child->url'>$child->title</a></div>";
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
        </div>
        <div class='breadcrumbs' aria-label='You are here:'>
            <?php

            // breadcrumbs are the current page's parents
            foreach ($page->parents() as $item) {
                echo "<span><a href='$item->url'>$item->title</a></span> <i class='fa-solid fa-angle-right'></i> ";
            }
            // optionally output the current page as the last item
            echo "<span>$page->title</span> ";

            ?>
        </div>
    </nav>
    <main>

        <?php echo $page->standart_text;  ?>

    </main>
    <footer>
        <p class="footerdark">Copyright © 2022 OpenSause</p>
        <div>
            <a href="<?php echo $config->urls->root ?>/about-us/legal-stuff">Legal Stuff</a>
            <a class="footerdark" href="<?php echo ($page->editable() ? $page->editURL : "#") ?>"><?php echo ($page->editable() ? "Edit" : "|") ?></a>
            <a href="<?php echo $config->urls->root ?>/about-us/privacy-policy/">Privacy Policy</a>
        </div>
    </footer>
</body>

</html>