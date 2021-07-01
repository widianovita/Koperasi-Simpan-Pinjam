<?php 
include "../koneksi.php";

$no		= $_POST['no'];
$nama	= $_POST['nama'];
$wajib	= $_POST['wajib'];
$pokok	= $_POST['pokok'];
$saldo	= $_POST['saldo'];

$query = mysqli_query($con,"INSERT INTO tbl_anggota values ('$no','$nama','$wajib','$pokok','$saldo')");

if($query){
	header("location:index.php");
} else{
	die ("Gagal Menyimpan data!");
}


?>