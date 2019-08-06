<?php 
error_reporting(0);
$id_location = $_GET['id'];
$query  = "SELECT * FROM LOCATION WHERE LOCATION_ID='$id_location'";
$result = mysqli_query($mysqli,$query)or die(mysqli_error());
$row     = mysqli_fetch_array($result);
 
 ?>

<div class="row">
        <!-- Left col -->
        <div class="col-md-8">
          <!-- MAP & BOX PANE -->
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title"><?php echo $row['LOCATION_NAME']; ?></h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding" style="">
              <div class="row">
                <div class="col-md-12 col-sm-8">
                 <div id="mapdetail"></div>
                </div>
                <!-- /.col -->
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
    
          <!-- /.row -->

          <!-- TABLE: LATEST ORDERS -->
          <!-- /.box -->
        </div>
        <!-- /.col -->

        <div class="col-md-4">
          <!-- Info Boxes Style 2 -->
          <div class="info-box bg-yellow">
            <span class="info-box-icon"><i class="ion ion-ios-pricetag-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-number">Lokasi</span>
              <span class="progress-description">
                    <?php echo $row['LOCATION_NAME']; ?>
                  </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
 <div class="info-box bg-green">
            <span class="info-box-icon"><i class="ion ion-ios-pricetag-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-number">Alamat</span>
              <span class="progress-description">
                    <?php echo $row['LOCATION_ADDRESS']; ?>
                  </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
 <div class="info-box bg-red">
            <span class="info-box-icon"><i class="ion ion-ios-pricetag-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-number">Lattitude & Longtitude</span>
              <span class="progress-description">
                    <?php echo $row['LOCATION_LAT']; ?>,  <?php echo $row['LOCATION_LNG']; ?>
                  </span>
            </div>
            <!-- /.info-box-content -->
          </div>
<button type="button" class="btn btn-block btn-info btn-lg btn-permohonan" name="btn-permohonan" id="btn-permohonan">Kirim Permohonan</button>
        </div>
        <!-- /.col -->
      </div>

<script>
   var server="http://localhost/skripsi/modules/";
var marker;
  var mymap = L.map('mapdetail').setView([0.450529, 101.399758], 13);

  L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
    maxZoom: 18,
    attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
      '<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
      'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
    id: 'mapbox.streets'
  }).addTo(mymap);
L.marker([<?php echo $row['LOCATION_LAT']; ?>, <?php echo $row['LOCATION_LNG']; ?>]).addTo(mymap);

var login = '<?php echo $_SESSION['logged_in']; ?>';
if (login==''){
  window.location.href = "index.php?page=Alert";
}

$("#btn-permohonan").on('click', function(e) {
  if(<?php echo $row['LOCATION_KUOTA']; ?> == <?php echo $row['LOCATION_TOTAL']; ?>)
  {
    alert("Kuota tidak tersedia");
  }
  else
  {
  $('#btn-permohonan').attr('class','btn btn-block btn-info btn-lg btn-permohonan disabled');
  var form_permohonan = "SISWA_ID=<?php echo $_SESSION['logged_in']; ?>&LOCATION_ID=<?php echo $id_location; ?>";
  $.ajax({
      type : 'POST',  
      url:'modules/kirim_permohonan.php',
      data : form_permohonan,
      success:function(response)
      {
         if(response == "ok"){
          alert("Permohonan Terkirim");
          //window.location="http://localhost/skripsi/";
         }
         else if(response=="terdaftar")
         {
          alert("Anda telah mengirim permohonan pada lokasi ini.");
         }
         else if(response=="confirm")
         {
          alert("Anda telah memiliki lokasi magang.");
         }
         else{
          alert("Permohonan Gagal")
        }
      },
      error:function()
      {
        alert("Sistem Bermasalah");
      }
    });
}
})

</script>