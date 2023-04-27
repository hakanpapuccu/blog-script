<?php include "header.php";
$hakkimizdasor=$db->prepare("select * from aboutme where id=?");
$hakkimizdasor->execute(array(0));
$hakkimizdacek=$hakkimizdasor->fetch(PDO::FETCH_ASSOC);

?>
<div id="columns" class="container">
	<!-- Column 1 -->
	<div id="column-1">
		<!-- Post -->
		<div class="post">
			<div class="post-header">
				<h1><?php echo $hakkimizdacek['baslik']; ?></h1>
			</div>
			
			
			<div class="post-text">
				<p><?php echo $hakkimizdacek['metin']; ?></p>
			</div>
			<div style="clear:both;"></div>
			<div class="post-info">
				
				<div style="clear:both;"></div>
			</div>
			
		</div>
		<!-- Post -->
		<!-- Related Post-->
		
		<!-- Related Post End -->
	</div>
	<!-- Column 1 END -->
	<!-- Column 2 -->
	<?php include "sidebar.php"; ?>
	<!-- Footer -->
	<?php include "footer.php"; ?>