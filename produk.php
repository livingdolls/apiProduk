<?php
    error_reporting(1);
    header('Content-type: application/json; charset=utf8');
    header('Access-Control-Allow-Origin: *');
    header('Access-Control-Allow-Methods: GET,PUT,POST,DELETE,OPTIONS');
    header('Access-Control-Allow-Methods: Content-Type,Content-Range,Content-Disposition,Content-Description');
    
    include('db.php');

    $param=$_GET['param'];
    $v=$_GET['v'];

	
    
    $sql = $conn->query('SELECT * FROM `kt_barang` ');

    $res = array();
    while ($kat = mysqli_fetch_array($sql)) {
        $id =  $kat['id_kat'];
        $nm = $kat['nama_kategori'];
        $res[$nm] = [];
        if($param == '')
        {
            $data = $conn->query("SELECT * FROM tb_produk");

        }elseif($param <> '')
        {
            $data = $conn->query("SELECT * FROM tb_produk WHERE id_barang = $id AND $param LIKE '%$v%' ");
        }
        while($p = mysqli_fetch_array($data)){
            $i =  $p['attribut'];
            $attr = $conn->query("SELECT * FROM  tb_attr WHERE id_produk = $i ");
            while($d = mysqli_fetch_array($attr)){
                $f['merk'] = $d['merk'];
                $f['warna'] = $d['warna'];
            }
            
            $r['id'] = $p['id'];
            $r['id_barang'] = $p['id_barang'];
            $r['kat_produk'] = $p['kat_produk'];
            $r['nm_barang'] = $p['nm_barang'];
            $r['deskripsi'] = $p['deskripsi'];
            $r['berat'] = $p['berat'];
            $r['harga'] = $p['harga'];
            $r['qty'] = $p['qty'];
            $r['attribut'] = $f;


            array_push($res[$nm], $r);

        }
    }

    echo json_encode($res);

?>