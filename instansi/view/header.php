
<div class="navbar-custom-menu">
          <ul class="nav navbar-nav">          
            <!-- User Account Menu -->
            <li class="dropdown user user-menu">
              <!-- Menu Toggle Button -->
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <!-- The user image in the navbar-->
                <img src="assets/dist/img/user2-160x160.png" class="user-image" alt="User Image">
                <!-- hidden-xs hides the username on small devices so only the image appears. -->
                <span class="hidden-xs"><?php echo $row['LOCATION_NAME'];  ?></span>
              </a>
              <ul class="dropdown-menu">
                <!-- The user image in the menu -->
                <li class="user-header">
                  <img src="assets/dist/img/user2-160x160.png" class="img-circle" alt="User Image">

                  <p>
                    <?php echo $row['LOCATION_NAME'];  ?> 
                    <small> <?php echo $row['LOCATION_ADDRESS'];  ?></small>
                  </p>
                </li>
                <!-- Menu Body -->
                <!-- Menu Footer-->
                <li class="user-footer">
                  <div class="pull-left">
                    <a href="index.php" class="btn btn-default btn-flat">Profile</a>
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