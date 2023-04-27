<?php 
ob_start();
session_start();
include "baglan.php";

if (isset($_POST["giris"])) {

	$kulladi=$_POST['kulladi'];
	$kullpass=md5($_POST['kullpass']);
	

	if ($kulladi && $kullpass) {
		
		$kullanicisor=$db->prepare("SELECT * FROM user WHERE kulladi=:kulladi AND kullpass=:kullpass");
		$kullanicisor->execute(array(
			'kulladi'=>$kulladi,
			'kullpass'=>$kullpass

		));
		$say=$kullanicisor->rowCount();

		if ($say>0) {
			$_SESSION['kulladi']=$kulladi;
			header("Location:admin/production/index.php");

		}else {
			header("Location:admin/production/login.php?durum=no");
		}
	}
}


if (isset($_POST["genelayarguncelle"])) {
	
	$esitle=$db->prepare("UPDATE ayar SET

		url=:url,
		baslik=:baslik,
		aciklama=:aciklama,
		anahtarkelime=:anahtarkelime,
		yazar=:yazar
		WHERE id=0");

	$guncelle=$esitle->execute(array(

		'url' =>$_POST['url'],
		'baslik' =>$_POST['baslik'],
		'aciklama' =>$_POST['aciklama'],
		'anahtarkelime' =>$_POST['anahtarkelime'],
		'yazar' =>$_POST['yazar']


	));

	if ($guncelle) {
		header("Location:admin/production/genel-ayar.php?durum=ok");
	}

	else {
		header("Location:admin/production/genel-ayar.php?durum=no");
	}

}

if (isset($_POST["mailayarguncelle"])) {
	
	$esitle=$db->prepare("UPDATE mail SET

		smtphost=:smtphost,
		smtpuser=:smtpuser,
		smtppassword=:smtppassword,
		smtpport=:smtpport
		WHERE id=0");

	$guncelle=$esitle->execute(array(

		'smtphost' =>$_POST['smtphost'],
		'smtpuser' =>$_POST['smtpuser'],
		'smtppassword' =>$_POST['smtppassword'],
		'smtpport' =>$_POST['smtpport']



	));

	if ($guncelle) {
		header("Location:admin/production/mail-ayar.php?durum=ok");
	}

	else {
		header("Location:admin/production/mail-ayar.php?durum=no");
	}

}

if (isset($_POST["hakkimizdaguncelle"])) {
	
	$esitle=$db->prepare("UPDATE aboutme SET

		baslik=:baslik,
		metin=:metin
		WHERE id=0");

	$guncelle=$esitle->execute(array(

		'baslik' =>$_POST['baslik'],
		'metin' =>$_POST['metin']
		


	));

	if ($guncelle) {
		header("Location:admin/production/hakkimizda.php?durum=ok");
	}

	else {
		header("Location:admin/production/hakkimizda.php?durum=no");
	}

}



if (isset($_POST["yaziekle"])) {

	if ($_FILES['resim']['size']>0) {
		



		$uploads_dir="img/";

		@$tmp_name=$_FILES['resim']['tmp_name'];
		@$name=$_FILES['resim']['name'];
		$random1=rand(20000,32000);
		$random2=rand(20000,32000);
		$random3=rand(20000,32000);
		$random4=rand(20000,32000);
		$randomad=$random1.$random2.$random3.$random4;
		$refimgyol=substr($uploads_dir, 4).$randomad.$name;
		@move_uploaded_file($tmp_name, "$uploads_dir/$randomad$name");



		$esitle=$db->prepare("insert into yazilar SET

			baslik=:baslik,
			icerik=:icerik,
			etiket=:etiket,
			kategori=:kategori,
			resim=:resim

			");

		$guncelle=$esitle->execute(array(

			'baslik' =>$_POST['baslik'],
			'icerik' =>$_POST['icerik'],
			'etiket' =>$_POST['etiket'],
			'kategori' =>$_POST['kategori'],
			'resim' =>$refimgyol



		));

		if ($guncelle) {
			header("Location:admin/production/yazilar.php?durum=ok");
		}

		else {
			header("Location:admin/production/yazilar.php?durum=no");
		}

	} else {
		$esitle=$db->prepare("insert into yazilar SET

			baslik=:baslik,
			icerik=:icerik,
			etiket=:etiket,
			kategori=:kategori
			


			");

		$guncelle=$esitle->execute(array(

			'baslik' =>$_POST['baslik'],
			'icerik' =>$_POST['icerik'],
			'etiket' =>$_POST['etiket'],
			'kategori' =>$_POST['kategori']
			





		));

		if ($guncelle) {
			header("Location:admin/production/yazilar.php?durum=ok");
		}

		else {
			header("Location:admin/production/yazilar.php?durum=no");
		}
	}

}

if (isset($_POST["yaziguncelle"])) {

	if ($_FILES['resim']['size']>0) {

		$uploads_dir="img/";

		@$tmp_name=$_FILES['resim']['tmp_name'];
		@$name=$_FILES['resim']['name'];
		$random1=rand(20000,32000);
		$random2=rand(20000,32000);
		$random3=rand(20000,32000);
		$random4=rand(20000,32000);
		$randomad=$random1.$random2.$random3.$random4;
		$refimgyol=substr($uploads_dir, 4).$randomad.$name;
		@move_uploaded_file($tmp_name, "$uploads_dir/$randomad$name");


		$id=$_POST['id'];
		$esitle=$db->prepare("update yazilar SET

			baslik=:baslik,
			icerik=:icerik,
			etiket=:etiket,
			kategori=:kategori,
			resim=:resim


			where id=$id;

			");

		$guncelle=$esitle->execute(array(

			'baslik' =>$_POST['baslik'],
			'icerik' =>$_POST['icerik'],
			'etiket' =>$_POST['etiket'],
			'kategori' =>$_POST['kategori'],
			'resim' =>$refimgyol



		));

		if ($guncelle) {
			header("Location:admin/production/yazi-duzenle.php?id=$id&durum=ok");
		}

		else {
			header("Location:admin/production/yazi-duzenle.php?id=$id&durum=no");
		}

	} else {
		$id=$_POST['id'];
		$esitle=$db->prepare("update yazilar SET

			baslik=:baslik,
			icerik=:icerik,
			etiket=:etiket,
			kategori=:kategori

			where id=$id;

			");

		$guncelle=$esitle->execute(array(

			'baslik' =>$_POST['baslik'],
			'icerik' =>$_POST['icerik'],
			'etiket' =>$_POST['etiket'],
			'kategori' =>$_POST['kategori']



		));

		if ($guncelle) {
			header("Location:admin/production/yazi-duzenle.php?id=$id&durum=ok");
		}

		else {
			header("Location:admin/production/yazi-duzenle.php?id=$id&durum=no");
		}
	}

}

if ($_GET['yazisil']=="ok") {

	$sil=$db->prepare("DELETE FROM yazilar WHERE id=:id");

	$check=$sil->execute(array(

		'id' =>$_GET['id']

	));


	if ($check) {
		header("Location:admin/production/yazilar.php?durum=ok");
	}

	else {
		header("Location:admin/production/yazilar.php?durum=no");
	}
}

if (isset($_POST["sosyalkaydet"])) {

	$esitle=$db->prepare("insert into sosyal SET

		
		ad=:ad,
		link=:link,
		ikon=:ikon
		
		");

	$guncelle=$esitle->execute(array(

		
		'ad' =>$_POST['ad'],
		'link' =>$_POST['link'],
		'ikon' =>$_POST['ikon']
		
	));

	if ($guncelle) {
		header("Location:admin/production/sosyal-ayar.php?durum=ok");
	}

	else {
		header("Location:admin/production/sosyal-ayar.php?durum=no");
	}

}

if (isset($_POST["sosyalduzenle"])) {

	$id=$_POST['id'];

	$esitle=$db->prepare("UPDATE sosyal SET

		
		ad=:ad,
		link=:link,
		ikon=:ikon
		

		WHERE id=$id


		");

	$guncelle=$esitle->execute(array(

		
		'ad' =>$_POST['ad'],
		'link' =>$_POST['link'],
		'ikon' =>$_POST['ikon']
		
	));

	if ($guncelle) {
		header("Location:admin/production/sosyal-duzenle.php?id=$id&durum=ok");
	}

	else {
		header("Location:admin/production/sosyal-duzenle.php?id=$id&durum=no");
	}

}

if ($_GET['sosyalsil']=="ok") {

	$sil=$db->prepare("DELETE FROM sosyal WHERE id=:id");

	$check=$sil->execute(array(

		'id' =>$_GET['id']

	));


	if ($check) {
		header("Location:admin/production/sosyal-ayar.php?durum=ok");
	}

	else {
		header("Location:admin/production/sosyal-ayar.php?durum=no");
	}
}


if (isset($_POST["menukaydet"])) {

	$esitle=$db->prepare("insert into menu SET

		
		ad=:ad,
		link=:link,
		sira=:sira
		");

	$guncelle=$esitle->execute(array(

		
		'ad' =>$_POST['ad'],
		'link' =>$_POST['link'],
		'sira' =>$_POST['sira']
		
	));

	if ($guncelle) {
		header("Location:admin/production/menuler.php?durum=ok");
	}

	else {
		header("Location:admin/production/menuler.php?durum=no");
	}

}

if (isset($_POST["menuduzenle"])) {

	$id=$_POST['id'];

	$esitle=$db->prepare("UPDATE menu SET

		
		ad=:ad,
		link=:link,
		sira=:sira
		WHERE id=$id
		");

	$guncelle=$esitle->execute(array(

		'ad' =>$_POST['ad'],
		'link' =>$_POST['link'],
		'sira' =>$_POST['sira']
		
	));

	if ($guncelle) {
		header("Location:admin/production/menu-duzenle.php?id=$id&durum=ok");
	}

	else {
		header("Location:admin/production/menu-duzenle.php?id=$id&durum=no");
	}

}

if ($_GET['menusil']=="ok") {

	$sil=$db->prepare("DELETE FROM menu WHERE id=:id");

	$check=$sil->execute(array(

		'id' =>$_GET['id']

	));


	if ($check) {
		header("Location:admin/production/menuler.php?durum=ok");
	}

	else {
		header("Location:admin/production/menuler.php?durum=no");
	}
}

if (isset($_POST["profilguncelle"])) {
	$id=$_POST['id'];


	$esitle=$db->prepare("UPDATE user SET

		kulladi=:kulladi,
		adsoyad=:adsoyad

		WHERE id=$id");

	$guncelle=$esitle->execute(array(

		'kulladi' =>$_POST['kulladi'],
		'adsoyad' =>$_POST['adsoyad']



	));


	if ($guncelle) {
		header("Location:admin/production/logout.php");
	}

	else {
		header("Location:admin/production/profil-ayar.php?durum=no");
	}

}

if (isset($_POST["sifreguncelle"])) {

	$id=$_POST['id'];
	$kullpass=md5($_POST['kullpass']);


	$kullanicisor=$db->prepare("SELECT * FROM user WHERE kullpass=:kullpass AND id=:id");
	$kullanicisor->execute(array(
		'id'=>$id,
		'kullpass'=>$kullpass

	));
	$say=$kullanicisor->rowCount();


	if ($say>0) {

		echo $yeni=$_POST['newpass'];
		echo $yenitekrar=$_POST['renewpass'];

		if ($yeni==$yenitekrar) {
			$esitle=$db->prepare("UPDATE user SET

				kullpass=:kullpass


				WHERE id=$id");

			$guncelle=$esitle->execute(array(

				'kullpass' =>md5($_POST['newpass'])




			));
			if ($guncelle) {
				header("Location:admin/production/logout.php");
			}

			else {
				header("Location:admin/production/sifre-guncelle.php?durum=no");
			}
		}else {
			header("Location:admin/production/sifre-guncelle.php?durum=no");
		}



	}else {
		header("Location:admin/production/sifre-guncelle.php?durum=no");
	}

}


if (isset($_POST["logoguncelle"])) {

	

	$uploads_dir="img/";

	@$tmp_name=$_FILES['logo']['tmp_name'];
	@$name=$_FILES['logo']['name'];
	$ad="logo.png";
	$refimgyol=substr($uploads_dir, 4)."/".$ad.$name;
	@move_uploaded_file($tmp_name, "$uploads_dir/$ad$name");



	$esitle=$db->prepare("update ayar SET


		logo=:logo


		where id=0;

		");

	$guncelle=$esitle->execute(array(

		'logo' =>$refimgyol



	));

	if ($guncelle) {
		header("Location:admin/production/genel-ayar.php?durum=ok");
	}

	else {
		header("Location:admin/production/genel-ayar.php?durum=no");
	}

	
}

if (isset($_POST["sayfaekle"])) {

	

	$esitle=$db->prepare("insert into sayfalar SET

		baslik=:baslik,
		icerik=:icerik,
		durum=:durum
		

		");

	$guncelle=$esitle->execute(array(

		'baslik' =>$_POST['baslik'],
		'icerik' =>$_POST['icerik'],
		'durum' =>$_POST['durum']
		



	));

	if ($guncelle) {
		header("Location:admin/production/sayfalar.php?durum=ok");
	}

	else {
		header("Location:admin/production/sayfalar.php?durum=no");
	}

}

if (isset($_POST["sayfaduzenle"])) {



	$uploads_dir="img/uploaads";

	$id=$_POST['id'];
	$esitle=$db->prepare("update sayfalar SET

		baslik=:baslik,
		icerik=:icerik,
		durum=:durum
		


		where id=$id;

		");

	$guncelle=$esitle->execute(array(

		'baslik' =>$_POST['baslik'],
		'icerik' =>$_POST['icerik'],
		'durum' =>$_POST['durum']
		



	));

	if ($guncelle) {
		header("Location:admin/production/sayfa-duzenle.php?id=$id&durum=ok");
	}

	else {
		header("Location:admin/production/sayfa-duzenle.php?id=$id&durum=no");
	}

}

if ($_GET['sayfasil']=="ok") {

	$sil=$db->prepare("DELETE FROM sayfalar WHERE id=:id");

	$check=$sil->execute(array(

		'id' =>$_GET['id']

	));


	if ($check) {
		header("Location:admin/production/sayfalar.php?durum=ok");
	}

	else {
		header("Location:admin/production/sayfalar.php?durum=no");
	}
}

if (isset($_POST["kategorikaydet"])) {

	$esitle=$db->prepare("insert into kategoriler SET

		
		ad=:ad,
		detay=:detay,
		sira=:sira
		");

	$guncelle=$esitle->execute(array(

		
		'ad' =>$_POST['ad'],
		'detay' =>$_POST['detay'],
		'sira' =>$_POST['sira']
		
	));

	if ($guncelle) {
		header("Location:admin/production/kategoriler.php?durum=ok");
	}

	else {
		header("Location:admin/production/kategoriler.php?durum=no");
	}

}

if (isset($_POST["kategoriduzenle"])) {

	$id=$_POST['id'];

	$esitle=$db->prepare("UPDATE kategoriler SET

		
		ad=:ad,
		detay=:detay,
		sira=:sira
		

		WHERE kategori_id=$id


		");

	$guncelle=$esitle->execute(array(

		
		'ad' =>$_POST['ad'],
		'detay' =>$_POST['detay'],
		'sira' =>$_POST['sira']
		
	));

	if ($guncelle) {
		header("Location:admin/production/kategori-duzenle.php?id=$id&durum=ok");
	}

	else {
		header("Location:admin/production/kategori-duzenle.php?id=$id&durum=no");
	}

}

if ($_GET['kategorisil']=="ok") {

	$sil=$db->prepare("DELETE FROM kategoriler WHERE kategori_id=:id");

	$check=$sil->execute(array(

		'id' =>$_GET['id']

	));


	if ($check) {
		header("Location:admin/production/kategoriler.php?durum=ok");
	}

	else {
		header("Location:admin/production/kategoriler.php?durum=no");
	}
}

?>	