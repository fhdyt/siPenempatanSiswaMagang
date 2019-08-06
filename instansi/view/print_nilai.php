<?php
require_once("../config/db.php");
error_reporting(0);
$siswa_id = $_GET['id'];
$query  = "SELECT * FROM SISWA AS S, JURUSAN AS J, LOCATION AS L, PERMOHONAN AS P WHERE P.SISWA_ID=S.SISWA_ID AND S.JURUSAN_ID=J.JURUSAN_ID AND P.LOCATION_ID=L.LOCATION_ID AND P.PERMOHONAN_STATUS='A' AND S.SISWA_ID='".$siswa_id."'";
$result = mysqli_query($mysqli,$query)or die(mysqli_error());
$row     = mysqli_fetch_array($result);

$query1  = "SELECT * FROM SISWA AS S, PENILAIAN AS N WHERE S.SISWA_ID=N.SISWA_ID AND S.SISWA_ID='".$siswa_id."' ";
$result1 = mysqli_query($mysqli,$query1)or die(mysqli_error());
$num_row1 = mysqli_num_rows($result1);
$row1     = mysqli_fetch_array($result1);

$rata2= ($row1['PENILAIAN_1'] + $row1['PENILAIAN_2'] + $row1['PENILAIAN_3']) / 3;
$tanggal =date("d");
$bulan = date("m");
$tahun = date("Y");

if ($bulan == '01'){
  $bulan_id = 'Januari';
}
else if ($bulan == '02'){
  $bulan_id = 'Februari';
}
else if ($bulan == '03'){
  $bulan_id = 'Maret';
}
else if ($bulan == '04'){
  $bulan_id = 'April';
}
else if ($bulan == '05'){
  $bulan_id = 'Mei';
}
else if ($bulan == '06'){
  $bulan_id = 'Juni';
}
else if ($bulan == '07'){
  $bulan_id = 'Juli';
}
else if ($bulan == '08'){
  $bulan_id = 'Agustus';
}
else if ($bulan == '09'){
  $bulan_id = 'September';
}
else if ($bulan == '10'){
  $bulan_id = 'Oktober';
}
else if ($bulan == '11'){
  $bulan_id = 'November';
}
else if ($bulan == '12'){
  $bulan_id = 'Desember';
}

$tanggal_hari_ini = "".$tanggal." ".$bulan_id." ".$tahun."";
 ?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Penilaian PKL | <?php echo $row['SISWA_NAMA']; ?></title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
  <style>

    div.solid {border-style: solid;}

</style>
  <body>
    <!-- <div class="container">
      <div class="solid"> -->
        <div class="container">
          <center>
          <p><h4><b>PENILAIAN PRAKTEK KERJA LAPANGAN (PKL)<br>
          SMK NEGERI 1 PEKANBARU<br>
          TAHUN PELAJARAN 2018/2019</b></h4><p>
        </center>
        <br>
        <table>
        <tr>
          <td width="170">Nama</td>
          <td>: </td>
          <td> <?php echo $row['SISWA_NAMA']; ?></td>
        </tr>
        <tr>
          <td>Program Keahlian</td>
          <td>: </td>
          <td> <?php echo $row['JURUSAN']; ?></td>
        </tr>
        <tr>
          <td>Tempat PKL</td>
          <td>: </td>
          <td> <?php echo $row['LOCATION_NAME']; ?></td>
        </tr>
        </table>
        <br>
        <table class="table table-bordered">
          <tr>
            <th>No.</th>
            <th>Standar Kompetensi</th>
            <th>Indikator</th>
            <th>Nilai</th>
          </tr>
          <tr>
            <td>1.</td>
            <td>Sikap</td>
            <td>- Disiplin <br> - Tanggung Jawab <br>- Kejujururan <br> - Sopan <br>- Kerjasama <br>- Mandiri</td>
            <td><?php echo $row1['PENILAIAN_1']; ?></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td><center>30%</center></td>
            <td></td>
          </tr>
          <tr>
            <td>2.</td>
            <td>Pengetahuan</td>
            <td>Paket Keahlian</td>
            <td><?php echo $row1['PENILAIAN_2']; ?></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td><center>30%</center></td>
            <td></td>
          </tr>
          <tr>
            <td>3.</td>
            <td>Keterampilan</td>
            <td>Diisi dengan materi yang dikerjakan ditempat. <br> <?php echo $row1['PENILAIAN_3_KET']; ?></td>
            <td><?php echo $row1['PENILAIAN_3']; ?></td>
          </tr>
          <tr>
            <td></td>
            <td></td>
            <td><center>40%</center></td>
            <td></td>
          </tr>
          <tr>
            <td colspan="3"><center>Rata-rata</center></td>
            <td><?php echo $rata2; ?></td>
          </tr>
        </table>
        <table class="table">
          <tr>

            <td>Keterangan Skor Nilai
              <br>
              91-100 = Amat Baik
              <br>
              81-90 = Baik
              <br>
              71-80 = Cukup
              <br>
            </td>
            <td>
              <center>
              Pekanbaru, <?php echo $tanggal_hari_ini; ?>
              <br>
              Pembimbing DUDI
              <br>
              <br>
              <br>
              <br>
              <br>
              <p class="pembimbing"></p>
              <a class="btn btn-primary btn-sm tambah_pembimbing">Tambah Pembimbing</a>
              </center>
            </td>

          </tr>
        </table>
        <br>
        <br>
        <br>

        </div>
      <!-- </div>
    </div> -->

    <div class="modal fade modal_pembimbing" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-body">
        <div class="input-group">
      <input type="text" class="form-control nama_pembimbing" placeholder="Nama Pembimbing">
      <span class="input-group-btn">
        <button class="btn btn-default btn_tambah_pembimbing" type="button">Tambah dan Cetak</button>
      </span>
    </div><!-- /input-group -->
      </div>

    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
  <script>
  $('.tambah_pembimbing').on('click', function(){
    $('.modal_pembimbing').modal('show');
    //alert("Sukses");
  })

  $('.btn_tambah_pembimbing').on('click', function(){
    var pembimbing = $('.nama_pembimbing').val();
    $('.pembimbing').html('('+pembimbing+')');
    $('.modal_pembimbing').modal('hide');
    $('.tambah_pembimbing').hide();
    window.print();
  })
  </script>

</html>
