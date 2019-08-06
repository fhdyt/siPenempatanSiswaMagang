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

<script>
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
</script>