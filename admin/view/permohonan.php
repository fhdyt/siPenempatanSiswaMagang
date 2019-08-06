<?php 
$date = date("Y-m-d");
error_reporting(0);
$session = $_SESSION['logged_in_admin'];

 ?>
<div class="modal fade" id="modal-default" style="display: none;">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Konfirmasi Permohonan</h4>
              </div>
              <div class="modal-body">
                 <form id="form_confirm_permohonan" method="POST">

                <div class="form-group">
                  <label for="exampleInputEmail1">Guru Pembimbing</label>
                  <input type="hidden" class="form-control nis" id="nis" name="nis" placeholder="Enter email">
                  <input type="hidden" class="form-control permohonan" id="permohonan" name="permohonan" placeholder="Enter email">
                  <input type="hidden" class="form-control location" id="location" name="location" placeholder="Enter email">

                  <select class="form-control select2 select2-hidden-accessible guru_list_sel"  name="guru" style="width: 100%;" tabindex="-1" aria-hidden="true">
                  <option value="">Pilih Guru Pembimbing</option>
                </select>
                </div>               
</form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary btn-confirm_permohonan">Save</button>
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
      <td>NIS</td>
      <td>Nama Lengkap</td>
      <td>Jurusan</td>
      <td>Lokasi Magang</td>
      <td>Alamat</td>
      <td>Aksi</td>
    </tr>
  </thead>
  <tbody id="zona_data">

  </tbody>
</table>
<script>
	$(".btn-confirm_permohonan").on('click', function(e) {
		var form = $("#form_confirm_permohonan").serialize();
      function confirm_permohonan() {
  $.ajax({
      type : 'POST',  
      url:'modules/confirm_permohonan.php',
      data : form,
      success:function(response)
      {
         if(response == "ok"){
          alert("Permohonan Terkonfirmasi");
          $("#modal-default").modal('hide');
          permohonan_list();
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
 if ($('select.guru_list_sel').val()=='')
    {
      alert("Pilih Guru Pembimbing.");
    }
else {
if (confirm('Konfirmasi Permohonan Ini ?')) {
    $(function(){ confirm_permohonan(); });
  }
}
})

  function permohonan_list()
{     
    $.ajax({
      type : 'POST',  
      url:'modules/permohonan_list.php',
      success:function(response)
      {
         if(response == "no_data"){
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
  $(function(){ permohonan_list(); });

function guru_list_sel()
{     
    $.ajax({
      type : 'POST',  
      url:'modules/guru_list_sel.php',
      success:function(response)
      {
         if(response == "no_data"){

         }
         else{
          $("select.guru_list_sel").append(""+response+"");
        }
      },
      error:function()
      {
        alert("Sistem Bermasalah");
      }
    });
  }
   $(function(){ guru_list_sel(); });

  $('tbody').on('click', 'a#confirm', function() 
{
   var permohonan = $(this).attr('PERMOHONAN_ID');
   var siswa = $(this).attr('SISWA_ID');
   var location = $(this).attr('LOCATION_ID');
   $("input.nis").val(siswa);
   $("input.permohonan").val(permohonan);
   $("input.location").val(location);
   $("#modal-default").modal('show');
});
</script>