<?php 
include '../koneksi.php';

$no		= $_POST['no'];
$nama	= $_POST['nama'];
$wajib	= $_POST['wajib'];
$pokok	= $_POST['pokok'];
$saldo	= $_POST['saldo'];

$query = mysqli_query($con, "UPDATE tbl_anggota SET nama='$nama', wajib='$wajib', pokok='$pokok', saldo='$saldo' WHERE no_anggota='$no'");

if($query){
	header("location:index.php");	
} else {
	die ("gagal update data!");
}

?>