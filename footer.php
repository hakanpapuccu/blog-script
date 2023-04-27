<?php 
$hakkimizdasor=$db->prepare("select * from aboutme where id=?");
$hakkimizdasor->execute(array(0));
$hakkimizdacek=$hakkimizdasor->fetch(PDO::FETCH_ASSOC);

?>
<footer>
	<div class="container" id="footer-top">
		<div class="footer-nav">
			
			
			<img src="img/logo.png" />
			<p style="color:white; line-height:20px; text-indent:50px; text-align:justify;"><?php echo strip_tags(substr($hakkimizdacek['metin'],0,750)); ?></p>

			

			
			
			
			
			
		</div>
		<div class="footer-nav" id="pop">
			<h4>En Popüler Yazılar</h4>
			<ul class="footer">
				<?php 
				$yazisor=$db->prepare("select * from yazilar order by id desc limit 4");
				$yazisor->execute();
				while ($yazicek=$yazisor->fetch(PDO::FETCH_ASSOC)) { ?>
					<li>
						<a href="post.php?id=<?php echo $yazicek['id']; ?>" class="left"><img src="img/<?php echo $yazicek['resim']; ?>" alt="Fashion"></a>
						<div class="footer-nav-item">
							<a href="post.php?id=<?php echo $yazicek['id']; ?>"><?php echo $yazicek['baslik']; ?></a>
							<p><?php echo $yazicek['tarih']; ?></p>
						</div>
						<div style="clear:both;"></div>
					</li>

				<?php } ?>

				</ul>
			</div>
			<div class="footer-nav">
				<h4>Son Yorum Yapılan Yazılar</h4>
				<ul class="footer">
					<li>
						<a href="#" class="left"><img src="img/fashion.jpg" alt="Fashion"></a>
						<div class="footer-nav-item">
							<a href="#">Fashion web util</a>
							<p>3 aralık 2015</p>
						</div>
						<div style="clear:both;"></div>
					</li>
					<li>
						<a href="#" class="left"><img src="img/pasta.jpg" alt="Fashion"></a>
						<div class="footer-nav-item">
							<a href="#">Family Fun With Pasta</a>
							<p>3 aralık 2015</p>
						</div>
						<div style="clear:both;"></div>
					</li>
					<li>
						<a href="#" class="left"><img src="img/women.jpg" alt="Fashion"></a>
						<div class="footer-nav-item">
							<a href="#">Women’s Fashion In 2015</a>
							<p>3 aralık 2015</p>
						</div>
						<div style="clear:both;"></div>
					</li>
					<li>
						<a href="#" class="left"><img src="img/kid.jpg" alt="Fashion"></a>
						<div class="footer-nav-item">
							<a href="#">Why Our Kids Need Play</a>
							<p>3 aralık 2015</p>
						</div>
						<div style="clear:both;"></div>
					</li>
				</ul>
			</div>
		</div>
	</footer>
	<!-- Footer  END -->
	<!-- Copyright -->
	<div id="copyright">
		<div class="container">
			<div id="design">
				<?php echo $ayarcek['copyright']; ?>
			</div>
			<nav>
				<ul>
					<li><h5><a href="#">anasayfa</a></h5></li>
					<li><h5><a href="#">hakkımda</a></h5></li>
					<li><h5><a href="#">php</a></h5></li>
					<li><h5><a href="#">jquery</a></h5></li>
					<li><h5><a href="#">Genel makaleler</a></h5></li>
					<li><h5><a href="#">market</a></h5></li>
					<li><h5><a href="#">referanslar</a></h5></li>
					<li><h5><a href="#">iletisim</a></h5></li>
				</ul>
			</nav>
		</div>
	</div>
	<!-- Copyright End -->
</body>
</html>