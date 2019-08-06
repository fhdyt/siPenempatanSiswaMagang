<?php
require_once("../config/db.php");
error_reporting(0);
$SISWA_ID    = $_POST['SISWA_ID'];

$query  = "SELECT * FROM JURUSAN";
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
    echo "<td>".$row['JURUSAN_ID']."</td>";
     echo "<td>".$row['JURUSAN']."</td>";
    echo "<td bgcolor='".$row['JURUSAN_WARNA']."'></td>";
    echo "<td><a class='btn btn-danger btn-sm hapus_jurusan' ID_JURUSAN='".$row['JURUSAN_ID']."' ><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></a>
              <a class='btn btn-primary btn-sm edit_jurusan'
                            ID_JURUSAN='".$row['JURUSAN_ID']."'
                            JURUSAN='".$row['JURUSAN']."'
                            JURUSAN_WARNA='".$row['JURUSAN_WARNA']."'
                            ><span class='glyphicon glyphicon-pencil' aria-hidden='true'></span></a></td>";
    echo "</tr>";

}

  }

?>
