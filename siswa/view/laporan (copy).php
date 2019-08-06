<?php 
$date = date("Y-m-d");
error_reporting(0);
$session = $_SESSION['logged_in'];

 ?>
<style>
	.modal-dialog{
  width:1300px;
}
</style>

<div class="row">
	<div class="col-md-12">
<button type="button" class="btn btn-default btn-tambah">
                Laporan
              </button>
          </div>
</div>
<br>
<div class="modal fade" id="modal-default" style="display: none;">
          <div class="modal-dialog">
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
<table class="table table-bordered">
  <thead>
    <tr>
      <td>No.</td>
      <td>Tanggal</td>
      <td>Lokasi Magang</td>
      <td>Penanggung Jawab</td>
      <td>Laporan</td>
      <td>Status</td>
      <td>Aksi</td>
    </tr>
  </thead>
  <tbody id="zona_data">

  </tbody>
</table>

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
          laporan_list();
          
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

//   function laporan_list()
// {     var data = 'SISWA_ID=<?php echo $_SESSION['logged_in']; ?>';
//     $.ajax({
//       type : 'POST',  
//       url:'modules/laporan_list.php',
//       data : data,
//       success:function(response)
//       {
//          if(response == "no_data"){

//           $("tbody#zona_data").append("<tr><td colspan='7'><div class='callout callout-danger'>Belum ada data.</div></td></tr>");
//          }
//          else{
//           $("tbody#zona_data").empty();
//           $("tbody#zona_data").append(""+response+"");
//         }
//       },
//       error:function()
//       {
//         alert("Sistem Bermasalah");
//       }
//     });
//   }
//   $(function(){ laporan_list(); });
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
    $.ajax({
      type : 'POST', 
      //async:false,
      url:'modules/laporan_list.php',
      data : data,
      dataType:'JSON', 
      success:function(response)
      {
         if(response == "no_data"){

          $("tbody#zona_data").append("<tr><td colspan='7'><div class='callout callout-danger'>Belum ada data.</div></td></tr>");
         }
         else{
          console.log(response);

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
      eventSources   : [response],


     

      
    });
        }
      },
      error:function(response)
      {
        console.log(response);
      }
    });

   

  })
</script>