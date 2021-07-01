<?php 
include '../koneksi.php';

$no = $_GET['no'];
$query = mysqli_query($con,"delete from tbl_simpan where no_simpan='$no'");


//apakah berhasil dihapus?
if($query){
	header("location:index.php");
} else{
	die("gagal menghapus !");
}
?>