
<table class="table table-bordered">
  <thead>
    <tr>
      <td>No.</td>
      <td>Nomor Induk Siswa</td>
      <td>Nama Lengkap</td>
      <td>Jurusan</td>
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
  <table class="table">
    <tr>
      <td width="30">Nama</td>
      <td width="20">:</td>
      <td><p id="SISWA_NAMA"></p></td>
    </tr>
    <tr>
      <td width="30">Jurusan</td>
      <td width="20">:</td>
      <td><p id="JURUSAN"></p></td>
    </tr>
  </table>
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
                <button type="button" class="btn btn-primary btn-nilai">Save</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>

<script>

   $('tbody').on('click', 'a#nilai', function() 
{     var SISWA_ID= $(this).attr('SISWA_ID');
      var JURUSAN = $(this).attr('JURUSAN');
      var SISWA_NAMA = $(this).attr('SISWA_NAMA');
      $(".SISWA_ID").val(SISWA_ID);
      $("#JURUSAN").html(JURUSAN);
      $("#SISWA_NAMA").html(SISWA_NAMA);
      $("#modal-default").modal('show');    

  });

   $('tbody').on('click', 'a#lihat_nilai', function() 
{   
      $("#modal-nilai").modal('show');    

  });

function siswa_list()
{     var data = 'LOCATION_ID=<?php echo $_SESSION['logged_in_lokasi']; ?>';
    $.ajax({
      type : 'POST',  
      url:'modules/siswa_list.php',
      data : data,
      success:function(response)
      {
         if(response == "no_data"){

          alert("Tidak ada siswa.");
          //window.location="http://localhost/skripsi/";
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
  $(function(){ siswa_list(); });


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
    alert(form);
  $.ajax({
      type : 'POST',  
      url:'modules/kirim_nilai.php',
      data : form,
      success:function(response)
      {
         if(response == "ok"){
         $("#modal-default").modal('hide');
          alert("Nilai Terkirim");
          guru_list();
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