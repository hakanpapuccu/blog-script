<?php 

try {
	$db = new PDO ("mysql:host=localhost;dbname=blog2" , 'root', '');
	//echo "Bağlantı başarılı";
}

catch (PDOExpception $e) {

	echo $e = getMessage();

}



 ?>