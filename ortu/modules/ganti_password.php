<?php
require_once("../config/db.php");
$user_id    = $_POST['user_id'];

$password = md5($_POST['password']);


 if(isset($_POST['user_id']))
 {

  $query  = "UPDATE SISWA SET PASSWORD_ORTU='".$password."' WHERE SISWA_ID='".$user_id."'";
  $result = mysqli_query($mysqli,$query) or die(mysqli_error());

  if( $result==true ) {
    echo "ok";
  }else {

    echo "Gagal";

  }
}

?>
