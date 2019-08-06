<?php
require_once("../config/db.php");
$location    = $_POST['location'];
$tanggal    = $_POST['tanggal'];
$siswa_id    = $_POST['siswa_id'];
$laporan    = $_POST['laporan'];
$penanggung_jawab = $_POST['penanggung_jawab'];

$query  = "SELECT * FROM LAPORAN WHERE SISWA_ID='".$siswa_id."' AND LAPORAN_TANGGAL='".$tanggal."'  ";
$result = mysqli_query($mysqli,$query)or die(mysqli_error());
$num_row = mysqli_num_rows($result);
$row     = mysqli_fetch_array($result);

if($num_row>=1){
  echo "laporan";
}
else {
 if(isset($_POST['laporan']))
 {
  
  $query  = "INSERT INTO LAPORAN (SISWA_ID,LOCATION_ID,LAPORAN_TANGGAL,LAPORAN_PENANGGUNG_JAWAB,LAPORAN, LAPORAN_STATUS) 
            VALUES ('".$siswa_id."','".$location."','".$tanggal."','".$penanggung_jawab."','".$laporan."', 'N')";
  $result = mysqli_query($mysqli,$query) or die(mysqli_error());

  if( $result==true ) {
    echo "ok";
  }else {

    echo "Gagal";

  }
}
}
?>