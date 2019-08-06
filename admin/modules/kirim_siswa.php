<?php
require_once ("../config/db.php");

$nis = $_POST['nis'];
$ID_SISWA = $_POST['ID_SISWA'];
$nama = $_POST['nama'];
$jurusan = $_POST['jurusan'];
$jk = $_POST['jk'];
$tempat_lahir = $_POST['tempat_lahir'];
$tanggal_lahir = $_POST['tanggal_lahir'];
$ortu = $_POST['ortu'];
$password = md5($_POST['nis']);
if (empty($_POST['ID_SISWA']))
	{
	$query = "INSERT INTO SISWA (SISWA_USERNAME,SISWA_PASSWORD,USERNAME_ORTU,PASSWORD_ORTU,SISWA_NIS,SISWA_NAMA,JURUSAN_ID,SISWA_JK,SISWA_TEMPAT_LAHIR,SISWA_TGL_LAHIR,NAMA_ORTU)
    VALUES ('" . $nis . "','" . $password . "','" . $nis . "','" . $password . "','" . $nis . "','" . $nama . "','" . $jurusan . "','" . $jk . "','" . $tempat_lahir . "','" . $tanggal_lahir . "','" . $ortu . "')";
	$result = mysqli_query($mysqli, $query) or die(mysqli_error());
	if ($result == true)
		{
		echo "ok";
		}
	  else
		{
		echo "Gagal";
		}
	}

	else {
	  $query  = "UPDATE SISWA SET
										SISWA_NAMA='".$nama."',
										SISWA_NIS='".$nis."',
										SISWA_JK='".$jk."',
										SISWA_TEMPAT_LAHIR='".$tempat_lahir."',
										SISWA_TGL_LAHIR='".$tanggal_lahir."',
										JURUSAN_ID='".$jurusan."',
										NAMA_ORTU='".$ortu."'
							WHERE SISWA_ID='".$ID_SISWA."'";
	  $result = mysqli_query($mysqli,$query) or die(mysqli_error());
	  if( $result==true ) {
	    echo "ok";
	  }else {

	    echo "Gagal";

	  }
	}

?>
