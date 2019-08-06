<?php
include_once("../config/db.php");

$jurusan_id = $_POST['JURUSAN_ID'];
echo $jurusan_id;
$query="SELECT * FROM JURUSAN_LOCATION AS JL LEFT JOIN LOCATION AS L ON JL.LOCATION_ID=L.LOCATION_ID LEFT JOIN JURUSAN AS J ON JL.JURUSAN_ID=J.JURUSAN_ID WHERE JL.JURUSAN_ID='3'";
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
echo json_encode($dataaarray);

?>