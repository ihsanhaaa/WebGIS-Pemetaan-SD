<!-- Untuk Halaman Admin -->

<div class="page-header">
    <h1>Halaman Admin</h1>
</div>

<!-- <style >
    #scroll{
  width: 1148px;
  background: white;
  padding: 10px;
  overflow: scroll;
  height: 500px;
  float: center;
}
</style> -->

<div class="panel panel-default">
    <div class="panel-heading">        
        <form class="form-inline">
            <input type="hidden" name="m" value="tempat" />
            <div class="form-group">
                <span class="glyphicon glyphicon-search"></span><input class="form-control" type="text" placeholder=" Masukkan Kata Kunci..." name="q" value="<?=$_GET['q']?>"/>            
                <button class="btn btn-success"><span class="glyphicon glyphicon-refresh"></span> Refresh</button>            
                <a class="btn btn-primary" href="?m=tempat_tambah"><span class="glyphicon glyphicon-plus"></span> Tambah Data Sekolah</a>
            </div>
        </form>
    </div>
    <div class="table-responsive">
        <table class="table table-bordered table-hover">
        <thead>
            <tr class="nw">
                <th>No</th>
                <th>Gambar</th>
                <th>Nama Sekolah</th>
                <th>Akreditasi</th>
                <th>Alamat</th>
                <th>Nama Kepala Sekolah</th>
                <th>Daya Tampung</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <?php
        $q = esc_field($_GET['q']);
                
        $sql = "SELECT * 
            FROM tb_sekolah p
            WHERE nama_sekolah LIKE '%$q%' 
            ORDER BY id_sekolah";
        $rows = $db->get_results($sql);
        
        foreach($rows as $row):?>
        <tr>
            <td><?=++$no?></td>
            <td><img class="thumbnail" height="80" src="assets/images/tempat/small_<?=$row->gambar_sekolah?>" /></td>
            <td><?=$row->nama_sekolah?></td>
            <td><?=$row->akreditasi_sekolah?></td>
            <td><?=$row->alamat_sekolah?></td>
            <td><?=$row->nama_kepsek?></td>
            <td><?=$row->daya_tampung?></td>
            <td class="nw">
                <a class="btn btn-xs btn-warning" href="?m=tempat_ubah&ID=<?=$row->id_sekolah?>"><span class="glyphicon glyphicon-pencil"></span></a><br><br>
                <a class="btn btn-xs btn-danger" href="aksi.php?act=tempat_hapus&ID=<?=$row->id_sekolah?>" onclick="return confirm('Hapus data?')"><span class="glyphicon glyphicon-trash"></span></a>
            </td>
        </tr>
        <?php endforeach;?>
        </table>
    </div>
</div>