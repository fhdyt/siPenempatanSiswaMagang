<div class="box box-default">
          <div class="box-header with-border">
            <h3 class="box-title">Daftar Lokasi</h3>
          </div>
          <div class="box-body">
            <table class="table table-bordered">
  <thead>
    <tr>
      <td>No.</td>
      <td>Nama Instansi</td>
      <td>Kuota yang terpenuhi</td>
      <td>Alamat</td>
      <td>Aksi</td>
    </tr>
  </thead>
  <tbody id="zona_data">

  </tbody>
</table>
          </div>
          <!-- /.box-body -->
        </div>


<script>

	function daftar_lokasi()
{ 		var data = 'LOCATION_ID=<?php echo $_SESSION['logged_in_lokasi']; ?>';
	  $.ajax({
      type : 'POST',  
      url:'modules/daftar_lokasi.php',
      data : data,
      success:function(response)
      {
         if(response == "no_data"){
          $("tbody#zona_data").empty();
          // alert("Tidak ada laporan siswa.");
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
	$(function(){ daftar_lokasi(); });

</script>