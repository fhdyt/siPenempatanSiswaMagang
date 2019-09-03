<?php
include_once("../config/db.php");

$jurusan_id = $_GET['JURUSAN_ID'];
//echo "$jurusan_id";
$query="SELECT * FROM JURUSAN_LOCATION AS JL INNER JOIN LOCATION AS L ON JL.LOCATION_ID=L.LOCATION_ID INNER JOIN JURUSAN AS J ON JL.JURUSAN_ID=J.JURUSAN_ID WHERE JL.JURUSAN_ID='".$jurusan_id."'";
//echo "$query";
$check=mysqli_query($mysqli,$query);

while ($row=mysqli_fetch_array($check))
{

	$dataaarray[]=array('LOCATION_ID'=>$row['LOCATION_ID'],
						'LOCATION_NAME'=>$row['LOCATION_NAME'],
						'LOCATION_LNG' =>$row['LOCATION_LNG'],
						'LOCATION_LAT'=>$row['LOCATION_LAT'],
						'JURUSAN_WARNA'=>$row['JURUSAN_WARNA'],
						'LOCATION_ADDRESS'=>$row['LOCATION_ADDRESS']);
}
//echo "<br>";
echo json_encode($dataaarray);

?>
