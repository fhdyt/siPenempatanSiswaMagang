<?php
if(!isset($_SESSION['logged_in'])){
  ?>
<div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <!-- User Account Menu -->
            <li class="dropdown user user-menu">
              <!-- Menu Toggle Button -->
              <a href="login.php">

                <span class="hidden-xs">Login</span>
              </a>
            </li>
          </ul>
        </div>
  <?php
}
else { ?>
<div class="navbar-custom-menu">
          <ul class="nav navbar-nav">
            <!-- User Account Menu -->
            <li class="dropdown user user-menu">
              <!-- Menu Toggle Button -->
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <!-- The user image in the navbar-->
                <img src="http://halaman-siswa.esy.es/modules/images/<?php echo $row['SISWA_NIS'];  ?>" class="user-image" alt="User Image" onerror="imgError(this);">
                <!-- hidden-xs hides the username on small devices so only the image appears. -->
                <span class="hidden-xs"><?php echo $row['SISWA_NAMA'];  ?></span>
              </a>
              <ul class="dropdown-menu">
                <!-- The user image in the menu -->
                <li class="user-header">
                  <img src="http://halaman-siswa.esy.es/modules/images/<?php echo $row['SISWA_NIS'];  ?>" class="img-circle" alt="User Image" onerror="imgError(this);">

                  <p>
                    <?php echo $row['SISWA_NAMA'];  ?> - <?php echo $row['SISWA_NIS'];  ?>
                    <small> <?php echo $row['JURUSAN'];  ?></small>
                  </p>
                </li>
                <!-- Menu Body -->
                <!-- Menu Footer-->
                <li class="user-footer">
                  <div class="pull-left">
                    <a href="dashboard.php" class="btn btn-default btn-flat">Profile</a>
                  </div>
                  <div class="pull-right">
                    <a class="btn btn-default btn-flat" id="sign_out">Sign out</a>
                  </div>
                </li>
              </ul>
            </li>
            <li>
            <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
          </li>
          </ul>
        </div>
<?php }
 ?>
 <script>
  var server="http://localhost/skripsi/modules/";
   $("#sign_out").on('click', function(e) {
  $.ajax({
      type : 'POST',
      url:'modules/proseslogout.php',
      success:function(response)
      {
         if(response == "ok"){
          window.location="login.php";
         }
         else{
          alert("gagal");
        }
      },
      error:function()
      {
        alert("Sistem Bermasalah");
      }
    });
})
 </script>
