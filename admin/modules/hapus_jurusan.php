<?php
require_once("../config/db.php");

$id_jurusan    = $_POST['ID_JURUSAN'];

 if(isset($_POST['ID_JURUSAN']))
 {

  $query  = "DELETE FROM JURUSAN WHERE JURUSAN_ID='".$id_jurusan."'";
  $result = mysqli_query($mysqli,$query) or die(mysqli_error());

  if( $result==true ) {
    echo "ok";
  }else {

    echo $id_jurusan ;

  }
}

?>
