<?php
require_once("../config/db.php");
$user_id    = $_POST['user_id'];

$username    = $_POST['username'];



 if(isset($_POST['user_id']))
 {

  $query1  = "SELECT * FROM LOCATION WHERE LOCATION_USERNAME='".$username."'";
  $result1 = mysqli_query($mysqli,$query1) or die(mysqli_error());
  $num_row1 = mysqli_num_rows($result1);
  if($num_row1 > 0)
  {
  	echo "digunakan";
  }
  else 
  {
  $query  = "UPDATE LOCATION SET LOCATION_USERNAME='".$username."' WHERE LOCATION_ID='".$user_id."'";
  $result = mysqli_query($mysqli,$query) or die(mysqli_error());
  if( $result==true ) {
    echo "ok";
  }
  else 
  {
    echo "Gagal";
  }
  }
  

}

?>