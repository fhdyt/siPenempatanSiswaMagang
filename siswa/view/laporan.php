<?php 
$date = date("Y-m-d");
error_reporting(0);
$session = $_SESSION['logged_in'];

 ?>
<style>
	.modal-dialog2{
  width:1300px;
}
</style>
<?php 
$SISWA_ID=$_SESSION['logged_in'];
$query  = "SELECT * FROM LAPORAN AS L, SISWA AS S, LOCATION AS LC WHERE  LC.LOCATION_ID=L.LOCATION_ID AND L.SISWA_ID=S.SISWA_ID AND S.SISWA_ID='".$SISWA_ID."' ORDER BY L.LAPORAN_TANGGAL DESC";
$result = mysqli_query($mysqli,$query)or die(mysqli_error());
$row     = mysqli_fetch_array($result);
 ?>
<div class="row">
	<div class="col-md-12">
<button type="button" class="btn btn-default btn-tambah">
                Laporan
              </button>
          </div>
</div>
<br>
<div class="modal fade" id="modal-default" style="display: none;">
          <div class="modal-dialog modal-dialog2">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">×</span></button>
                <h4 class="modal-title">Laporan Magang</h4>
              </div>
              <div class="modal-body">
              	 <form id="form_laporan" method="POST">
              <section class="content">
     <div class="form-group">
     	<input class="form-control input-lg" type="text" value="<?php echo date("Y/m/d");?>" readonly>
      		<h1></h1>
		</div>
		<div class="form-group">
 		<input class="form-control input-lg penanggung_jawab" name="penanggung_jawab" id="penanggung_jawab" type="text" placeholder="Penanggu Jawab">
</div>
         <div class="form-group">
          <textarea id="editor1" class="form-control editor1" name="editor1" rows="10">
                  </textarea>
                </div>
    </section>
</form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default pull-left" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary btn-laporan">Save changes</button>
              </div>
            </div>
            <!-- /.modal-content -->
          </div>
          <!-- /.modal-dialog -->
        </div>
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

<script>
  if (<?php echo $num_row1; ?><1)
  {
    alert("Anda belum memiliki lokasi magang.");
    $('.btn-tambah').attr('disabled', 'disabled');
  }
  else {}
	$('.btn-tambah').on('click', function() {
			$("#modal-default").modal('show');
	});


	$(".btn-laporan").on('click', function(e) {
		if ($('input.penanggung_jawab').val()=='')
    {
      alert("Penanggung Jawab harus diisi.");
    }
    else{
		var laporan = $(".editor1").val();
		var penanggung_jawab = $("#penanggung_jawab").val();
		var form = "location=<?php echo $row1['LOCATION_ID']; ?>&tanggal=<?php echo $date; ?>&siswa_id=<?php echo $_SESSION['logged_in']; ?>&penanggung_jawab="+penanggung_jawab+"&laporan="+laporan;
  $.ajax({
      type : 'POST',  
      url:'modules/kirim_laporan.php',
      data : form,
      success:function(response)
      {
         if(response == "ok"){
         $("#modal-default").modal('hide');
          alert("Laporan Terkirim");
          window.location.reload();
          
         }
         else if(response == "laporan"){
         	$("#modal-default").modal('hide');
          alert("Anda telah mengisi laporan pada hari ini.");
          
         }
         else{
          alert("Laporan Gagal")
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
<script>
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
      //eventSources   : [response],
      lang : 'id',
      events : 
      [
     <?php foreach($result as $row): 
      
        $start = explode(" ", $row['LAPORAN_TANGGAL']);
        $end = explode(" ", $row['LAPORAN_TANGGAL']);
        if ($row['LAPORAN_STATUS']== 'N')
        {
          $color = '#B7950B';
          $title = 'Menunggu';
        }
        else if ($row['LAPORAN_STATUS']== 'A')
        {
          $color = 'green';
          $title = 'Disetujui';
        }

      ?>
        {
          id: '<?php echo $row['LAPORAN_ID']; ?>',
          title: '<?php echo $title; ?>',
          start: '<?php echo $row['LAPORAN_TANGGAL']; ?>',
          end: '<?php echo $row['LAPORAN_TANGGAL']; ?>',
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