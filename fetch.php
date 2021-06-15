<?php
//fetch.php
$connect = mysqli_connect("localhost", "root", "", "uas-webgis");
$output = '';
if(isset($_POST["query"]))
{
 $search = mysqli_real_escape_string($connect, $_POST["query"]);
 $query = "
  SELECT * FROM tb_sekolah
  WHERE nama_sekolah LIKE '%".$search."%'
  OR alamat_sekolah LIKE '%".$search."%'
 ";
}
else
{
 $query = "
  SELECT * FROM tb_sekolah ORDER BY nama_sekolah
 ";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
 $output .= '
  <div class="table-responsive">
   <table class="table table bordered">
    <tr>
    
     <th>Aksi</th>
     <th>Nama Sekolah</th>
     <th>Alamat Sekolah</th>
     <th>Akreditasi</th>

     
    </tr>
 ';
 while($row = mysqli_fetch_array($result))
 {
  $output .= '
   <tr>

    <td><a class="btn btn-xs btn-success" href="?m=tempat_detail&ID='.$row["id_sekolah"].'"><span class="glyphicon glyphicon-eye-open"></span></a></td>
    <td>'.$row["nama_sekolah"].'</td>
    <td>'.$row["alamat_sekolah"].'</td>
    <td>'.$row["akreditasi_sekolah"].'</td>
    
   </tr>
  ';
 }
 echo $output;
}
else
{
 echo 'Data Tidak di Temukan';
}

?>
