<?php
require_once("../config/db.php");
error_reporting(0);
$LAPORAN_ID    = $_POST['LAPORAN_ID'];

$query  = "SELECT * FROM LAPORAN WHERE LAPORAN_ID='".$LAPORAN_ID."'";
$result = mysqli_query($mysqli,$query)or die(mysqli_error());
$num_row = mysqli_num_rows($result);
if(empty($num_row)){
  echo "no_data";
}
else{

foreach($result as $row)
    {

if ($row['LAPORAN_STATUS'] == 'N')
{ $status = 'Menunggu Persetujuan Instansi';
  $tr = 'warning'; 
}
elseif ($row['LAPORAN_STATUS'] == 'A')
{ $status = 'Laporan disetujui'; 
  $tr = 'success'; 
}
else 
{ $status = 'Permohonan ditolak';
  $tr = 'danger';
}
  
    echo"<table class='table table-bordered'>";
    echo"<tr class='".$tr."'>";
    echo"<td><b>Status</b></td>";
    echo"<td>".$status."</td>";
    echo"</tr>";
    echo"<tr>";
    echo"<tr>";
    echo"<td><b>Tanggal Laporan</b></td>";
    echo"<td>".$row['LAPORAN_TANGGAL']."</td>";
    echo"</tr>";
    echo"<tr>";
    echo"<td><b>Penanggung Jawab</b></td>";
    echo"<td>".$row['LAPORAN_PENANGGUNG_JAWAB']."</td>";
    echo"</tr>";
    echo"<tr>";
    echo"<td><b>Laporan</b></td>";
    echo"<td>".$row['LAPORAN']."</td>";
    echo"</tr>";
    echo"</table>";
}

  }

?>