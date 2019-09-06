<?php
$date = date("Y-m-d");
error_reporting(0);
$session = $_SESSION['logged_in_admin'];

 ?>


<div class="row">
	<div class="col-md-12">
<button type="button" class="btn btn-default btn-tambah">
                Tambah Guru
              </button>
          </div>
</div>
<br>
<div class="modal fade" id="modal-default" style="display: none;">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Guru</h4>
              </div>
              <div class="modal-body">
              	 <form id="form_guru" method="POST">
<div class="box-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Nomor Induk Pegawai</label>
                  <input type="hidden" class="form-control ID_GURU" id="ID_GURU" name="ID_GURU" placeholder="ID_GURU">
                  <input type="text" class="form-control nip" id="nip" name="nip" placeholder="NIP">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Nama Lengkap</label>
                  <input type="text" class="form-control nama" id="nama" name="nama" placeholder="Nama">
                </div>
              </div>
</form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary btn-guru">Save</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
<table id="example2" class="table table-bordered">
  <thead>
    <tr>
      <td>No.</td>
      <td>Nomor Induk Pegawai</td>
      <td>Nama Lengkap</td>
      <td>Aksi</td>
    </tr>
  </thead>
  <tbody id="zona_data">
	<td colspan="20"><center>Loading...</center></td>
  </tbody>
</table>
<script>
	$('.btn-tambah').on('click', function() {
      $(".ID_GURU").val("");
      $(".nip").val("");
      $(".nama").val("");
			$("#modal-default").modal('show');
	});


	$(".btn-guru").on('click', function(e) {
    if ($('input.nip').val()=='')
    {
      alert("Nomor Induk Pegawai harus diisi.");
    }
    else if ($('input.nama').val()=='')
    {
      alert("Nama harus diisi.");
    }
    else{
		var form = $("#form_guru").serialize();
  $.ajax({
      type : 'POST',
      url:'modules/kirim_guru.php',
      data : form,
      success:function(response)
      {
         if(response == "ok"){
         $("#modal-default").modal('hide');
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
}
})

  function guru_list()
{
    $.ajax({
      type : 'POST',
      url:'modules/guru_list.php',
      success:function(response)
      {
         if(response == "no_data"){
           $("tbody#zona_data").empty();
          $("tbody#zona_data").append("<tr><td colspan='7'><div class='callout callout-danger'>Belum ada data.</div></td></tr>");
         }
         else{
          $("tbody#zona_data").empty();
          $("tbody#zona_data").append(""+response+"");
          $('#example2').DataTable({
              'paging'      : true,
              'lengthChange': false,
              'searching'   : true,
              'ordering'    : false,
              'info'        : true,
              'autoWidth'   : false
            })
        }
      },
      error:function()
      {
        alert("Sistem Bermasalah");
      }
    });
  }
  $(function(){ guru_list(); });


  $("tbody").on("click","a.hapus_guru", function(){
    var id_guru = "ID_GURU="+$(this).attr("ID_GURU");
    console.log(id_guru);
    if(confirm("Seluruh data yang berhubungan dengan data ini tidak akan ditampilkan, Lanjutkan ?"))
    {
    $.ajax({
        type : 'POST',
        url:'modules/hapus_guru.php',
        data : id_guru,
        success:function(response)
        {
           if(response == "ok"){
            guru_list();
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

  $("tbody").on("click","a.edit_guru", function(){
    var id_guru = $(this).attr("ID_GURU");
    var guru_nama = $(this).attr("GURU_NAMA");
    var guru_nip = $(this).attr("GURU_NIP");

    $(".ID_GURU").val(id_guru);
    $(".nip").val(guru_nip);
    $(".nama").val(guru_nama);

    $("#modal-default").modal('show');


})

</script>
