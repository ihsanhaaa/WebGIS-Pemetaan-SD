<?php
    $row = $db->get_row("SELECT * FROM tb_sekolah WHERE id_sekolah='$_GET[ID]'"); 
?>
<div class="page-header">
    <h1>Edit Data Sekolah</h1>
</div>
<div class="row">
    <div class="col-sm-6">
        <?php if($_POST) include'aksi.php'?>
        <form method="post" action="?m=tempat_ubah&ID=<?=$row->id_sekolah?>" enctype="multipart/form-data">
            <div class="form-group">
                <label>Nama Sekolah <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="nama_sekolah" value="<?=$row->nama_sekolah?>"/>
            </div>

            <div class="form-group">
                <label>Alamat <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="alamat_sekolah" value="<?=$row->alamat_sekolah?>"/>
            </div>
            
            <div class="form-group">
                <label>Gambar Sekolah <span class="text-danger">*</span></label>
                <input class="form-control" type="file" name="gambar_sekolah" />
                <p class="help-block">Kosongkan jika tidak mengubah gambar</p>
                <img class="thumbnail" src="assets/images/tempat/small_<?=$row->gambar_sekolah?>" height="60" />
            </div>
            
            <div class="form-group">
                <label>Akreditasi <span class="text-danger">*</span></label>
                <select class="form-control" name="akreditasi_sekolah" value="<?=$row->akreditasi_sekolah?>">
             
                <option value="A"/>A</option>
                <option value="B"/>B</option>
                <option value="C"/>C</option>
                <option value="-"/>Tidak diketahui</option>
               
                </select>
            </div>

            

        <!-- <div class="form-group">
             <label>Kategori <span class="text-danger"> </span></label>
                     <input class="form-control" type="text" name="tb_kategori" value="<?=$row->tb_kategori?>"/>
         </div> -->

            <div class="form-group">
                <label>Nama Kepala Sekolah <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="nama_kepsek" value="<?=$row->nama_kepsek?>"/>
            </div>
            <div class="form-group">
                <label>Daya Tampung <span class="text-danger">*</span></label>
                <input class="form-control" type="text" name="daya_tampung" value="<?=$row->daya_tampung?>"/>
            </div>
            <div class="form-group">
                <label>Keterangan</label>
                <textarea class="mce" name="keterangan"><?=$row->keterangan?></textarea>
            </div>

            <div class="form-group">
                <label>Latitude <span class="text-danger">*</span></label>
                <input class="form-control" type="text" id="lat" name="lat" value="<?=$row->lat?>"/>
            </div>
            <div class="form-group">
                <label>Longitude <span class="text-danger">*</span></label>
                <input class="form-control" type="text" id="lng" name="lng" value="<?=$row->lng?>"/>
            </div>

            <div class="form-group">
                <a class="btn btn-danger" href="?m=tempat"><span class="glyphicon glyphicon-chevron-left"></span> 
                Kembali</a>
                <button class="btn btn-success"><span class="glyphicon glyphicon-saved"></span> Simpan</button>
            </div>  
        </form>
    </div>
    <div class="col-md-6">
        <div id="map" style="height: 400px;"></div>
    </div>
</div>
<script>
var defaultCenter = {
    lat : <?=$row->lat * 1?>, 
    lng : <?=$row->lng * 1?>
};
function initMap() {

  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 13,
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