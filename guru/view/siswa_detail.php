<?php
error_reporting(0);

$siswa_id = $_GET['siswa_id'];
$query  = "SELECT * FROM SISWA AS S, JURUSAN AS J, LOCATION AS L, PERMOHONAN AS P, GURU AS G WHERE P.SISWA_ID=S.SISWA_ID AND S.JURUSAN_ID=J.JURUSAN_ID AND P.LOCATION_ID=L.LOCATION_ID AND P.GURU_ID=G.GURU_ID AND G.GURU_ID='".$_SESSION['logged_in_guru']."' AND P.PERMOHONAN_STATUS='A' AND S.SISWA_ID='".$siswa_id."'";
$result = mysqli_query($mysqli,$query)or die(mysqli_error());
$row     = mysqli_fetch_array($result);


$SISWA_ID= $_GET['siswa_id'];
$query3  = "SELECT * FROM LAPORAN AS L, SISWA AS S, LOCATION AS LC WHERE  LC.LOCATION_ID=L.LOCATION_ID AND L.SISWA_ID=S.SISWA_ID AND S.SISWA_ID='".$SISWA_ID."' ORDER BY L.LAPORAN_TANGGAL DESC";
$result3 = mysqli_query($mysqli,$query3)or die(mysqli_error());
$row3     = mysqli_fetch_array($result3);


 $query1  = "SELECT * FROM SISWA AS S, PENILAIAN AS N WHERE S.SISWA_ID=N.SISWA_ID AND S.SISWA_ID='".$siswa_id."' ";
$result1 = mysqli_query($mysqli,$query1)or die(mysqli_error());
$num_row1 = mysqli_num_rows($result1);
$row1     = mysqli_fetch_array($result1);

if ($num_row1>0){
	$nilai = "<a id='lihat_nilai' PENILAIAN_1='".$row1['PENILAIAN_1']."' PENILAIAN_2='".$row1['PENILAIAN_2']."' PENILAIAN_3='".$row1['PENILAIAN_3']."' PENILAIAN_3_KET='".$row1['PENILAIAN_3_KET']."' class='btn btn-warning'>Lihat Penilaian</a>";
}
else
{
	$nilai = "<a id='nilai' SISWA_ID='".$row['SISWA_ID']."' SISWA_NAMA='".$row['SISWA_NAMA']."' JURUSAN='".$row['JURUSAN']."' class='btn btn-success'>Nilai belum diberikan</a>";
}


 ?>
<style>
  .modal-dialog{
  width:800px;
}
</style>
<div class="row">
  <div class="col-md-3"><img src="http://halaman-siswa.esy.es/modules/images/<?php echo $row['SISWA_NIS'];  ?>"></div>
  <div class="col-md-7"><table class="table">
  	<tr>
  		<td>Nama</td>
  		<td>:</td>
  		<td><?php echo $row['SISWA_NAMA']; ?></td>
  	</tr>
  	<tr>
  		<td>Nomor Induk Siswa</td>
  		<td>:</td>
  		<td><?php echo $row['SISWA_NIS']; ?></td>
  	</tr>
  	<tr>
  		<td>Jurusan</td>
  		<td>:</td>
  		<td><?php echo $row['JURUSAN']; ?></td>
  	</tr>
  	<tr>
  		<td>Jenis Kelamin</td>
  		<td>:</td>
  		<td><?php echo $row['SISWA_JK']; ?></td>
  	</tr>
  	<tr>
  		<td>Tempat Tanggal Lahir</td>
  		<td>:</td>
  		<td><?php echo $row['SISWA_TEMPAT_LAHIR']; ?>, <?php echo $row['SISWA_TGL_LAHIR']; ?> </td>
  	</tr>
  </table></div>
  <div class="col-md-2"><?php echo $nilai; ?></div>
</div>
<hr>
<div id="calendar"></div>
<div class="modal fade" id="modal-laporan">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Laporan</h4>
              </div>
              <div class="modal-body">
               <div class="box-body" id="box-body">
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
        <!-- /.modal -->
      </div>



<div class="modal fade" id="modal-default">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Nilai Siswa</h4>
              </div>
              <div class="modal-body">
                 <form id="form_nilai" method="POST">
