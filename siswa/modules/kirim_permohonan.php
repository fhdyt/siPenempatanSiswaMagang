<?php
require_once("../config/db.php");

$SISWA_ID    = $_POST['SISWA_ID'];
$LOCATION_ID = $_POST['LOCATION_ID'];

$query1  = "SELECT * FROM PERMOHONAN WHERE SISWA_ID='".$SISWA_ID."' AND PERMOHONAN_STATUS='A'";
$result1 = mysqli_query($mysqli,$query1)or die(mysqli_error());
$num_row1 = mysqli_num_rows($result1);
$row1     = mysqli_fetch_array($result1);

if ($num_row1>=1){
	echo "confirm";
}
else {
	$query  = "SELECT * FROM PERMOHONAN WHERE SISWA_ID='".$SISWA_ID."' AND LOCATION_ID='".$LOCATION_ID."'";
$result = mysqli_query($mysqli,$query)or die(mysqli_error());
$num_row = mysqli_num_rows($result);
$row     = mysqli_fetch_array($result);

if($num_row>=1){
  echo "terdaftar";
}
else{
 if(isset($_POST['SISWA_ID']))
 {
  
  $query  = "INSERT INTO PERMOHONAN (SISWA_ID,LOCATION_ID,PERMOHONAN_STATUS) VALUES ('".$SISWA_ID."','".$LOCATION_ID."', 'N')";
  $result = mysqli_query($mysqli,$query) or die(mysqli_error());

  if( $result==true ) {
    echo "ok";
  }else {

    echo "Gagal";

  }
}
}
}
?>