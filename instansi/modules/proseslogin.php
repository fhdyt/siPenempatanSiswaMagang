<?php
session_start();


require_once("../config/db.php");
 if(isset($_POST['username']))
 {

  $username    = $_POST['username'];
  $password = md5($_POST['password']);

  $query  = "SELECT * FROM LOCATION WHERE LOCATION_USERNAME='$username' AND LOCATION_PASSWORD='$password'";
  $result = mysqli_query($mysqli,$query) or die(mysqli_error());
  $num_row = mysqli_num_rows($result);
  $row     = mysqli_fetch_array($result);

  if( $num_row >0 ) {
    echo "ok";
    $_SESSION['logged_in_lokasi'] = $row['LOCATION_ID'];

  }else {

    echo "Gagal";

  }
 }

?>
