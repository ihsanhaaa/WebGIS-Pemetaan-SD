<?php
require_once'functions.php';
 

    /** LOGIN */ 
    if ($mod=='login'){
        $user = esc_field($_POST['user']);
        $pass = esc_field($_POST['pass']);
        
        $row = $db->get_row("SELECT * FROM tb_user WHERE user='$user' AND pass='$pass'");
        
        if($row){
            $_SESSION['login'] = $row->user;
            redirect_js("index.php?m=tempat");
        } else{
            print_msg("Salah kombinasi username dan password.");
        }          
    }  else if ($mod=='password'){
        $pass1 = $_POST[pass1];
        $pass2 = $_POST[pass2];
        $pass3 = $_POST[pass3];
        
        $row = $db->get_row("SELECT * FROM tb_user WHERE user='$_SESSION[user]' AND pass='$pass1'");        
        
        if($pass1=='' || $pass2=='' || $pass3=='')
            print_msg('Field bertanda * harus diisi.');
        elseif(!$row)
            print_msg('Password lama salah.');
        elseif( $pass2 != $pass3 )
            print_msg('Password baru dan konfirmasi password baru tidak sama.');
        else{        
            $db->query("UPDATE tb_user SET pass='$pass2' WHERE user='$_SESSION[user]'");                    
            print_msg('Password berhasil diubah.', 'success');
        }
    } elseif($act=='logout'){
        unset($_SESSION['login']);
        header("location:index.php?m=login");
    }
           
    /** PAGE */
    elseif($mod=='page_ubah'){
        $judul = $_POST['judul'];
        $isi = $_POST['isi'];
                        
        if($judul=='' || $isi=='' )
            print_msg("Field yang bertanda * tidak boleh kosong!");
        else{
            $db->query("UPDATE tb_page SET judul='$judul', isi='$isi' WHERE nama_page='$_GET[nama]'");                   
            print_msg("Data tersimpan", 'success');
        }
    } 
    
    /** Tambah Data */    
    if($mod=='tempat_tambah'){
        $nama_sekolah = $_POST['nama_sekolah'];
        $alamat_sekolah = $_POST['alamat_sekolah'];
        $gambar_sekolah = $_FILES['gambar_sekolah'];
        $akreditasi_sekolah = $_POST['akreditasi_sekolah'];
        $nama_kepsek = $_POST['nama_kepsek'];
        $daya_tampung = $_POST['daya_tampung'];
        $keterangan = esc_field($_POST['keterangan']);
        $lat = $_POST['lat'];
        $lng = $_POST['lng'];
        
        if($nama_sekolah=='' || $alamat_sekolah=='' || $gambar_sekolah['name']=='' || $akreditasi_sekolah=='' || $nama_kepsek=='' || $daya_tampung=='' ||$keterangan=='' ||$lat=='' || $lng=='')
            print_msg("Field bertanda * tidak boleh kosong!");
        else{
            $file_name = rand(1000, 9999) . parse_file_name($gambar_sekolah['name']);
            $img = new SimpleImage($gambar_sekolah['tmp_name']);
            if($img->get_width()>800)
                $img->fit_to_width(800);
            if($img->get_height()>600);
                $img->fit_to_height(600);
            $img->save('assets/images/tempat/' . $file_name);            
            $img->thumbnail(540, 360);
            $img->save('assets/images/tempat/small_' . $file_name);
            
            $db->query("INSERT INTO tb_sekolah (nama_sekolah, alamat_sekolah, gambar_sekolah, akreditasi_sekolah, nama_kepsek, daya_tampung, keterangan, lat, lng) 
                    VALUES ('$nama_sekolah', '$alamat_sekolah', '$file_name', '$akreditasi_sekolah', '$nama_kepsek', '$daya_tampung','$keterangan', '$lat', '$lng')");                       
            redirect_js("index.php?m=tempat");
        }                    
    } else if($mod=='tempat_ubah'){
        $nama_sekolah = $_POST['nama_sekolah'];
        $alamat_sekolah = $_POST['alamat_sekolah'];
        $gambar_sekolah = $_FILES['gambar_sekolah'];
        $akreditasi_sekolah = $_POST['akreditasi_sekolah'];
        $nama_kepsek = $_POST['nama_kepsek'];
        $daya_tampung = $_POST['daya_tampung'];
        $keterangan = esc_field($_POST['keterangan']);
        $lat = $_POST['lat'];
        $lng = $_POST['lng'];
        
        if($nama_sekolah=='' || $alamat_sekolah=='' || $akreditasi_sekolah=='' || $nama_kepsek=='' || $daya_tampung=='' ||$keterangan=='' ||$lat=='' || $lng=='')
            print_msg("Field bertanda * tidak boleh kosong!");
        else{           
            if($gambar_sekolah['name']!=''){
                hapus_gambar($_GET['ID']);
                                
                $file_name = rand(1000, 9999) . parse_file_name($gambar_sekolah['name']);
                $img = new SimpleImage($gambar_sekolah['tmp_name']);
                if($img->get_width()>800)
                    $img->fit_to_width(800);
                if($img->get_height()>600);
                    $img->fit_to_height(600);
                $img->save('assets/images/tempat/' . $file_name);            
                // $img->thumbnail(180, 120);
                $img->thumbnail(540, 360);
                $img->save('assets/images/tempat/small_' . $file_name);
                
                $sql_gambar = ", gambar_sekolah='$file_name'";
            }
            $db->query("UPDATE tb_sekolah SET nama_sekolah='$nama_sekolah', alamat_sekolah='$alamat_sekolah' $sql_gambar , akreditasi_sekolah='$akreditasi_sekolah', nama_kepsek='$nama_kepsek', daya_tampung='$daya_tampung', keterangan='$keterangan', lat='$lat', lng='$lng' WHERE id_sekolah='$_GET[ID]'");
            redirect_js("index.php?m=tempat");
        }    
    } else if ($act=='tempat_hapus'){
        hapus_gambar($_GET['ID']);
        $db->query("DELETE FROM tb_sekolah WHERE id_sekolah='$_GET[ID]'");
        header("location:index.php?m=tempat");
    } 
    
    /** GAMBAR */    
    if($mod=='galeri_tambah'){
        $id_sekolah = $_POST['id_sekolah'];
        $foto = $_FILES['foto'];
        $nama_foto = $_POST['nama_foto'];
        $ket_foto = $_POST['ket_foto'];
        
        if($id_sekolah=='' || $foto[name]=='')
            print_msg("Field bertanda * tidak boleh kosong!");
        else{            
            $file_name = rand(1000, 9999) . parse_file_name($foto['name']);
            
            $img = new SimpleImage($foto['tmp_name']);
            if($img->get_width()>800)
                $img->fit_to_width(800);
            if($img->get_height()>600);
                $img->fit_to_height(600);
            $img->save('assets/images/galeri/' . $file_name);
            $img->thumbnail(540, 360);
            $img->save('assets/images/galeri/small_' . $file_name);
            
            $db->query("INSERT INTO tb_foto (id_sekolah, foto, nama_foto, ket_foto) 
                    VALUES('$id_sekolah', '$file_name', '$nama_foto', '$ket_foto')");                       
            redirect_js("index.php?m=galeri");
        }                    
    } else if($mod=='galeri_ubah'){
        $id_sekolah = $_POST['id_sekolah'];
        $foto = $_FILES['foto'];
        $nama_foto = $_POST['nama_foto'];
        $ket_foto = $_POST['ket_foto'];
        
        if($id_sekolah=='')
            print_msg("Field bertanda * tidak boleh kosong!");
        else{  
            if($foto[tmp_name]!=''){
                hapus_galeri($_GET['ID']);
                $file_name = rand(1000, 9999) . parse_file_name($foto['name']);
                $img = new SimpleImage($foto['tmp_name']);
                if($img->get_width()>800)
                    $img->fit_to_width(800);
                if($img->get_height()>600);
                    $img->fit_to_height(600);
                $img->save('assets/images/galeri/' . $file_name);
                $img->thumbnail(540, 360);
                $img->save('assets/images/galeri/small_' . $file_name);
                $sql_gambar = ", gambar='$file_name'";
            }
            $db->query("UPDATE tb_foto SET id_sekolah='$id_sekolah', nama_foto='$nama_foto' $sql_gambar, ket_foto='$ket_foto' WHERE id_foto='$_GET[ID]'");
            redirect_js("index.php?m=galeri");
        }    
    } else if ($act=='galeri_hapus'){
        hapus_galeri($_GET['ID']);
        $db->query("DELETE FROM tb_foto WHERE id_foto='$_GET[ID]'");
        header("location:index.php?m=galeri");
    }                        
