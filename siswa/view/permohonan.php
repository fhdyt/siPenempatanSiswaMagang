<div class="row">
  <div class="col-md-12">
<a href="index.php" type="button" class="btn btn-default btn-tambah">
                Tambah Permohonan
              </a>
</div></div>
<br>
<table class="table table-bordered">
	<thead>
		<tr>
			<td>No.</td>
			<td>Lokasi</td>
			<td>Alamat</td>
			<td>Tanggal</td>
			<td>Status</td>
		</tr>
	</thead>
	<tbody id="zona_data">

	</tbody>
</table>
<script>
function permohonan_list()
{ 		var data = 'SISWA_ID=<?php echo $_SESSION['logged_in']; ?>';
	  $.ajax({
      type : 'POST',  
      url:'modules/permohonan_list.php',
      data : data,
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
</script>