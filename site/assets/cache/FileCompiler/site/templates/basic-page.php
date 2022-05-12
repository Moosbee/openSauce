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
	<script src="<?php echo $config->urls->templates ?>scripts/menu.js"></script>
	<script src="<?php echo $config->urls->templates ?>scripts/slider.js"></script>
	<script src="<?php echo $config->urls->templates ?>scripts/jquery-3.6.0.min.js"></script>

	<!-- <link rel="stylesheet" media="screen" href="https://fontlibrary.org//face/open-sauce-one" type="text/css" /> -->
	<link href="<?php echo $config->urls->templates ?>styles/open-sauce-font.css" rel="stylesheet" type="text/css" />

	<link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/style.css">
	<link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/menuestyle.css">
	<link rel="stylesheet" href="<?php echo $config->urls->templates ?>styles/sliderstyle.css">
	<title><?php echo ($page->title == "Home" ? "OpenSauce" : $page->title) ?></title>

</head>

<body>
	<nav>
		<div class="mobilemenu">
			<a class="menuicon" href="<?php echo $config->urls->root ?>"><img class="logo" src="<?php echo $config->urls->templates ?>images/logo1.png" alt="Logo" srcset=""></a>
			<h1 class="Titel">OpenSauce</h1>
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
				<div><a href="">Service</a></div>
				<ul class="submenu">
					<li>
						<div> <a href="">satu</a></div>
					</li>
					<li class="dropdown">
						<div><a href="">dua</a></div>
						<ul class="submenu">
							<li class="dropdown">
								<div> <a href="">jeruh dua</a></div>
								<ul class="submenu">
									<li>
										<div> <a href="">mentok satu</a></div>
									</li>
									<li class="dropdown">
										<div><a href="">mentok dua</a></div>
										<ul class="submenu">
											<li>
												<div> <a href="">njedok prend satu</a></div>
											</li>
											<li>
												<div><a href="">njedok prend dua</a></div>
											</li>
											<li>
												<div><a href="">njedok prend tiga</a></div>
											</li>
										</ul>
									</li>
									<li>
										<div><a href="">mentok satu</a></div>
									</li>
								</ul>
							</li>
							<li>
								<div><a href="">jeruh satu</a></div>
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
	</nav>
	<section>

	</section>
	<footer>
		<h6>© Bernhard Rieder</h6>
		<h6>Fuck You</h6>
		<?php if ($page->editable()) echo "<p><a href='$page->editURL'>Edit</a></p>"; ?>
	</footer>
</body>

</html>