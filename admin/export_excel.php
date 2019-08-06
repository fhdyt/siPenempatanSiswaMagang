<!DOCTYPE html>
<html>
<head>
	<title>Export Data Ke Excel</title>
</head>
<body>
	<style type="text/css">
	body{
		font-family: sans-serif;
	}
	table{
		margin: 20px auto;
		border-collapse: collapse;
	}
	table th,
	table td{
		border: 1px solid #3c3c3c;
		padding: 3px 8px;

	}
	a{
		background: blue;
		color: #fff;
		padding: 8px 10px;
		text-decoration: none;
		border-radius: 2px;
	}
	</style>

	<?php
	header("Content-type: application/vnd-ms-excel");
	header("Content-Disposition: attachment; filename=Data Siswa.xls");
	?>

	<table border="1">
		<tr>
			<th>No</th>
			<th>NIS</th>
			<th>Nama</th>
			<th>Jurusan</th>
			<th>Jenis Kelamin</th>
			<th>Tempat Lahir</th>
			<th>Tanggal Lahir</th>
			<th>Nama Orangtua</th>
		</tr>
		<?php
		// koneksi database
		require_once("config/db.php");

		// menampilkan data pegawai
		$query  = "SELECT * FROM SISWA AS S, JURUSAN AS J WHERE  J.JURUSAN_ID=S.JURUSAN_ID ORDER BY S.SISWA_ID ASC";
		$result = mysqli_query($mysqli,$query)or die(mysqli_error());
		while($row = mysqli_fetch_array($result))
		{
			$no++;
		?>
		<tr>
			<td><?php echo $no; ?></td>
			<td><?php echo $row['SISWA_NIS']; ?></td>
			<td><?php echo $row['SISWA_NAMA']; ?></td>
			<td><?php echo $row['JURUSAN']; ?></td>
			<td><?php echo $row['SISWA_JK']; ?></td>
			<td><?php echo $row['SISWA_TEMPAT_LAHIR']; ?></td>
			<td><?php echo $row['SISWA_TGL_LAHIR']; ?></td>
			<td><?php echo $row['NAMA_ORTU']; ?></td>
		</tr>
		<?php
		}
		?>
	</table>
</body>
</html>
