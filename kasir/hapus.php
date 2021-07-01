<?php 
include '../koneksi.php';

$kode = $_GET['kode'];
$query = mysqli_query($con,"delete from tbl_kasir where kode_kasir='$kode'");


//apakah berhasil dihapus?
if($query){
	header("location:index.php");
} else{
	die("gagal menghapus !");
}
?>