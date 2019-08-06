<?php
require_once("../config/db.php");
error_reporting(0);
$SISWA_ID    = $_POST['SISWA_ID'];

$query  = "SELECT * FROM LOCATION";
$result = mysqli_query($mysqli,$query)or die(mysqli_error());
$num_row = mysqli_num_rows($result);
if(empty($num_row)){
  echo "no_data";
}
else{

while($row = mysqli_fetch_array($result))
{	
	if($row['LOCATION_KUOTA'] == $row['LOCATION_TOTAL'])
	{
		$tr = 'danger';
	}
	else
	{
		$tr='';
	}
$no++;

	echo "<tr class='".$tr."'>";
	echo "<td>".$no."</td>";
    echo "<td>".$row['LOCATION_NAME']."</td>";
    echo "<td>".$row['LOCATION_TOTAL']."/".$row['LOCATION_KUOTA']."</td>";
    echo "<td>".$row['LOCATION_ADDRESS']."</td>";

    echo "<td><a href='?page=Mapdetail&id=".$row['LOCATION_ID']."' class='btn btn-primary'>Lihat Detail</a></td>";
    echo "</tr>";
}

  }

?>