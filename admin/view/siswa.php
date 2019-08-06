<?php
$date = date("Y-m-d");
error_reporting(0);
$session = $_SESSION['logged_in_admin'];

 ?>


<div class="row">
	<div class="col-md-12">
<button type="button" class="btn btn-default btn-tambah">
                Tambah Siswa
              </button>
<!--<button type="button" class="btn btn-success btn-import">-->
<!--  <span class="glyphicon glyphicon-open" aria-hidden="true"></span>-->
<!--                Import Excel-->
<!--              </button>-->
<a href="/export_excel.php" type="button" class="btn btn-success">
  <span class="glyphicon glyphicon-save" aria-hidden="true"></span>
                Export Excel
              </a>
          </div>
</div>
<br>
<div class="modal fade" id="modal-default" style="display: none;">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Siswa</h4>
              </div>
              <div class="modal-body">
              	 <form id="form_siswa" method="POST">
                <!-- <div class="form-group">
                  <label for="exampleInputEmail1">Foto</label>
                  <input type="file" onchange="loadFile(event)" class="form-control foto" id="foto" name="foto" placeholder="NIS">
                  <br><img id="output" src="modules/images/blank.png" height="120px" />

                </div> -->
                <div class="form-group">
                  <label for="exampleInputEmail1">Nomor Induk Siswa</label>
                  <input type="hidden" class="form-control ID_SISWA" id="ID_SISWA" name="ID_SISWA" placeholder="NIS">
                  <input type="text" class="form-control nis" id="nis" name="nis" placeholder="NIS">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Nama Lengkap</label>
                  <input type="text" class="form-control nama" id="nama" name="nama" placeholder="Nama">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Jurusan</label>
                  <select class="form-control select2 select2-hidden-accessible jurusan_list_sel"  name="jurusan" style="width: 100%;" tabindex="-1" aria-hidden="true">
                  <option value="">Pilih Jurusan</option>
                </select>
                </div>
                 <div class="form-group">
                  <label for="exampleInputEmail1">Nama Orang Tua</label>
                 <input type="text" class="form-control ortu" id="exampleInputEmail1" name="ortu" placeholder="Nama Orang Tua">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Jenis Kelamin</label>
                  <select class="form-control select2 select2-hidden-accessible jk"  name="jk" style="width: 100%;" tabindex="-1" aria-hidden="true">
                  <option value="">Pilih Jenis Kelamin</option>
                  <option value="Laki-Laki">Laki-Laki</option>
                  <option value="perempuan">Perempuan</option>
                </select>

                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Tempat Lahir</label>
                 <input type="text" class="form-control tempat_lahir" id="exampleInputEmail1" name="tempat_lahir" placeholder="Tempat Lahir">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Tanggal Lahir</label>
                  <input type="text" class="form-control pull-right tanggal_lahir" name="tanggal_lahir" id="datepicker">
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary btn-siswa">Save</button>
                </form>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
<div class="modal fade" id="modal-import" style="display: none;">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Upload Excel</h4>
              </div>
              <div class="modal-body">
                <form method="post" enctype="multipart/form-data" action="upload_aksi.php">
                	Pilih File:
                	<input name="filepegawai" type="file" required="required">

              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <input name="upload" class="btn btn-default pull-left" type="submit" value="Import">
              </form>
                </form>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
<table class="table table-bordered">
  <thead>
    <tr>
      <td>No.</td>
      <td></td>
      <td>NIS</td>
      <td>Nama Lengkap</td>
      <td>Jurusan</td>
      <td>Jenis Kelamin</td>
      <td>Tempat Tanggal Lahir</td>
      <td>Aksi</td>
    </tr>
  </thead>
  <tbody id="zona_data">

  </tbody>
