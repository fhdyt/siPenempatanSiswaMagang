<?php
require_once("../config/db.php");
error_reporting(0);
$SISWA_ID    = $_POST['SISWA_ID'];

$query  = "SELECT * FROM SISWA AS S, JURUSAN AS J WHERE  J.JURUSAN_ID=S.JURUSAN_ID ORDER BY S.SISWA_NIS ASC";
$result = mysqli_query($mysqli,$query)or die(mysqli_error());
$num_row = mysqli_num_rows($result);
if(empty($num_row)){
  echo "no_data";
}
else{

while($row = mysqli_fetch_array($result))
{
$no++;
	echo "<tr bgcolor='".$row['JURUSAN_WARNA']."'>";
	echo "<td>".$no."</td>";
  echo "<td><img src='http://halaman-siswa.esy.es/modules/images/".$row['SISWA_NIS']."' height='80px'/></td>";
    echo "<td>".$row['SISWA_NIS']."</td>";
    echo "<td>".$row['SISWA_NAMA']."</td>";
    echo "<td>".$row['JURUSAN']."</td>";
    echo "<td>".$row['SISWA_JK']."</td>";
    echo "<td>".$row['SISWA_TEMPAT_LAHIR'].", ".$row['SISWA_TGL_LAHIR']."</td>";
    echo "<td><a class='btn btn-danger btn-sm hapus_siswa' ID_SISWA='".$row['SISWA_ID']."'><span class='glyphicon glyphicon-trash' aria-hidden='true'></span></a>
              <a class='btn btn-primary btn-sm edit_siswa'
                  ID_SISWA='".$row['SISWA_ID']."'
                  SISWA_NAMA='".$row['SISWA_NAMA']."'
                  SISWA_NIS='".$row['SISWA_NIS']."'
                  SISWA_JK='".$row['SISWA_JK']."'
                  SISWA_TEMPAT_LAHIR='".$row['SISWA_TEMPAT_LAHIR']."'
                  SISWA_TGL_LAHIR='".$row['SISWA_TGL_LAHIR']."'
                  JURUSAN_ID='".$row['JURUSAN_ID']."'
                  NAMA_ORTU='".$row['NAMA_ORTU']."'

                  ><span class='glyphicon glyphicon-pencil' aria-hidden='true'></span></a>


          </td>";
    echo "</tr>";
}

  }

?>
