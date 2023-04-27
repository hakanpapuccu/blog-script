<?php include "baglan.php"; 
$ayarsor=$db->prepare("select * from ayar where id=?");
$ayarsor->execute(array(0));
$ayarcek=$ayarsor->fetch(PDO::FETCH_ASSOC);

$menusor=$db->prepare("select * from menu");
$menusor->execute();


?>



<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="description" content="<?php echo $ayarcek['aciklama']; ?>">
	<meta name="keywords" content="<?php echo $ayarcek['anahtarkelime']; ?>">
	<meta name="author" content="<?php echo $ayarcek['yazar']; ?>">
	<title><?php echo $ayarcek['baslik']; ?></title>
	
	<link rel="stylesheet" type="text/css" href="css/style.css" media="all"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
	<!--[if lt IE 9]><script src="js/html5shiv.js"></script><![endif]-->
	<link rel="stylesheet" id="extra-fonts-css" href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&amp;subset=latin,latin-ext" type="text/css" media="all">
	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script>
		$(function(){
			$(".footer-nav ul.footer li:last").css({border:"0"});
			$("#pop ul.footer li:last").css({border:"0"});
		});
	</script>
</head>
<body>
	<header>
		<div class="container">
			<div id="logo">
				<a href="index.php"><img src="img/<?php echo $ayarcek['logo']; ?>" alt="Emrullah Tanıma Logosu" width="352px" height="68px"/></a>
			</div>
			<nav>
				<ul>
					<?php 

					while ($menucek=$menusor->fetch(PDO::FETCH_ASSOC)) { ?>

						<li><a href="<?php echo $menucek['link'] ?>" title="<?php echo $menucek['ad'] ?>"><?php echo $menucek['ad'] ?></a></li>
						
					<?php } ?>
					
					
				</ul>
			</nav>
			<div style="clear:both;"></div>
		</div>
	</header>