</table>
<script>
	$('.btn-tambah').on('click', function() {
    $(".ID_SISWA").val("");
    $(".nis").val("");
    $(".nama").val("");
    $(".ortu").val("");
    $(".tempat_lahir").val("");
    $(".tanggal_lahir").val("");
    $(".jk").val("");
    $(".jurusan_list_sel").val("");
			$("#modal-default").modal('show');
	});

	$('.btn-import').on('click', function() {
			$("#modal-import").modal('show');
	});

   var loadFile = function(event) {
    var output = document.getElementById('output');
    output.src = URL.createObjectURL(event.target.files[0]);
  };


	$(".btn-siswa").on('click', function(e) {
    // var fileInput = document.getElementById('foto');
    // var filePath = fileInput.value;
    // var allowedExtensions = /(\.jpg|\.jpeg|\.png)$/i;
    // // if(!allowedExtensions.exec(filePath))
    // // {
    // //   alert("Foto tidak Valid");
    // // }
    if ($('input.nis').val()=='')
    {
      alert("Nomor Induk Siswa harus diisi.");
    }
    else if ($('input.nama').val()=='')
    {
      alert("Nama harus diisi.");
    }
    else if ($('select.jurusan_list_sel').val()=='')
    {
      alert("Pilih jurusan.");
    }
    else if ($('select.jk').val()=='')
    {
      alert("Pilih Jenis Kelamin.");
    }
    else if ($('input.tempat_lahir').val()=='')
    {
      alert("Tempat lahir harus diisi.");
    }
    else if ($('input.tanggal_lahir').val()=='')
    {
      alert("Tanggal lahir harus diisi.");
    }
    else if ($('input.ortu').val()=='')
    {
      alert("Nama Orang Tua harus diisi.");
    }
    else
    {
		var form = $("#form_siswa").serialize();
    var form_data = new FormData($('#form_siswa')[0]);
    //form_data.append('tax_file', $('input[type=file]')[0].files[0]);
    console.log(form);
    $.ajax({
        type : 'POST',
        url:'modules/kirim_siswa.php',
        data : form,
        success:function(response)
        {
           if(response == "ok"){
             $("#modal-default").modal('hide');
            siswa_list();
           }

           else{
          }
        },
        error:function()
        {
          alert("Sistem Bermasalah");
        }
      });
}
})

  function siswa_list()
{
    $.ajax({
      type : 'POST',
      url:'modules/siswa_list.php',
      success:function(response)
      {
         if(response == "no_data"){
           $("tbody#zona_data").empty();
          $("tbody#zona_data").append("<tr><td colspan='7'><div class='callout callout-danger'>Belum ada data.</div></td></tr>");
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

  function jurusan_list_sel()
{
    $.ajax({
      type : 'POST',
      url:'modules/jurusan_list_sel.php',
      success:function(response)
      {
         if(response == "no_data"){

         }
         else{
          $("select.jurusan_list_sel").append(""+response+"");
        }
      },
      error:function()
      {
        alert("Sistem Bermasalah");
      }
    });
  }
   $(function(){ jurusan_list_sel(); });


$("tbody").on("click","a.hapus_siswa", function(){
  var id_siswa = "ID_SISWA="+$(this).attr("ID_SISWA");
  console.log(id_siswa);
  if(confirm("Seluruh data yang berhubungan dengan data ini tidak akan ditampilkan, Lanjutkan ?"))
  {
  $.ajax({
      type : 'POST',
      url:'modules/hapus_siswa.php',
      data : id_siswa,
      success:function(response)
      {
         if(response == "ok"){
          siswa_list();
         }

         else{
        }
      },
      error:function()
      {
        alert("Sistem Bermasalah");
      }
    });
  }
})


$("tbody").on("click","a.edit_siswa", function(){
  var id_siswa = $(this).attr("ID_SISWA");
  var nama = $(this).attr("SISWA_NAMA");
  var nis = $(this).attr("SISWA_NIS");
  var jk = $(this).attr("SISWA_JK");
  var tempat_lahir = $(this).attr("SISWA_TEMPAT_LAHIR");
  var tanggal_lahir = $(this).attr("SISWA_TGL_LAHIR");
  var jurusan = $(this).attr("JURUSAN_ID");
  var ortu = $(this).attr("NAMA_ORTU");

  $(".ID_SISWA").val(id_siswa);
  $(".nis").val(nis);
  $(".nama").val(nama);
  $(".ortu").val(ortu);
  $(".tempat_lahir").val(tempat_lahir);
  $(".tanggal_lahir").val(tanggal_lahir);
  $(".jk").val(jk);
  $(".jurusan_list_sel").val(jurusan);
  $("#modal-default").modal('show');


})
</script>
