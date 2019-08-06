<?php
require_once("config/db.php");
error_reporting(0);
session_start();
if(!isset($_SESSION['logged_in_lokasi'])){
  header("Location: login.php");
  }
$session = $_SESSION['logged_in_lokasi'];
$query  = "SELECT * FROM LOCATION WHERE LOCATION_ID='$session'";
$result = mysqli_query($mysqli,$query)or die(mysqli_error());
$row     = mysqli_fetch_array($result);

  ?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>SMK Negeri 1 Pekanbaru</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="assets/bower_components/bootstrap/dist/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="assets/bower_components/font-awesome/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="assets/bower_components/Ionicons/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="assets/dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="assets/dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

	<link rel="stylesheet" href="leaflet/leaflet.css"/>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
   <!-- Make sure you put this AFTER Leaflet's CSS -->
 <script src="leaflet/leaflet.js"></script>
   <style>
   	#mapid { height: 380px; }
    #mapdetail { height: 350px;}
   </style>
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->
<body class="hold-transition skin-blue layout-top-nav">
<div class="wrapper">

  <header class="main-header">
    <nav class="navbar navbar-static-top">
      <div class="container">
        <div class="navbar-header">
          <a href="index.php" class="navbar-brand"><b>SMK</b>1 PEKANBARU</a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
            <i class="fa fa-bars"></i>
          </button>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse pull-left" id="navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="?page=Siswa">Siswa</a></li>
            <li><a href="?page=Laporan">Laporan Siswa</a></li>
             <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Pengaturan <span class="caret"></span></a>
              <ul class="dropdown-menu" role="menu">
                <li><a id="ganti_password" class="ganti_password">Ganti Password</a></li>
                 <li><a id="ganti_username" class="ganti_username">Ganti Username</a></li>
              </ul>
            </li>
            
          </ul>
          <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
              <input type="text" class="form-control" id="navbar-search-input" placeholder="Search">
            </div>
          </form>
        </div>
        <!-- /.navbar-collapse -->
        <!-- Navbar Right Menu -->
<?php include('view/header.php'); ?>
        <!-- /.navbar-custom-menu -->
      </div>
      <!-- /.container-fluid -->
    </nav>
  </header>
  <!-- Full Width Column -->
  <div class="content-wrapper">
    <br>
    <div class="container">
      <div class="box box-default">

      <!-- Content Header (Page header) -->
      <!-- <section class="content-header">
        <h1>
          Top Navigation
          <small>Example 2.0</small>
        </h1>
        <ol class="breadcrumb">
          <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
          <li><a href="#">Layout</a></li>
          <li class="active">Top Navigation</li>
        </ol>
      </section> -->

      <!-- Main content -->
      
      <section class="content">
        <?php if(isset($_GET['page'])){
    $page = $_GET['page'];
    switch ($page) {
            case 'Laporan':
              include "view/laporan_siswa.php";
            break;

            case 'Alert':
              include "view/alert_login.php";
            break;

            case 'Penilaian':
              include "view/penilaian.php";
            break;
            case 'Siswa':
              include "view/siswa_list.php";
            break;
            case 'SiswaDetail':
              include "view/siswa_detail.php";
            break;

      default:
        echo "<center>
  <h3><b><span class='glyphicon glyphicon-ban-circle' aria-hidden='true'></span> 404. Halaman tidak di temukan !</b></h3>
  </center>"; break; } }else{ include "view/info.php"; }
?>

       <div class="modal fade" id="modal-password">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Ganti Password</h4>
              </div>
             <div class="modal-body">
                 <form id="form_password" method="POST">
<div class="box-body">
                <div class="form-group">
                  <input type="hidden" class="form-control user_id" id="user_id" name="user_id" placeholder="Password" value="<?php echo $_SESSION['logged_in_lokasi']; ?>">
                  <label for="exampleInputEmail1">Password Baru</label>
                  <input type="password" class="form-control password" id="password" name="password" placeholder="Password">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Ulangi Password</label>
                  <input type="password" class="form-control ulangi_password" id="ulangi_password" name="ulangi_password" placeholder="Ulangi Password">
                </div>               
              </div>
</form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary btn-password">Save</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>

       <div class="modal fade" id="modal-username">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Ganti Username</h4>
              </div>
             <div class="modal-body">
                 <form id="form_username" method="POST">
<div class="box-body">
                <div class="form-group">
                  <input type="hidden" class="form-control user_id" id="user_id" name="user_id" placeholder="Password" value="<?php echo $_SESSION['logged_in_lokasi']; ?>">
                  <label for="exampleInputEmail1">Username Baru</label>
                  <input type="text" class="form-control username" id="username" name="username" placeholder="Username">
                </div>        
              </div>
</form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary btn-username">Save</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
      </section>

      <!-- /.content -->
    </div>
    </div>
    <!-- /.container -->
  </div>
  <!-- /.content-wrapper -->
<?php include 'view/footer.php'; ?>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="assets/bower_components/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="assets/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- SlimScroll -->
<script src="assets/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="assets/bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="assets/dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="assets/dist/js/demo.js"></script>
<script>
  //---------------------------------- Ganti Password
  $('a.ganti_password').on('click', function() { 
    $("#modal-password").modal('show');    
       })
   $('.btn-password').on('click', function() {
    var password = $("input.password").val();
    var ulangi_password = $("input.ulangi_password").val();
    if(password != ulangi_password )
    {
      alert("Pasword Tidak Cocok")
    }
    else if (password == '')
    {
      alert("Password Kosong")
    }
    else{
      var form = $("#form_password").serialize();
      $.ajax({
      type : 'POST',  
      url:'modules/ganti_password.php',
      data : form,
      success:function(response)
      {
         if(response == "ok"){
         $("#modal-password").modal('hide');
          alert("Berhasil");
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
   //------------------------------ END Password

   //--------------------------------- Ganti Username
   $('a.ganti_username').on('click', function() { 
    $("#modal-username").modal('show');    
       })
   $('.btn-username').on('click', function() {

      var form = $("#form_username").serialize();
      $.ajax({
      type : 'POST',  
      url:'modules/ganti_username.php',
      data : form,
      success:function(response)
      {
         if(response == "ok"){
         $("#modal-username").modal('hide');
          alert("Berhasil");
         }
         else if (response == "digunakan")
         {
          alert("Username Telah Digunakan, Coba Username Lain");
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

})
   //-------------------------------- End Username
</script>
</body>
</html>
