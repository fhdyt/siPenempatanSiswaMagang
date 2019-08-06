<style>
.marker-pin {
  width: 30px;
  height: 30px;
  border-radius: 50% 50% 50% 0;
  background: #c30b82;
  position: absolute;
  transform: rotate(-45deg);
  left: 50%;
  top: 50%;
  margin: -15px 0 0 -15px;
}
// to draw white circle
.marker-pin::after {
    content: '';
    width: 24px;
    height: 24px;
    margin: 3px 0 0 3px;
    background: #fff;
    position: absolute;
    border-radius: 50%;
 }
// to align icon
.custom-div-icon i {
   position: absolute;
   width: 22px;
   font-size: 22px;
   left: 0;
   right: 0;
   margin: 10px auto;
   text-align: center;
}
    </style>
    
</style>
<div id="mapid"></div>

<script>
	var marker;
	var mymap = L.map('mapid').setView([0.450529, 101.399758], 13);

	L.tileLayer('https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}.png?access_token=pk.eyJ1IjoibWFwYm94IiwiYSI6ImNpejY4NXVycTA2emYycXBndHRqcmZ3N3gifQ.rJcFIG214AriISLbB6B5aw', {
		maxZoom: 18,
		attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, ' +
			'<a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, ' +
			'Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
		id: 'mapbox.streets'
	}).addTo(mymap);

$(function(){
	$.ajax({
			dataType:'json',
			async:false,
			url:'modules/tampilmarker.php',
			success:function(data)
			{
				for(i in data){
					var is=data[i];
					var marker = L.divIcon({
                            className: 'custom-div-icon',
                            html: "<div style='background-color:"+is.JURUSAN_WARNA+";' class='marker-pin'></div>",
                            iconSize: [30, 42],
                            iconAnchor: [15, 42]
                        });
                
                	L.marker([is.LOCATION_LAT, is.LOCATION_LNG], {icon: marker}).addTo(mymap)
					.bindPopup("<b>"+is.LOCATION_NAME+"</b><br />"+is.LOCATION_ADDRESS+"<br /><a href='?page=Mapdetail&id="+is.LOCATION_ID+"'>Lihat</a>");

				}
				
				
			}
		});
})

var popup = L.popup();

mymap.on('click', function(e){
  var coord = e.latlng;
  var lat = coord.lat;
  var lng = coord.lng;
  console.log("You clicked the map at latitude: " + lat + " and longitude: " + lng);
  });




</script>