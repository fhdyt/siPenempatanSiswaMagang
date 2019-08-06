<?php
include_once("../config/db.php");

$query="SELECT * FROM LOCATION";
$check=mysqli_query($mysqli,$query);

while ($row=mysqli_fetch_array($check))
{

	$dataaarray[]=array('LOCATION_ID'=>$row['LOCATION_ID'],
						'LOCATION_NAME'=>$row['LOCATION_NAME'],
						'LOCATION_LNG' =>$row['LOCATION_LNG'],
						'LOCATION_LAT'=>$row['LOCATION_LAT'],
						'LOCATION_ADDRESS'=>$row['LOCATION_ADDRESS']);
}
echo json_encode($dataaarray);

?>