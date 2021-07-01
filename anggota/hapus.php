<?php 
include '../koneksi.php';

$no = $_GET['no'];
$query = mysqli_query($con,"delete from tbl_anggota where no_anggota='$no'");


//apakah berhasil dihapus?
if($query){
	header("location:index.php");
} else{
	die("gagal menghapus !");
}
?>