<?php 
include '../koneksi.php';

$no		= $_POST['no'];
$tgl	= $_POST['tanggal'];
$no1	= $_POST['no_anggota'];
$jml	= $_POST['jml'];
$kode	= $_POST['kode'];

$query = mysqli_query($con, "UPDATE tbl_simpan SET tanggal='$tgl', no_anggota='$no1', jml_simpan='$jml', kode_kasir='$kode' WHERE no_simpan='$no'");

if($query){
	header("location:index.php");	
} else {
	die ("gagal update data!");
}

?>