<?php
require_once("../config/db.php");
error_reporting(0);
$GURU_ID    = $_POST['GURU_ID'];


$query  = "SELECT * FROM SISWA AS S, JURUSAN AS J, LOCATION AS L, PERMOHONAN AS P, GURU AS G WHERE P.SISWA_ID=S.SISWA_ID AND S.JURUSAN_ID=J.JURUSAN_ID AND P.GURU_ID=G.GURU_ID AND P.LOCATION_ID=L.LOCATION_ID AND G.GURU_ID='".$GURU_ID."' AND P.PERMOHONAN_STATUS='A' ";
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
    echo "<td>".$row['SISWA_NIS']."</td>";
    echo "<td>".$row['SISWA_NAMA']."</td>";
    echo "<td>".$row['JURUSAN']."</td>"; 
    echo "<td><a href='?page=SiswaDetail&siswa_id=".$row['SISWA_ID']."' id='nilai' SISWA_ID='".$row['SISWA_ID']."' SISWA_NAMA='".$row['SISWA_NAMA']."' JURUSAN='".$row['JURUSAN']."' class='btn btn-success'>Detail Siswa</a></td>";
    echo "</tr>";
}

  }

?>