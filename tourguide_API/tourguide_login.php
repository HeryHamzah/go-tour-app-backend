<?php 
 require '../connect.php';

 if($_SERVER["REQUEST_METHOD"] == "POST"){
 	$response = array();
 	$email = $_POST["email"];
 	$password = $_POST["password"];

 	$check = "SELECT * FROM tbl_tourguide WHERE email ='$email' AND password='$password'";
 	$result = mysqli_fetch_array(mysqli_query($connect, $check));
 	if(isset($result)){
 		$response["value"] = 1;
 		$response["message"] = "Login Berhasil";
 		$response["id"] = $result["id"];
 		echo json_encode($response);
 	} else{
 		$response["value"] = 0;
 		$response["message"] = "Anda tidak terdaftar sebagai Tour Guide";
 		echo json_encode($response);
 	}

 }

 ?>