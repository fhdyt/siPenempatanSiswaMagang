<table class="table table-bordered">
  <thead>
    <tr>
      <td>No.</td>
      <td>Tanggal</td>
      <td>Nomor Induk Siswa</td>
      <td>Nama Lengkap</td>
      <td>Jurusan</td>
      <td>Laporan</td>
      <td>Aksi</td>
    </tr>
  </thead>
  <tbody id="zona_data">
   
  </tbody>
</table>

<script>

	function laporan_siswa()
{ 		var data = 'LOCATION_ID=<?php echo $_SESSION['logged_in_lokasi']; ?>';
	  $.ajax({
      type : 'POST',  
      url:'modules/laporan_siswa.php',
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
          alert("Laporan Terkonfirmasi");
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
</script>