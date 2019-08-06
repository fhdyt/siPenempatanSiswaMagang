<?php
require_once("../config/db.php");

$nip    = $_POST['nip'];
$ID_GURU    = $_POST['ID_GURU'];
$nama = $_POST['nama'];
$password = md5($_POST['nip']);


 if(empty($_POST['ID_GURU']))
 {

  $query  = "INSERT INTO GURU (GURU_USERNAME,GURU_PASSWORD,GURU_NIP,GURU_NAMA)
  VALUES ('".$nip."','".$password."','".$nip."','".$nama."')";
  $result = mysqli_query($mysqli,$query) or die(mysqli_error());

  if( $result==true ) {
    echo "ok";
  }else {

    echo "Gagal";

  }
}

else {
  $query  = "UPDATE GURU SET GURU_USERNAME='".$nip."', GURU_PASSWORD='".$nip."' ,GURU_NIP='".$nip."',GURU_NAMA='".$nama."' WHERE GURU_ID='".$ID_GURU."'";
  $result = mysqli_query($mysqli,$query) or die(mysqli_error());
  if( $result==true ) {
    echo "ok";
  }else {

    echo "Gagal";

  }
}

?>
