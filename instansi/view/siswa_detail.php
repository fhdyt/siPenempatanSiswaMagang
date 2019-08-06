<?php
error_reporting(0);
$siswa_id = $_GET['siswa_id'];
$query  = "SELECT * FROM SISWA AS S, JURUSAN AS J, LOCATION AS L, PERMOHONAN AS P WHERE P.SISWA_ID=S.SISWA_ID AND S.JURUSAN_ID=J.JURUSAN_ID AND P.LOCATION_ID=L.LOCATION_ID AND L.LOCATION_ID='".$_SESSION['logged_in_lokasi']."' AND P.PERMOHONAN_STATUS='A' AND S.SISWA_ID='".$siswa_id."'";
$result = mysqli_query($mysqli,$query)or die(mysqli_error());
$row     = mysqli_fetch_array($result);



 $query1  = "SELECT * FROM SISWA AS S, PENILAIAN AS N WHERE S.SISWA_ID=N.SISWA_ID AND S.SISWA_ID='".$siswa_id."' ";
$result1 = mysqli_query($mysqli,$query1)or die(mysqli_error());
$num_row1 = mysqli_num_rows($result1);
$row1     = mysqli_fetch_array($result1);

if ($num_row1>0){
	$nilai = "<a id='lihat_nilai' SISWA_ID='".$row['SISWA_ID']."' PENILAIAN_1='".$row1['PENILAIAN_1']."' PENILAIAN_2='".$row1['PENILAIAN_2']."' PENILAIAN_3='".$row1['PENILAIAN_3']."' PENILAIAN_3_KET='".$row1['PENILAIAN_3_KET']."' class='btn btn-warning'>Lihat Penilaian</a>";
	$tombol_simpan = "<button type='button' class='btn btn-default btn-nilai'>Edit</button>";
}
else
{
	$nilai = "<a id='nilai' SISWA_ID='".$row['SISWA_ID']."' SISWA_NAMA='".$row['SISWA_NAMA']."' JURUSAN='".$row['JURUSAN']."' class='btn btn-success'>Beri Penilaian</a>";
	$tombol_simpan = "<button type='button' class='btn btn-primary btn-nilai'>Save</button>";
}


 ?>
<style>
  .modal-dialog{
  width:800px;
}
</style>

<div class="row">
  <div class="col-md-3"><img src="http://halaman-siswa.esy.es/modules/images/<?php echo $row['SISWA_NIS'];  ?>"></div>
  <div class="col-md-7"><table class="table">
  	<tr>
  		<td>Nama</td>
  		<td>:</td>
  		<td><?php echo $row['SISWA_NAMA']; ?></td>
  	</tr>
  	<tr>
  		<td>Nomor Induk Siswa</td>
  		<td>:</td>
  		<td><?php echo $row['SISWA_NIS']; ?></td>
  	</tr>
  	<tr>
  		<td>Jurusan</td>
  		<td>:</td>
  		<td><?php echo $row['JURUSAN']; ?></td>
  	</tr>
  	<tr>
  		<td>Jenis Kelamin</td>
  		<td>:</td>
  		<td><?php echo $row['SISWA_JK']; ?></td>
  	</tr>
  	<tr>
  		<td>Tempat Tanggal Lahir</td>
  		<td>:</td>
  		<td><?php echo $row['SISWA_TEMPAT_LAHIR']; ?>, <?php echo $row['SISWA_TGL_LAHIR']; ?> </td>
  	</tr>
  </table></div>
  <div class="col-md-2"><?php echo $nilai; ?></div>
</div>
<br>
<hr>
<table class="table table-bordered">
  <thead>
    <tr>
      <td>No.</td>
      <td>Tanggal</td>
      <td>Laporan</td>
      <td>Aksi</td>
    </tr>
  </thead>
  <tbody id="zona_data">
  </tbody>
</table>

<div class="modal fade" id="modal-default">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Nilai Siswa</h4>
              </div>
              <div class="modal-body">
                 <form id="form_nilai" method="POST">
