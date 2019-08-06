<?php
require_once("../config/db.php");
error_reporting(0);
$GURU_ID    = $_POST['GURU_ID'];
$SISWA_ID    = $_POST['SISWA_ID'];

$query  = "SELECT * FROM
LAPORAN AS LO,
LOCATION AS L,
PERMOHONAN AS P,
GURU AS G,
SISWA AS S,
JURUSAN AS J
WHERE
LO.LOCATION_ID=L.LOCATION_ID
AND S.JURUSAN_ID=J.JURUSAN_ID
AND LO.SISWA_ID=S.SISWA_ID
AND G.GURU_ID=P.GURU_ID
AND G.GURU_ID='".$GURU_ID."' AND S.SISWA_ID='".$SISWA_ID."' ORDER BY LO.LAPORAN_TANGGAL DESC";
$result = mysqli_query($mysqli,$query)or die(mysqli_error());
$num_row = mysqli_num_rows($result);
if(empty($num_row)){
  echo "no_data";
}
else{

while($row = mysqli_fetch_array($result))
{	
$no++;
if($row['LAPORAN_STATUS']== 'N')
{
  $aksi = "<a id='confirm' LAPORAN_ID='".$row['LAPORAN_ID']."' class='btn btn-success'><i class='fa fa-fw fa-check'></i></a>";
}
else 
{
  $aksi="<a class='btn btn-default'>Laporan disetujui</a>";
}
	echo "<tr>";
	echo "<td>".$no."</td>";
	echo "<td>".$row['LAPORAN_TANGGAL']."</td>";
    echo "<td>".$row['LAPORAN']."</td>";
    echo "<td>".$aksi."</td>";
    echo "</tr>";
}

  }

?>