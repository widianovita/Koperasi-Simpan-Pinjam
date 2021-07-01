<?php 
include '../koneksi.php';

$kode		= $_POST['kode'];
$nama		= $_POST['nama'];
$password	= $_POST['password'];

$query = mysqli_query($con, "UPDATE tbl_kasir SET nama_kasir='$nama', password='$password' WHERE kode_kasir='$kode'");

if($query){
	header("location:index.php");	
} else {
	die ("gagal update data!");
}

?>