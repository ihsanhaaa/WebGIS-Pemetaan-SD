<!-- Halaman Tampil Peta Untuk Tidak Login -->

<div class="page-header">
  <table>
    <tr>
      <th><h2><b>Selamat Datang Di Website <br>Peta Sebaran SD Kota Pontianak</b></h2></th>
      <th style="padding-left: 65px;">
        <h5><b>Keterangan Simbol:</b></h5>
        <p><img src="assets/icons/pointa.png">  Akreditasi A (58)
        <img src="assets/icons/pointb.png">  Akreditasi B (97)
        <img src="assets/icons/pointc.png">  Akreditasi C (9)
        <img src="assets/icons/pointno.png">  Tidak diketahui (4)</p>
      </th>
    </tr>
  </table>
</div>

  


<div class="scroll"  >
     <input type="text" name="search_text" id="search_text" placeholder="Masukkan Kata Kunci..." class="form-control"/>
     <div id="result"></div>

</div> 

<div id="map" style="height: 500px;"></div>

<script>

$(document).ready(function(){

 load_data();

 function load_data(query)
 {
  $.ajax({
   url:"fetch.php",
   method:"POST",
   data:{query:query},
   success:function(data)
   {
    $('#result').html(data);
   }
  });
 }
 $('#search_text').keyup(function(){
  var search = $(this).val();
  if(search != '')
  {
   load_data(search);
  }
  else
  {
   load_data();
  }
 });
});

function tampilDekat(){
    getCurLocation();
    
    map_dekat = new google.maps.Map(document.getElementById('map'), {
        zoom: 13,
        center: {
            lat : -0.021074001928558097, 
            lng : 109.33893897393114
        }
    });
       
    var data =  <?=json_encode($db->get_results("SELECT * FROM tb_sekolah where akreditasi_sekolah='A'"))?>;
    $.each(data, function(k, v){
        var pos = {
            lat : parseFloat(v.lat),
            lng : parseFloat(v.lng)
        };
        var contentString = '<center>' + '<img class="thumbnail" height="120" src="assets/images/tempat/'+v.gambar_sekolah+'?> </>"' +

        '<h2><b>'  + v.nama_sekolah + '</b></h2><br>' + v.alamat_sekolah +
            '<br><br><p align="center"><a href="?m=tempat_detail&ID=' + v.id_sekolah + '" class="link_detail btn btn-success">Lihat Detail</a>' + '</center>';
        var infowindow = new google.maps.InfoWindow({
            content: contentString
        });
        var marker = new google.maps.Marker({
            position: pos,
            map: map_dekat,
            animation: google.maps.Animation.DROP,
            icon : 'assets/icons/pointa.png'
        });         
        marker.addListener('click', function() {
            infowindow.open(map_dekat, marker);
        });
    });
         
    var data =  <?=json_encode($db->get_results("SELECT * FROM tb_sekolah where akreditasi_sekolah='B'"))?>;
    $.each(data, function(k, v){
        var pos = {
            lat : parseFloat(v.lat),
            lng : parseFloat(v.lng)
        };
        var contentString = '<center>' + '<img class="thumbnail" height="120" src="assets/images/tempat/'+v.gambar_sekolah+'?> </>"' +

        '<h2><b>' + v.nama_sekolah + '</b></h2><br>' + v.alamat_sekolah +
            '<br><br><p align="center"><a href="?m=tempat_detail&ID=' + v.id_sekolah + '" class="link_detail btn btn-success">Lihat Detail</a>' + '</center>';
        var infowindow = new google.maps.InfoWindow({
            content: contentString
        });
        var marker = new google.maps.Marker({
            position: pos,
            map: map_dekat,
            animation: google.maps.Animation.DROP,
            icon : 'assets/icons/pointb.png'
        });         
        marker.addListener('click', function() {
            infowindow.open(map_dekat, marker);
        });
    });

    var data =  <?=json_encode($db->get_results("SELECT * FROM tb_sekolah where akreditasi_sekolah='C'"))?>;
    $.each(data, function(k, v){
        var pos = {
            lat : parseFloat(v.lat),
            lng : parseFloat(v.lng)
        };
        var contentString = '<center>' + '<img class="thumbnail" height="120" src="assets/images/tempat/'+v.gambar_sekolah+'?> </>"' +

        '<h2><b>'  + v.nama_sekolah + '</b></h2><br>' + v.alamat_sekolah +
            '<br><br><p align="center"><a href="?m=tempat_detail&ID=' + v.id_sekolah + '" class="link_detail btn btn-success">Lihat Detail</a>' + '</center>';
        var infowindow = new google.maps.InfoWindow({
            content: contentString
        });
        var marker = new google.maps.Marker({
            position: pos,
            map: map_dekat,
            animation: google.maps.Animation.DROP,
            icon : 'assets/icons/pointc.png'
        });         
        marker.addListener('click', function() {
            infowindow.open(map_dekat, marker);
        });
    });

    var data =  <?=json_encode($db->get_results("SELECT * FROM tb_sekolah where akreditasi_sekolah='-'"))?>;
    $.each(data, function(k, v){
        var pos = {
            lat : parseFloat(v.lat),
            lng : parseFloat(v.lng)
        };
        var contentString = '<center>' + '<img class="thumbnail" height="120" src="assets/images/tempat/'+v.gambar_sekolah+'?> </>"' +

        '<h2><b>'  + v.nama_sekolah + '</b></h2><br>' + v.alamat_sekolah +
            '<br><br><p align="center"><a href="?m=tempat_detail&ID=' + v.id_sekolah + '" class="link_detail btn btn-success">Lihat Detail</a>' + '</center>';
        var infowindow = new google.maps.InfoWindow({
            content: contentString
        });
        var marker = new google.maps.Marker({
            position: pos,
            map: map_dekat,
            animation: google.maps.Animation.DROP,
            icon : 'assets/icons/pointno.png'
        });         
        marker.addListener('click', function() {
            infowindow.open(map_dekat, marker);
        });
    });
}  

$(function(){
    tampilDekat();
})

</script>

<style>

.scroll{
  width: 360px;
  background: white;
  padding: 10px;
  overflow: scroll;
  height: 500px;
  float: left;
}
</style>