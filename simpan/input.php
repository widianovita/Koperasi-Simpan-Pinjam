<?php 
include "../koneksi.php";

$no		= $_POST['no'];
$tgl	= $_POST['tanggal'];
$no1	= $_POST['no_anggota'];
$jml	= $_POST['jml'];
$kode	= $_POST['kode'];

$query = mysqli_query($con,"INSERT INTO tbl_simpan values ('$no','$tgl','$no1','$jml','$kode')");

if($query){
	header("location:index.php");
} else{
	die ("Gagal Menyimpan data!");
}


?>