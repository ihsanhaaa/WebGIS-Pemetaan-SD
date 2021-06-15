<?php

include 'functions.php';

/*if(empty($_SESSION['user']))
    header("location:login.php");*/
?>

<!DOCTYPE html>
<html lang="id">
  <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>    
    <!-- <meta name="description" content="Source Code Sistem Informasi Geografis / Geographic Information System (GIS) berbasis web dengan PHP dan MySQL. Studi kasus: lokasi pura di Bali."/> -->
    <!-- <meta name="keywords" content="Sistem, Informasi, geografis, gis, Tugas Akhir, Skripsi, Jurnal, Source Code, PHP, MySQL, CSS, JavaScript, Bootstrap, jQuery"/> -->
    <!-- <meta name="author" content="sarjanakomedi.com"/> -->
    <link rel="icon" href="favicon.ico"/>
    <!-- <link rel="canonical" href="https://sarjanakomedi.com/" /> -->

    <title>Peta Sebaran SD di Pontianak</title>
    <!-- <link href="assets/css/solar-bootstrap.min.css" rel="stylesheet"/> -->
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="assets/css/stylesheet.css" rel="stylesheet"/>
    <!-- <link href="assets/css/general.css" rel="stylesheet"/> -->
    
    <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous"> -->


    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>  
    <script src="assets/tinymce/tinymce.min.js"></script> 
    <script>
        tinymce.init({
        selector: "textarea.mce",
            plugins: [
                "advlist autolink lists link image charmap print preview anchor",
                "searchreplace visualblocks code fullscreen",
                "insertdatetime media table contextmenu paste"
            ],
            menubar : false,
            toolbar: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image"
        });
    </script>   
    <!-- <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCTzjb-g5lJmButPqyNn9y6Q1x8d3JPGyo"></script> -->
    <!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCiDdGyp6n2hKHPECuB6JZIT-8dVHCpwI0&language=id&region=ID"></script>  -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBJkHXEVXBSLY7ExRcxoDxXzRYLJHg7qfI" type="text/javascript"></script>
    <!-- <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initialize" async defer></script> -->
    <script>
        var default_lat = <?=get_option('default_lat')?>; 
        var default_lng = <?=get_option('default_lng')?>;  		
		var default_zoom = <?=get_option('default_zoom')?>;
        
    </script>
    <script src="assets/js/script.js"></script>
  </head>
  <body>

    <nav class="navbar sticky-top">
      <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="?m=tempat_list"><b>WEBGIS</b></a>
          <!-- <h3><a style="color:white"class="navbar-header" href="?m=tempat_list">WEBGIS</a></h3> -->
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <?php if($_SESSION['login']):?>
            <li><a href="?m=tempat"><span class="glyphicon glyphicon-map-marker"></span> Data Sekolah</a></li>
            <!-- <li><a href="?m=galeri"><span class="glyphicon glyphicon-picture"></span> Galeri</a></li> -->            
            
            <li style="padding-left: 810px;"><a href="aksi.php?act=logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
            <?php else:?> 


            <li><a href="?m=tempat_list"><span class="glyphicon glyphicon-map-marker"></span> Peta</a>

        
            <li style="padding-left: 870px;"><a href="?m=login"><span class="glyphicon glyphicon-user"></span> Login</a></li> </ul></li>
            <?php endif?>                   
          </ul>          
        </div>
      </div>
    </nav>

    <div class="container" style="margin-bottom: 150px;">
    <?php
        if(file_exists($mod.'.php'))
            include $mod.'.php';
        else
            include 'home.php';
    ?>
    </div>

    <div class="footer">
        <p>Copyright ©Pontianak 2021</p>
    </div>


</body>
</html>