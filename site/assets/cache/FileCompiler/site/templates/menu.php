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