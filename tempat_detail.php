<!-- Halaman Detail Untuk Tidak Login -->

<?php
$row = $db->get_row("SELECT * FROM tb_sekolah WHERE id_sekolah='$_GET[ID]'");
?>
<div class="page-header">
    <h1><b><?=$row->nama_sekolah?></b></h1>
    <h3>Akreditasi: <?=$row->akreditasi_sekolah?></h3>
    <h4>Alamat: <?=$row->alamat_sekolah?></h4>
    
</div>
<div class="row">
    <div class="col-md-6">
        <img class="img-fluid" height="380" src="assets/images/tempat/small_<?=$row->gambar_sekolah?>" />
        
        <div>
        <br><h3><b>Keterangan:</b></h3>
        <h4><b>Nama Kepala Sekolah:</b> <?=$row->nama_kepsek?></h4>
        <h4><b>Daya Tampung:</b> <?=$row->daya_tampung?> Siswa</h4>

        <h4><b>Fasilitas:</b><br><br> <?=$row->keterangan?></h4>

        <br><br><p>Sumber Data: <a href="https://dapo.kemdikbud.go.id/sp" target="_blank">https://sekolah.data.kemdikbud.go.id/</a></p>
        </div>
    </div>
    <div class="col-md-6">
        <p>
            <a href="?m=tempat_list" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-chevron-left"></span> Kembali Ke Halaman Utama</a>
            <a href="javascript:void(0)" onclick="showRoute()" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-search"></span> Tampilkan Rute</a>
            <a href="?m=detail&ID=<?=$_GET['ID']?>" class="btn btn-info btn-sm"><span class="glyphicon glyphicon-list"></span> Rute Detail</a>
        </p>
        <div id="map" style="height:500px;"></div>
        
    </div>
</div>



<script>

var origin_pos  = {
    lat : default_lat,
    lng : default_lng
};
var dst_pos = {
        lat : <?=$row->lat?>,
        lng : <?=$row->lng?>
    };
var errorRoute = false;
var map_detail;
var dragged = false;
var directionsDisplay;
var routeDisplayed = 0;

//menampilkan map detail
function tampilDetail(){          
    
    
    map_detail = new google.maps.Map(document.getElementById('map'), {
        zoom: 12,
        center: dst_pos
    });  
    
    directionsDisplay = new google.maps.DirectionsRenderer({map: map_detail});
    
    addMarker(dst_pos, map_detail, '<?=$row->nama_sekolah?>');    
    
    infoWindow = new google.maps.InfoWindow;
    
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
                lat: position.coords.latitude,
                lng: position.coords.longitude
            };
            
            
            origin_pos = pos;

            infoWindow.setPosition(pos);
            infoWindow.setContent('Lokasi Saya');
            infoWindow.open(map_detail);
            map_detail.setCenter(pos);
        }, function() {
            handleLocationError(true, infoWindow, map_detail.getCenter());
        });
    } else {          
        handleLocationError(false, infoWindow, map_detail.getCenter());
    }
}

function handleLocationError(browserHasGeolocation, infoWindow, pos) {
    infoWindow.setPosition(pos);
    infoWindow.setContent(browserHasGeolocation ?
                          'Error: The Geolocation service failed.' :
                          'Error: Your browser doesn\'t support geolocation.');
    infoWindow.open(map);
}

//menampilkan rute lokasi
function showRoute(){                               
    var directionsService = new google.maps.DirectionsService;
    var directionsDisplay = new google.maps.DirectionsRenderer;
    directionsDisplay.setMap(map_detail);    
    calculateAndDisplayRoute(directionsService, directionsDisplay);       
    console.log('Route displayed ' + ++routeDisplayed);
}

function calculateAndDisplayRoute(directionsService, directionsDisplay) {
    directionsService.route({
          origin: origin_pos,
          destination: dst_pos,
          travelMode: 'DRIVING'
    }, function(response, status) {
      if (status === 'OK') {
        directionsDisplay.setDirections(response);
      } else {
        window.alert('Directions request failed due to ' + status);
      }
    });
}

$(function(){
    tampilDetail();    
})

$(document).ready(function(){

    loadGallery(true, 'a.thumbnail');

    //This function disables buttons when needed
    function disableButtons(counter_max, counter_current){
        $('#show-previous-image, #show-next-image').show();
        if(counter_max == counter_current){
            $('#show-next-image').hide();
        } else if (counter_current == 1){
            $('#show-previous-image').hide();
        }
    }

    /**
     *
     * @param setIDs        Sets IDs when DOM is loaded. If using a PHP counter, set to false.
     * @param setClickAttr  Sets the attribute for the click handler.
     */

    
});
</script>