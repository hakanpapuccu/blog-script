<?php include "header.php"; ?>
<div id="columns" class="container">
	<!-- Column 1 -->
	<div id="column-1">
		<div class="page-subject">
			İletişim
		</div>
		<div class="page-cont box-shadow">
		<div id="page">
		<form action="" method="post">
			<p class="cont">Lütfen aşağıdaki alanları eksiksiz doldurunuz.</p>
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
		<div style="clear:both;"></div>
	</div>
	<!-- Column 1 END -->
	<!-- Column 2 -->
	<?php include "sidebar.php"; ?>
<!-- Footer -->
<?php include "footer.php"; ?>