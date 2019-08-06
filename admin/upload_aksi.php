<!-- import excel ke mysql -->
<!-- www.malasngoding.com -->
<?php
error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);
?>
<?php
// menghubungkan dengan koneksi
include 'config/db.php';
// menghubungkan dengan library excel reader
include "excel_reader2.php";
?>

<?php
// upload file xls
$target = basename($_FILES['filepegawai']['name']) ;
move_uploaded_file($_FILES['filepegawai']['tmp_name'], $target);

// beri permisi agar file xls dapat di baca
chmod($_FILES['filepegawai']['name'],0777);

// mengambil isi file xls
$data = new Spreadsheet_Excel_Reader($_FILES['filepegawai']['name'],false);
// menghitung jumlah baris data yang ada
$jumlah_baris = $data->rowcount($sheet_index=0);

// jumlah default data yang berhasil di import
$berhasil = 0;
for ($i=2; $i<=$jumlah_baris; $i++){

	// menangkap data dan memasukkan ke variabel sesuai dengan kolumnya masing-masing
	$nik     = $data->val($i, 1);
	$nama     = $data->val($i, 2);
	$jk     = $data->val($i, 3);
	$tempat_lahir     = $data->val($i, 4);
	$tanggal_lahir     = $data->val($i, 5);
	$jurusan     = $data->val($i, 6);
	$ortu     = $data->val($i, 7);


	if($nama != "" && $nik != "" && $nama != ""){
		// input data ke database (table data_pegawai)
		mysqli_query($mysqli,"INSERT into SISWA values('','$nik','$nik','$nama','$nik','$jk','$tempat_lahir','$tanggal_lahir','$jurusan','$ortu','$nik','$nik')");
		$berhasil++;
	}
}

// hapus kembali file .xls yang di upload tadi
unlink($_FILES['filepegawai']['name']);

// alihkan halaman ke index.php
header("location:index.php?berhasil=$berhasil");
?>
