<?php
require_once("../config/db.php");

$SISWA_ID    = $_POST['SISWA_ID'];
$sikap = $_POST['sikap'];
$pengetahuan    = $_POST['pengetahuan'];
$keterampilan = $_POST['keterampilan'];
$keterampilan_ket    = $_POST['keterampilan_ket'];

  $query2  = "SELECT * FROM PENILAIAN WHERE SISWA_ID='".$SISWA_ID."'";
  $result2 = mysqli_query($mysqli,$query2) or die(mysqli_error());

  if(!empty($result2)) 
  {
          $query  = "UPDATE PENILAIAN SET SISWA_ID='".$SISWA_ID."',PENILAIAN_1='".$sikap."',PENILAIAN_2='".$pengetahuan."',PENILAIAN_3='".$keterampilan."',PENILAIAN_3_KET='".$keterampilan_ket."' WHERE SISWA_ID='".$SISWA_ID."'";
    $result = mysqli_query($mysqli,$query) or die(mysqli_error());
    
    if( $result==true ) 
    {
        echo "ok";
    }
	else {
    echo "Gagal";
	}
  }
  else
  {
    $query  = "INSERT INTO PENILAIAN (SISWA_ID,PENILAIAN_1,PENILAIAN_2,PENILAIAN_3,PENILAIAN_3_KET) 
    VALUES ('".$SISWA_ID."','".$sikap."','".$pengetahuan."','".$keterampilan."','".$keterampilan_ket."')";
    $result = mysqli_query($mysqli,$query) or die(mysqli_error());
    
    if( $result==true ) {
        echo "ok";
    }
    else 
    {
    echo "Gagal";
    }
  }
  


?>