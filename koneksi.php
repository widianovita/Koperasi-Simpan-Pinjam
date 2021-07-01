<?php 
$con = mysqli_connect("localhost","root","","koperasi_pinjam");

//cek koneksi
if(mysqli_connect_errno()){
	echo "Koneksi database gagal : " . mysqli_connect_error();
}

?>
