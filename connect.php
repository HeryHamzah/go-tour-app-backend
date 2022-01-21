<?php 
$connect = new mysqli("localhost","root","","gotour");
if($connect){
	//echo "Koneksi Berhasil";

}else{
	echo "Koneksi Gagal";
	exit();
}

 ?>