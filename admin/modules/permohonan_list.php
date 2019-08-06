<?php
require_once("../config/db.php");
error_reporting(0);

$query  = "SELECT * FROM PERMOHONAN AS P, LOCATION AS L, SISWA AS S, JURUSAN AS J WHERE  P.LOCATION_ID=L.LOCATION_ID AND S.JURUSAN_ID=J.JURUSAN_ID AND P.SISWA_ID=S.SISWA_ID AND (P.PERMOHONAN_STATUS='A' OR P.PERMOHONAN_STATUS='N' )";
$result = mysqli_query($mysqli,$query)or die(mysqli_error());
$num_row = mysqli_num_rows($result);
if(empty($num_row)){
  echo "no_data";
}
else{

while($row = mysqli_fetch_array($result))
{	
$no++;
if ($row['PERMOHONAN_STATUS']=='N')
{
   $tr = "";
	$button = "<td><a id='confirm' LOCATION_ID='".$row['LOCATION_ID']."' PERMOHONAN_ID='".$row['PERMOHONAN_ID']."' SISWA_ID='".$row['SISWA_ID']."' class='btn btn-success'><i class='fa fa-fw fa-check'></i></a></td>"; 
 
}
else
{
  $tr = "success";
	$button = "<td></td>";
  
}
	echo "<tr class='".$tr."' id='permohonan' PERMOHONAN_ID='".$row['PERMOHONAN_ID']."'>";
	echo "<td>".$no."</td>";
    echo "<td>".$row['SISWA_NIS']."</td>";
    echo "<td>".$row['SISWA_NAMA']."</td>";
    echo "<td>".$row['JURUSAN']."</td>";
    echo "<td>".$row['LOCATION_NAME']."</td>";
    echo "<td>".$row['LOCATION_ADDRESS']."</td>";

    echo $button;
    echo "</tr>";
}

  }

?>