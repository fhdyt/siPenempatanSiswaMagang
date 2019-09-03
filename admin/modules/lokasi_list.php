<?php
require_once("../config/db.php");
error_reporting(0);

$query  = "SELECT * FROM LOCATION ORDER BY LOCATION_ID ASC";
$result = mysqli_query($mysqli,$query)or die(mysqli_error());
$num_row = mysqli_num_rows($result);
if(empty($num_row)){
  echo "no_data";
}
else{

while($row = mysqli_fetch_array($result))
{
$no++;
	echo "<tr>";
	echo "<td>".$no."</td>";
  echo "<td>".$row['LOCATION_NAME']."</td>";
  echo "<td>".$row['LOCATION_TOTAL']."/".$row['LOCATION_KUOTA']."</td>";
  echo "<td>".$row['LOCATION_ADDRESS']."</td>";
  echo "<td>".$row['LOCATION_USERNAME']."</td>";
  echo "<td>".$row['LOCATION_PASSWORD']."</td>";
  echo "<td><button id='lokasi' class='btn btn-block btn-primary btn-flat' LAT='".$row['LOCATION_LAT']."' LNG='".$row['LOCATION_LNG']."'>Lihat Lokasi</button></td>";
  echo "<td><a class='btn btn-danger btn-sm hapus_lokasi' ID_LOCATION='".$row['LOCATION_ID']."'><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></a></td>";

  echo "</tr>";
}

  }

?>
