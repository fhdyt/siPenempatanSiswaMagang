<?php
require_once("../config/db.php");
error_reporting(0);
$SISWA_ID    = $_POST['SISWA_ID'];

$query  = "SELECT * FROM LAPORAN AS L, SISWA AS S, LOCATION AS LC WHERE  LC.LOCATION_ID=L.LOCATION_ID AND L.SISWA_ID=S.SISWA_ID AND S.SISWA_ID='".$SISWA_ID."' ORDER BY L.LAPORAN_TANGGAL DESC";
$result = mysqli_query($mysqli,$query)or die(mysqli_error());
$num_row = mysqli_num_rows($result);
if(empty($num_row)){
  echo "no_data";
}
else{

foreach($result as $row)
    {
// $no++;
// if ($row['LAPORAN_STATUS'] == 'N')
// { $status = 'Menunggu Persetujuan Instansi';
//   $tr = 'warning'; }
// elseif ($row['LAPORAN_STATUS'] == 'A')
// { $status = 'Laporan disetujui'; 
//   $tr = 'success'; }
// else 
// { $status = 'Permohonan ditolak';
//   $tr = 'danger';}
	// echo "<tr class='".$tr."'>";
	// echo "<td>".$no."</td>";
 //    echo "<td>".$row['LAPORAN_TANGGAL']."</td>";
 //     echo "<td>".$row['LOCATION_NAME']."</td>";
 //    echo "<td>".$row['LAPORAN_PENANGGUNG_JAWAB']."</td>";
 //    echo "<td>".$row['LAPORAN']."</td>";
 //    echo "<td>".$status."</td>";
 //    echo "<td></td>";
 //    echo "</tr>";

   $data[]= array(
  //   'id'   => $r['PRODUKSI_KALENDER_ID'],
    'title'   => $row['LAPORAN_ID'],
  'start'   => $row['LAPORAN_TANGGAL'],
  'end'   => $row['LAPORAN_TANGGAL'],
  'color' => 'blue'
);
   $obj = json_encode($data);
   echo $obj;
   exit();

}

  }

?>