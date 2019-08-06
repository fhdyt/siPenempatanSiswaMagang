<?php
require_once("../config/db.php");
error_reporting(0);
$SISWA_ID    = $_POST['SISWA_ID'];

$query  = "SELECT * FROM PERMOHONAN AS P, LOCATION AS L WHERE  P.LOCATION_ID=L.LOCATION_ID AND P.SISWA_ID='".$SISWA_ID."'";
$result = mysqli_query($mysqli,$query)or die(mysqli_error());
$num_row = mysqli_num_rows($result);
if(empty($num_row)){
  echo "no_data";
}
else{

while($row = mysqli_fetch_array($result))
{	
$no++;
if ($row['PERMOHONAN_STATUS'] == 'N')
{ $status = 'Menunggu Konfirmasi';}
elseif ($row['PERMOHONAN_STATUS'] == 'A')
{ $status = 'Setuju'; }
else 
{ $status = 'Permohonan ditolak';}
	echo "<tr>";
	echo "<td>".$no."</td>";
    echo "<td>".$row['LOCATION_NAME']."</td>";
    echo "<td>".$row['LOCATION_ADDRESS']."</td>";
    echo "<td>".$row['PERMOHONAN_TANGGAL']."</td>";
    echo "<td>".$status."</td>";
    echo "</tr>";
}

  }

?>