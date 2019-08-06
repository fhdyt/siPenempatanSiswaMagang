<?php
require_once("../config/db.php");

$nis    = $_POST['nis'];
$permohonan    = $_POST['permohonan'];
$guru    = $_POST['guru'];
$location    = $_POST['location'];

 if(isset($_POST['permohonan']))
 {

  $query  = "UPDATE PERMOHONAN SET PERMOHONAN_STATUS='A', GURU_ID='".$guru."' WHERE PERMOHONAN_ID='".$permohonan."'";
  $result = mysqli_query($mysqli,$query) or die(mysqli_error());

  $query1  = "UPDATE PERMOHONAN SET PERMOHONAN_STATUS='R' WHERE SISWA_ID='".$nis."' AND PERMOHONAN_STATUS='N'";
  $result1 = mysqli_query($mysqli,$query1) or die(mysqli_error());

  $query2  = "UPDATE LOCATION SET LOCATION_TOTAL=LOCATION_TOTAL +1 WHERE LOCATION_ID='".$location."'";
  $result2 = mysqli_query($mysqli,$query2) or die(mysqli_error());

  if( $result2==true ) {
    echo "ok";
    
  }else {

    echo "Gagal";

  }
}

?>