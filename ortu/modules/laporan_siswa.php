<?php
require_once("../config/db.php");
error_reporting(0);
$LOCATION_ID    = $_POST['LOCATION_ID'];

$query  = "SELECT * FROM
LAPORAN AS LO,
LOCATION AS L,
SISWA AS S,
JURUSAN AS J
WHERE
LO.LOCATION_ID=L.LOCATION_ID
AND S.JURUSAN_ID=J.JURUSAN_ID
AND LO.SISWA_ID=S.SISWA_ID
AND LO.LAPORAN_STATUS='N'
AND LO.LOCATION_ID='".$LOCATION_ID."' ORDER BY LO.LAPORAN_TANGGAL DESC";
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
	echo "<td>".$row['LAPORAN_TANGGAL']."</td>";
    echo "<td>".$row['SISWA_NIS']."</td>";
    echo "<td>".$row['SISWA_NAMA']."</td>";
    echo "<td>".$row['JURUSAN']."</td>";
    echo "<td>".$row['LAPORAN']."</td>";
    echo "<td><a id='confirm' LAPORAN_ID='".$row['LAPORAN_ID']."' class='btn btn-success'><i class='fa fa-fw fa-check'></i></a></td>";
    echo "</tr>";
}

  }

?>