<div class="box-body">
  <input type="hidden" class="form-control SISWA_ID" id="SISWA_ID" name="SISWA_ID" placeholder="Sikap">
              <table class="table table-bordered">
                <tr>
                  <th>No.</th>
                  <th>Standar Kompetensi</th>
                  <th>Indikator</th>
                  <th>Nilai</th>
                </tr>
                <tr>
                  <td>1.</td>
                  <td>Sikap</td>
                  <td>-Disiplin <br> -Tanggung Jawab <br>-Kejujururan <br> -Sopan <br>-Kerjasama <br>-Mandiri</td>
                <td><input type="text" class="form-control sikap" id="sikap" name="sikap" placeholder="Sikap" value="Nilai belum diberikan" readonly></td>
                </tr>
                <tr>
                  <td>2.</td>
                  <td>Pengetahuan</td>
                  <td>Paket Keahlian</td>
                <td><input type="text" class="form-control pengetahuan" id="pengetahuan" name="pengetahuan" placeholder="Pengetahuan" value="Nilai belum diberikan" readonly></td>
                </tr>
                <tr>
                  <td>3.</td>
                  <td>Keterampilan</td>
                  <td>Diisi dengan materi yang dikerjakan ditempat. <br> <textarea id="keterampilan_ket" name="keterampilan_ket" class="keterampilan_ket form-control" rows="5" value="Nilai belum diberikan" readonly></textarea></td>
                <td><input type="text" class="form-control keterampilan" id="keterampilan" name="keterampilan" placeholder="Keterampilan" value="Nilai belum diberikan" readonly></td>
                </tr>
              </table>
</form>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
</div>


<script>
		   $('#nilai').on('click', function() {
     var SISWA_ID= $(this).attr('SISWA_ID');

      $(".SISWA_ID").val(SISWA_ID);
      $("#modal-default").modal('show');

  });

		 $('#lihat_nilai').on('click', function() {
     var PENILAIAN_1= $(this).attr('PENILAIAN_1');
     var PENILAIAN_2= $(this).attr('PENILAIAN_2');
     var PENILAIAN_3= $(this).attr('PENILAIAN_3');
     var PENILAIAN_3_KET= $(this).attr('PENILAIAN_3_KET');

     $(".sikap").attr("readonly", true);
     $(".pengetahuan").attr("readonly", true);
     $(".keterampilan").attr("readonly", true);
     $(".keterampilan_ket").attr("readonly", true);

     $(".btn-nilai").attr("disabled", "disabled", true);

     $(".sikap").val(PENILAIAN_1);
     $(".pengetahuan").val(PENILAIAN_2);
     $(".keterampilan").val(PENILAIAN_3);
     $(".keterampilan_ket").val(PENILAIAN_3_KET);

      $("#modal-default").modal('show');

  });
		function laporan_siswa()
{ 		var data = 'SISWA_ID=<?php echo $row['SISWA_ID']; ?>&GURU_ID=<?php echo $_SESSION['logged_in_guru']; ?>';
	  $.ajax({
      type : 'POST',
      url:'modules/laporan_siswa2.php',
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



  $(function () {
    /* initialize the external events
     -----------------------------------------------------------------*/
    function init_events(ele) {
      ele.each(function () {

        // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
        // it doesn't need to have a start or end
        var eventObject = {
          title: $.trim($(this).text()) // use the element's text as the event title
        }

        var initialLocaleCode = 'id';
        // store the Event Object in the DOM element so we can get to it later
        $(this).data('eventObject', eventObject)

        // make the event draggable using jQuery UI
        $(this).draggable({
          zIndex        : 1070,
          revert        : true, // will cause the event to go back to its
          revertDuration: 0  //  original position after the drag
        })

      })
    }

    init_events($('#external-events div.external-event'))

    /* initialize the calendar
     -----------------------------------------------------------------*/
    //Date for the calendar events (dummy data)
    var date = new Date()
    var d    = date.getDate(),
        m    = date.getMonth(),
        y    = date.getFullYear()
         var data = 'SISWA_ID=<?php echo $_SESSION['logged_in']; ?>';
   $('#calendar').fullCalendar({
      header    : {
        left  : 'prev,next today',
        center: 'title',
        right : ''
      },
      buttonText: {
        today: 'today',
        month: 'month',
        week : 'week',
        day  : 'day'
      },
      lang: 'id',
      //eventSources   : [response],
      events :
      [
     <?php foreach($result as $row):

        if ($row3['LAPORAN_STATUS']== 'N')
        {
          $color = '#B7950B';
          $title = 'Menunggu';
        }
        else if ($row3['LAPORAN_STATUS']== 'A')
        {
          $color = 'green';
          $title = 'Disetujui';
        }

      ?>
        {
          id: '<?php echo $row3['LAPORAN_ID']; ?>',
          title: '<?php echo $title; ?>',
          start: '<?php echo $row3['LAPORAN_TANGGAL']; ?>',
          end: '<?php echo $row3['LAPORAN_TANGGAL']; ?>',
          color: '<?php echo $color; ?>',

        },
      <?php endforeach; ?>
      ],
      eventClick: function(event)
          {
              var laporan_id = event.id;
              laporan_detail(laporan_id);
              $("#modal-laporan").modal('show');

           },
    });
  })

      function laporan_detail(id)
{
      var data = 'LAPORAN_ID='+id;
      $.ajax({
      type : 'POST',
      url:'modules/laporan_detail.php',
      data : data,
      success:function(response)
      {
         if(response == "no_data"){

         }
         else{
          $("div#box-body").empty();
         $("div#box-body").html(response);
        }
      },
      error:function()
      {
        alert("Sistem Bermasalah");
      }
    });
  }
</script>
