<?php
require_once("../config/db.php");

$id_siswa    = $_POST['ID_SISWA'];

 if(isset($_POST['ID_SISWA']))
 {

  $query  = "DELETE FROM SISWA WHERE SISWA_ID='".$id_siswa."'";
  $result = mysqli_query($mysqli,$query) or die(mysqli_error());

  if( $result==true ) {
    echo "ok";
  }else {

    echo $id_siswa ;

  }
}

?>
