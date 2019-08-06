<?php
require_once("../config/db.php");

$LAPORAN_ID    = $_POST['LAPORAN_ID'];


 if(isset($_POST['LAPORAN_ID']))
 {

  $query  = "UPDATE LAPORAN SET LAPORAN_STATUS='A' WHERE LAPORAN_ID='".$LAPORAN_ID."'";
  $result = mysqli_query($mysqli,$query) or die(mysqli_error());

  if( $result==true ) {
    echo "ok";
  }else {

    echo "Gagal";

  }
}

?>