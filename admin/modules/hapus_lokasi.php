<?php
require_once("../config/db.php");

$id_lokasi    = $_POST['ID_LOCATION'];

 if(isset($_POST['ID_LOCATION']))
 {

  $query  = "DELETE FROM LOCATION WHERE LOCATION_ID='".$id_lokasi."'";
  $result = mysqli_query($mysqli,$query) or die(mysqli_error());

  if( $result==true ) {
    echo "ok";
  }else {

    echo $id_lokasi ;

  }
}

?>