<div class="box-body">
  <input type="hidden" class="form-control SISWA_ID" id="SISWA_ID" name="SISWA_ID" placeholder="Sikap">
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
                  <td>-Disiplin <br> -Tanggung Jawab <br>-Kejujururan <br> -Sopan <br>-Kerjasama <br>-Mandiri</td>
                <td><input type="text" class="form-control sikap" id="sikap" name="sikap" placeholder="Sikap"></td>
                </tr>
                <tr>
                  <td>2.</td>
                  <td>Pengetahuan</td>
                  <td>Paket Keahlian</td>
                <td><input type="text" class="form-control pengetahuan" id="pengetahuan" name="pengetahuan" placeholder="Pengetahuan"></td>
                </tr>
                <tr>
                  <td>3.</td>
                  <td>Keterampilan</td>
                  <td>Diisi dengan materi yang dikerjakan ditempat. <br> <textarea id="keterampilan_ket" name="keterampilan_ket" class="keterampilan_ket form-control" rows="5"></textarea></td>
                <td><input type="text" class="form-control keterampilan" id="keterampilan" name="keterampilan" placeholder="Keterampilan"></td>
                </tr>
              </table>
</form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <a href="view/print_nilai.php?id=<?php echo $row['SISWA_ID'] ?>" type="button" class="btn btn-success btn-print"><i class="fa fa-fw fa-print"></i> Print</a>
                <?php echo $tombol_simpan ;?>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
      </div>
<script>
		   $('#nilai').on('click', function() {
     var SISWA_ID= $(this).attr('SISWA_ID');

      $(".SISWA_ID").val(SISWA_ID);
      $("#modal-default").modal('show');

  });

		   $('#lihat_nilai').on('click', function() {
     var PENILAIAN_1= $(this).attr('PENILAIAN_1');
     var PENILAIAN_2= $(this).attr('PENILAIAN_2');
     var PENILAIAN_3= $(this).attr('PENILAIAN_3');
     var PENILAIAN_3_KET= $(this).attr('PENILAIAN_3_KET');
        var SISWA_ID= $(this).attr('SISWA_ID');
     //$(".sikap").attr("readonly", true);
     //$(".pengetahuan").attr("readonly", true);
     //$(".keterampilan").attr("readonly", true);
     //$(".keterampilan_ket").attr("readonly", true);

     //$(".btn-nilai").attr("disabled", "disabled", true);

     $(".sikap").val(PENILAIAN_1);
     $(".pengetahuan").val(PENILAIAN_2);
     $(".keterampilan").val(PENILAIAN_3);
     $(".keterampilan_ket").val(PENILAIAN_3_KET);
     $(".SISWA_ID").val(SISWA_ID);

      $("#modal-default").modal('show');

  });
		function laporan_siswa()
{ 		var data = 'SISWA_ID=<?php echo $row['SISWA_ID']; ?>&LOCATION_ID=<?php echo $_SESSION['logged_in_lokasi']; ?>';
	  $.ajax({
      type : 'POST',
      url:'modules/laporan_siswa2.php',
      data : data,
      success:function(response)
      {
         if(response == "no_data"){
          $("tbody#zona_data").empty();
           $("tbody#zona_data").append("<tr><td colspan='7'><div class='callout callout-danger'>Belum ada laporan.</div></td></tr>");
         }
         else{
          $("tbody#zona_data").empty();
         	$("tbody#zona_data").append(""+response+"");
        }
      },
      error:function()
      {
        alert("Sistem Bermasalah");
      }
    });
	}
	$(function(){ laporan_siswa(); });


	$('tbody').on('click', 'a#confirm', function()
{
    var LAPORAN_ID = "LAPORAN_ID="+$(this).attr('LAPORAN_ID');
      function confirm_laporan() {
  $.ajax({
      type : 'POST',
      url:'modules/confirm_laporan.php',
      data : LAPORAN_ID,
      success:function(response)
      {
         if(response == "ok"){
          laporan_siswa();
         }

         else{
          alert("Gagal Mengkonfirmasi")
        }
      },
      error:function()
      {
        alert("Sistem Bermasalah");
      }
    });
}
if (confirm('Konfirmasi Laporan Ini ?')) {
    $(function(){ confirm_laporan(); });
  }
})


    $(".btn-nilai").on('click', function(e) {
    // if ($('input.nip').val()=='')
    // {
    //   alert("Nomor Induk Pegawai harus diisi.");
    // }
    // else if ($('input.nama').val()=='')
    // {
    //   alert("Nama harus diisi.");
    // }
    // else{}
    var form = $("#form_nilai").serialize();
  $.ajax({
      type : 'POST',
      url:'modules/kirim_nilai.php',
      data : form,
      success:function(response)
      {
         if(response == "ok"){
         $("#modal-default").modal('hide');
          location.reload();
         }

         else{
          alert("Gagal Tersimpan")
        }
      },
      error:function()
      {
        alert("Sistem Bermasalah");
      }
    });
})

</script>
