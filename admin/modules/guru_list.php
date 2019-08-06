<?php
require_once("../config/db.php");
error_reporting(0);
$SISWA_ID    = $_POST['SISWA_ID'];

$query  = "SELECT * FROM GURU ORDER BY GURU_ID ASC";
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

    echo "<td>".$row['GURU_NIP']."</td>";
    echo "<td>".$row['GURU_NAMA']."</td>";
    echo "<td><a class='btn btn-danger btn-sm hapus_guru' ID_GURU='".$row['GURU_ID']."'><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></a>
              <a class='btn btn-primary btn-sm edit_guru' ID_GURU='".$row['GURU_ID']."' GURU_NAMA='".$row['GURU_NAMA']."' GURU_NIP='".$row['GURU_NIP']."'><span class='glyphicon glyphicon-pencil' aria-hidden='true'></span></a>
              </td>";
    echo "</tr>";
}

  }

?>
