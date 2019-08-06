<?php
require_once("../config/db.php");

$id_guru    = $_POST['ID_GURU'];

 if(isset($_POST['ID_GURU']))
 {

  $query  = "DELETE FROM GURU WHERE GURU_ID='".$id_guru."'";
  $result = mysqli_query($mysqli,$query) or die(mysqli_error());

  if( $result==true ) {
    echo "ok";
  }else {

    echo $id_guru ;

  }
}

?>
