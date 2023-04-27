<?php include "header.php";
$id=$_GET['id'];
$yazisor=$db->prepare("select * from yazilar where id=?");
$yazisor->execute(array($id));
$yazicek=$yazisor->fetch(PDO::FETCH_ASSOC);


 ?>
<div id="columns" class="container">
	<!-- Column 1 -->
	<div id="column-1">
		<!-- Post -->
		<div class="post">
			<div class="post-header">
				<h1><?php echo $yazicek['baslik']; ?></h1>
			</div>
			

			<div class="post-thumbnail">
				<img src="img/<?php echo $yazicek['resim']; ?>" alt="<?php echo $yazicek['resim']; ?>">
			</div>
			<div class="post-text">
				<?php echo $yazicek['icerik']; ?>
			</div>
			<div style="clear:both;"></div>
			<div class="post-info">
				<p>
					<span class="left"><strong>Yayınlanma Tarihi :</strong> <?php echo $yazicek['tarih']; ?></span>
					<!--<span class="right"><a href="#" title="Dosyaları İndir">Dosyaları Indir</a></span> -->
				</p>
				<div style="clear:both;"></div>
			</div>
			
		</div>
		<!-- Post -->
		<!-- Related Post-->
		<div class="related-post">
			<h2>Benzer Yazılar</h2>
			<div class="related-post-item">
				<a href="#"><img src="img/kid.jpg"/></a>
				<h3><a href="#">Why Our kids  need play</a></h3>
				<p>3 Aralık 2015 - 22:45</p>
			</div>
			<div class="related-post-item">
				<a href="#"><img src="img/rat.jpg"/></a>
				<h3><a href="#">Why Our kids  need play</a></h3>
				<p>3 Aralık 2015 - 22:45</p>
			</div>
			<div class="related-post-item">
				<a href="#"><img src="img/10.jpg"/></a>
				<h3><a href="#">Why Our kids  need play</a></h3>
				<p>3 Aralık 2015 - 22:45</p>
			</div>
			<div class="related-post-item">
				<a href="#"><img src="img/pasta.jpg"/></a>
				<h3><a href="#">Why Our kids  need play</a></h3>
				<p>3 Aralık 2015 - 22:45</p>
			</div>
		</div>

		<div class="page-cont box-shadow">
		<div id="page">
		<form action="" method="post">
			<h1 style="padding-bottom: 2%; font-size:16px;">YORUM YAP</h1>
			
			<div class="fieldset">
				<input type="text" name="name" value="Adınız Soyadınız"/>
			</div>
			<div class="fieldset">
				<input type="text" name="email" value="Email Adresiniz"/>
			</div>
			<div class="fieldset">
				<input type="text" name="subject" value="Mesaj Konusu"/>
			</div>
			<div style="clear:both;"></div>
			<div class="fieldset-textarea">
				<textarea name="message" rows="10">Mesajınız</textarea>
			</div>
			<button type="submit" class="submit" style="float:right; margin-right:3%; margin-top:3%; margin-bottom:5%;">Gönder</button>
		</form>
		</div>
		</div>
		<!-- Related Post End -->
	</div>
	<!-- Column 1 END -->
	<!-- Column 2 -->
	<?php include "sidebar.php"; ?>
	<!-- Column 2 END -->
	<div style="clear:both;"></div>
</div>
<!-- Footer -->
<?php include "footer.php"; ?>