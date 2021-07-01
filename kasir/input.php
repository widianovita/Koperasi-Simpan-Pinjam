<?php 
include "../koneksi.php";

$kode		= $_POST['kode'];
$nama		= $_POST['nama'];
$password	= $_POST['password'];

$query = mysqli_query($con,"INSERT INTO tbl_kasir values ('$kode','$nama','$password')");

if($query){
	header("location:index.php");
} else{
	die ("Gagal Menyimpan data!");
}


?>