<?php
require_once("../config/db.php");

$SISWA_ID    = $_POST['SISWA_ID'];
$sikap = $_POST['sikap'];
$pengetahuan    = $_POST['pengetahuan'];
$keterampilan = $_POST['keterampilan'];
$keterampilan_ket    = $_POST['keterampilan_ket'];

 if(isset($_POST['SISWA_ID']))
 {
  
  $query  = "INSERT INTO PENILAIAN (SISWA_ID,PENILAIAN_1,PENILAIAN_2,PENILAIAN_3,PENILAIAN_3_KET) 
  VALUES ('".$SISWA_ID."','".$sikap."','".$pengetahuan."','".$keterampilan."','".$keterampilan_ket."')";
  $result = mysqli_query($mysqli,$query) or die(mysqli_error());

  if( $result==true ) {
    echo "ok";
  }else {

    echo "Gagal";

  }
}

?>