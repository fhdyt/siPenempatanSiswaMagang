<div class="callout callout-info">
          <h4>Selamat Datang</h4>

          <p>Add the layout-top-nav class to the body tag to get this layout. This feature can also be used with a
            sidebar! So use this class if you want to remove the custom dropdown menus from the navbar and use regular
            links instead.</p>
        </div>

<script>
function siswa_list()
{ 		var data = 'LOCATION_ID=<?php echo $_SESSION['logged_in_lokasi']; ?>';
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
</script>