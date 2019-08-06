<?php
include_once("../config/db.php");

$query="SELECT * FROM SISWA AS S INNER JOIN PERMOHONAN AS P ON S.SISWA_ID=P.SISWA_ID INNER JOIN LOCATION AS L ON P.LOCATION_ID=L.LOCATION_ID INNER JOIN JURUSAN AS J ON S.JURUSAN_ID=J.JURUSAN_ID WHERE P.PERMOHONAN_STATUS='A'";
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