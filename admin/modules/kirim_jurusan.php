<?php
require_once("../config/db.php");

$jurusan    = $_POST['jurusan'];
$warna = $_POST['warna'];
$ID_JURUSAN = $_POST['ID_JURUSAN'];


 if(empty($_POST['ID_JURUSAN']))
 {
  $query  = "INSERT INTO JURUSAN (JURUSAN,JURUSAN_WARNA)
  VALUES ('".$jurusan."','".$warna."')";
  $result = mysqli_query($mysqli,$query) or die(mysqli_error());

  if( $result==true ) {
    echo "ok";
  }else {

    echo "Gagal";

  }
}

else {
  $query  = "UPDATE JURUSAN SET JURUSAN='".$jurusan."',JURUSAN_WARNA='".$warna."' WHERE JURUSAN_ID='".$ID_JURUSAN."'";
  $result = mysqli_query($mysqli,$query) or die(mysqli_error());
  if( $result==true ) {
    echo "ok";
  }else {

    echo "Gagal";

  }
}
?>
