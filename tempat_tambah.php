<div class="page-header">
    <h1>Tambah Data Sekolah</h1>
</div>
<form method="post" action="?m=tempat_tambah" enctype="multipart/form-data">    
    <div class="row">
        <div class="col-sm-6">
            <?php if($_POST) include'aksi.php'?>
            <div class="form-group">
                <label>Nama Sekolah <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="nama_sekolah" value="<?=$_POST['nama_sekolah']?>"/>
            </div>
            
            
            <div class="form-group">
                <label>Alamat Sekolah <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="alamat_sekolah" value="<?=$_POST['alamat_sekolah']?>"/>
            </div>

            <div class="form-group">
                <label>Gambar Sekolah <span class="text-danger">*</span></label>
                <input class="form-control" type="file" name="gambar_sekolah" />
            </div>





            <div class="form-group">
                <label>Akreditasi <span class="text-danger">*</span></label>
                <select class="form-control" name="akreditasi_sekolah" value="<?=$_POST['akreditasi_sekolah']?>">
             
                <option value="A"/>A</option>
                <option value="B"/>B</option>
                <option value="C"/>C</option>
                <option value="-"/>Tidak diketahui</option>

               
                </select>
            </div>

            <div class="form-group">
                <label>Nama Kepala Sekolah <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="nama_kepsek" value="<?=$_POST['nama_kepsek']?>"/>
            </div>
            <div class="form-group">
                <label>Daya Tampung <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="daya_tampung" value="<?=$_POST['daya_tampung']?>"/>
            </div>


            <div class="form-group">
                <label>Keterangan</label>
                <textarea class="mce" name="keterangan"><?=$_POST['keterangan']?></textarea>
            </div>

            <div class="form-group">
                <label>Latitude <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="lat" id="lat" value="<?=$_POST['lat']?>"/>
            </div>
            <div class="form-group">
                <label>Longitude <span class="text-danger">*</span></label>
                <input class="form-control" type="text" id="lng" name="lng" value="<?=$_POST['lng']?>"/>
            </div>

            <div class="form-group">
                <button class="btn btn-primary"><span class="glyphicon glyphicon-save"></span> Simpan</button>
                <a class="btn btn-danger" href="?m=tempat"><span class="glyphicon glyphicon-arrow-left"></span> Kembali</a>
            </div>        
        </div>
        <div class="col-sm-6">
            <div id="map" style="height: 400px;"></div>
        </div>        
    </div>
</form>
<script>
var defaultCenter = {
    lat : -0.0332661276443475, 
    lng : 109.3372372485594
};
function initMap() {

  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: <?=get_option('default_zoom')?>,
    center: defaultCenter 
  });

  var marker = new google.maps.Marker({
    position: defaultCenter,
    map: map,
    title: 'Click to zoom',
    draggable:true
  });
  
  
    marker.addListener('drag', handleEvent);
    marker.addListener('dragend', handleEvent);
    
    var infowindow = new google.maps.InfoWindow({
        content: '<h4>Drag untuk pindah lokasi</h4>'
    });
    
    infowindow.open(map, marker);
}

function handleEvent(event) {
    document.getElementById('lat').value = event.latLng.lat();
    document.getElementById('lng').value = event.latLng.lng();
}

$(function(){
    initMap();
})
</script>