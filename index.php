<?php include "header.php";
$sayfada=6;
$yazilarsor=$db->prepare("select * from yazilar");
$yazilarsor->execute();
$toplam_yazi=$yazilarsor->RowCount();
$toplam_sayfa=ceil($toplam_yazi/$sayfada);
$sayfa=isset($_GET['sayfa']) ? (int) $_GET['sayfa'] : 1;
if ($sayfa<1) $sayfa=1;
if ($sayfa>$toplam_sayfa) $sayfa=$toplam_sayfa;
$limit=($sayfa-1)*$sayfada;

$yazisor=$db->prepare("select * from yazilar inner join kategoriler on kategoriler.kategori_id=yazilar.kategori order by id DESC limit $limit, $sayfada");
$yazisor->execute();

?>
<div id="columns" class="container">
	<!-- Column 1 -->
	<div id="column-1">

		<?php 

		while ($yazicek=$yazisor->fetch(PDO::FETCH_ASSOC)) { ?>


			<div class="post-column">
				
					<a href="post.php?id=<?php echo $yazicek['id']; ?>" title="Vektörel">
						<img src="img/<?php echo $yazicek['resim'] ?>" alt="<?php echo $yazicek['resim'] ?>" width="440px" height="260px"/>

					</a>
				
				<div class="post-column-bottom">
					<h1><a href="post.php?id=<?php echo $yazicek['id']; ?>" title="Vektörel"><?php echo $yazicek['baslik'] ?></a></h1>
					<div class="post-column-meta">
						<span><a href="category.php?kategori_id=<?php echo $yazicek['kategori_id']; ?>"><?php echo $yazicek['ad'] ?></a></span>
						<span><?php echo $yazicek['tarih'] ?></span>
						

						
					</div>
					<p class="post-column-desc">
						<?php echo strip_tags(substr($yazicek['icerik'],0,200)); ?>
					</p>
					<div class="read-more">
						<h2><a href="post.php?id=<?php echo $yazicek['id']; ?>" class="read-more" title="Devamını Gor">DEVAMINI GOR</a></h2>
					</div>
				</div>
			</div>

		<?php } ?>





		<div style="clear:both;"></div>
		<div id="page-numbers" class="box-shadow">
			<ul>

				<li><span>SAYFA:</span></li>
				<?php 

				$s=0;
				while ($s<$toplam_sayfa) {
					$s++; ?>

					<?php 

					if ($s==$sayfa) { ?>

						<li><a href="index.php?sayfa=<?php echo $s; ?>"><?php echo $s; ?></a></li>

					<?php  } else { ?>

						<li><a href="index.php?sayfa=<?php echo $s; ?>"><?php echo $s; ?></a></li>

					<?php   } } ?>


				</ul>
				<div style="clear:both;"></div>
			</div>
		</div>
		<!-- Column 1 END -->
		<!-- Column 2 -->
		<?php include "sidebar.php"; ?>
		<!-- Footer -->
		<?php include "footer.php"; ?>