<?php
$date = date("Y-m-d");
error_reporting(0);
$session = $_SESSION['logged_in_admin'];

 ?>


<div class="row">
	<div class="col-md-12">
<button type="button" class="btn btn-default btn-tambah">
                Tambah Jurusan
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
                <h4 class="modal-title">Jurusan</h4>
              </div>
              <div class="modal-body">
              	 <form id="form_jurusan" method="POST">
                <div class="form-group">
                  <label for="exampleInputEmail1">Jurusan</label>
                  <input type="hidden" class="form-control ID_JURUSAN" id="ID_JURUSAN" name="ID_JURUSAN" placeholder="ID_JURUSAN">
                  <input type="text" class="form-control jurusan" id="jurusan" name="jurusan" placeholder="jurusan">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Kode warna</label>
                 <input type="text" class="form-control my-colorpicker1 warna" name="warna" readonly="">
                </div>
</form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary btn-jurusan">Save</button>
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
      <td>ID Jurusan</td>
      <td>Jurusan</td>
      <td>Kode Warna</td>
      <td>Aksi</td>
    </tr>
  </thead>
  <tbody id="zona_data">
	<td colspan="20"><center>Loading...</center></td>
  </tbody>
</table>
<script>
	$('.btn-tambah').on('click', function() {
      $(".ID_JURUSAN").val("");
      $(".jurusan").val("");
      $(".warna").val("");
			$("#modal-default").modal('show');
	});


	$(".btn-jurusan").on('click', function(e) {
    if ($('input.jurusan').val()=='')
    {
      alert("Jurusan harus diisi.");
    }
    else if ($('input.warna').val()=='')
    {
      alert("Kode warna jurusan harus diisi.");
    }
    else{
		var form = $("#form_jurusan").serialize();
  $.ajax({
      type : 'POST',
      url:'modules/kirim_jurusan.php',
      data : form,
      success:function(response)
      {
         if(response == "ok"){
         $("#modal-default").modal('hide');
          //alert("Jurusan Terkirim");
          jurusan_list();
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

  function jurusan_list()
{
    $.ajax({
      type : 'POST',
      url:'modules/jurusan_list.php',
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
  $(function(){ jurusan_list(); });



  $("tbody").on("click","a.hapus_jurusan", function(){
    var id_jurusan = "ID_JURUSAN="+$(this).attr("ID_JURUSAN");
    console.log(id_jurusan);
    if(confirm("Seluruh data yang berhubungan dengan data ini tidak akan ditampilkan, Lanjutkan ?"))
    {
    $.ajax({
        type : 'POST',
        url:'modules/hapus_jurusan.php',
        data : id_jurusan,
        success:function(response)
        {
           if(response == "ok"){
            jurusan_list();
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


  $("tbody").on("click","a.edit_jurusan", function(){
    var id_jurusan = $(this).attr("ID_JURUSAN");
    var jurusan = $(this).attr("JURUSAN");
    var warna = $(this).attr("JURUSAN_WARNA");

    $(".ID_JURUSAN").val(id_jurusan);
    $(".jurusan").val(jurusan);
    $(".warna").val(warna);

    $("#modal-default").modal('show');


})
</script>
