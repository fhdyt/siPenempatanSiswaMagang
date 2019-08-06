<?php
require_once("../config/db.php");

$alamat    = $_POST['alamat'];
$nama = $_POST['nama'];
$lat    = $_POST['lat'];
$lng = $_POST['lng'];
$kuota= $_POST['kuota'];
$jurusan_id = $_POST['JURUSAN_ID'];
$date = date("Ymdhis");
$password = md5($date);
 if(isset($_POST['alamat']))
 {

  $query  = "INSERT INTO LOCATION (LOCATION_USERNAME,LOCATION_PASSWORD,LOCATION_NAME,LOCATION_LAT,LOCATION_LNG,LOCATION_ADDRESS,LOCATION_KUOTA,LOCATION_TOTAL)
  VALUES ('".$date."','".$password."','".$nama."','".$lat."','".$lng."','".$alamat."','".$kuota."','0')";
  $result = mysqli_query($mysqli,$query) or die(mysqli_error());
  
  $query3  = "SELECT * FROM LOCATION ORDER BY LOCATION_ID DESC LIMIT 1";
    $result3 = mysqli_query($mysqli,$query3)or die(mysqli_error());
    $row3     = mysqli_fetch_array($result3);
  
  foreach($jurusan_id as $key => $value)
	{
  $query2  = "INSERT INTO JURUSAN_LOCATION (JURUSAN_ID, LOCATION_ID)
  VALUES ('".$jurusan_id[$key]."','".$row3['LOCATION_ID']."')";
  $result2 = mysqli_query($mysqli,$query2) or die(mysqli_error());
	}

  if( $result2==true && $result==true) {
    echo "ok";
  }else {

    echo "Gagal";

  }
}

?>
