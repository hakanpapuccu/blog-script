<div id="column-2">
	<div class="sidebar">
		<input type="search" class="search-field" placeholder="Arama …" value="" name="s" title="Arama:">
	</div>

	<div class="sidebar">
		<h4>Kategoriler	</h4>
		<ul class="social list">

			<?php 
			$kategorisor=$db->prepare("select * from kategoriler order by kategori_id asc");
			$kategorisor->execute();
			while ($kategoricek=$kategorisor->fetch(PDO::FETCH_ASSOC)) { ?>

				<li class="border">
					<a href="category.php?kategori_id=<?php echo $kategoricek['kategori_id']; ?>"><img src="img/category.jpg"/><span><?php echo $kategoricek['ad']; ?></span></a>
				</li>
			<?php } ?>

		</ul>
	</div>
	<div class="sidebar">
		<h4>Son Yazılarım</h4>

		<?php 
		$yazisor=$db->prepare("select * from yazilar order by id desc limit 5");
		$yazisor->execute();
		while ($yazicek=$yazisor->fetch(PDO::FETCH_ASSOC)) { ?>
			<div class="sidebar-post">
				<a href="post.php?id=<?php echo $yazicek['id']; ?>"><img src="img/<?php echo $yazicek['resim']; ?>" alt="<?php echo $yazicek['baslik']; ?>"/></a>
				<div class="sidebar-post-info">
					<h3><a href="post.php?id=<?php echo $yazicek['id']; ?>"><?php echo $yazicek['baslik']; ?></a></h3>
				</div>
				<div class="sidebar-post-meta">
					<?php echo $yazicek['tarih']; ?> 
				</div>
			</div>

		<?php } ?>
		
		
		
		
	</div>
	<div class="sidebar">
		<h4>Sosyal Aglar</h4>
		<ul class="social list">

			<?php 
			$sosyalsor=$db->prepare("select * from sosyal order by id asc");
			$sosyalsor->execute();
			while ($sosyalcek=$sosyalsor->fetch(PDO::FETCH_ASSOC)) { ?>

				<li class="border">
					<a href="<?php echo $sosyalcek['link']; ?>"><img src="img/socials/<?php echo $sosyalcek['ikon']; ?>" alt="<?php echo $sosyalcek['ad']; ?>"/><span><?php echo $sosyalcek['ad']; ?></span></a>
				</li>
			<?php } ?>

		</ul>
	</div>
	
</div>
<!-- Column 2 END -->
<div style="clear:both;"></div>
</div>