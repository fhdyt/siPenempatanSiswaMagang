<?php
require_once("../config/db.php");
error_reporting(0);
$SISWA_ID    = $_POST['SISWA_ID'];

$query  = "SELECT * FROM GURU";
$result = mysqli_query($mysqli,$query)or die(mysqli_error());
$num_row = mysqli_num_rows($result);
if(empty($num_row)){
  echo "no_data";
}
else{

while($row = mysqli_fetch_array($result))
{	
$no++;

    echo "<option value='".$row['GURU_ID']."'>".$row['GURU_NAMA']." | ".$row['GURU_NIP']."</option>";


}

  }

?>