<?php 
include '../koneksi.php';

$no = $_GET['no'];
$query = mysqli_query($con,"delete from tbl_pinjam where no_pinjam='$no'");


//apakah berhasil dihapus?
if($query){
	header("location:index.php");
} else{
	die("gagal menghapus !");
}
?>