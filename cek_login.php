<?php  
session_start();

include 'koneksi.php';

$user = $_POST['username'];
$pass = md5($_POST['password']);

$login = mysqli_query($con,"select * from tbl_kasir where nama_kasir='$user' and password='$pass'");

$cek = mysqli_num_rows($login);

//cek apakah username dan password di temukan pada database
if($cek > 0) {
	$_SESSION['nama_kasir'] = $user;
	$_SESSION['status'] = "login";
	header("location:dashboard.php");
}
else{
	header("location:login.php?pesan=gagal");
}
?>