<?php
require_once ("../config/db.php");
$nis = $_POST['siswa_id'];
		$namaFile = $_FILES['foto']['name'];
		$namaSementara = $_FILES['foto']['tmp_name'];
		// tentukan lokasi file akan dipindahkan
		$dirUpload = "images/";
		// pindahkan file
		$terupload = move_uploaded_file($namaSementara, $dirUpload.$nis);
		echo "ok";

?>
