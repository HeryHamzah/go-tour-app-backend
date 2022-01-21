<?php 
 require '../connect.php';

 if($_SERVER["REQUEST_METHOD"] == "POST"){
 	$response = array();
 	$id = $_POST["id"];
 	$name = $_POST["name"];
 	$email = $_POST["email"];
 	$hp = $_POST["hp"];

 // 	$image = $_FILES['image']['name'];

	// $imagePath = "images/assets/".$image;
	// move_uploaded_file($_FILES['image']['tmp_name'], $imagePath);


 	$check = "SELECT * FROM tbl_users where email ='$email'";
 	$result = mysqli_fetch_array(mysqli_query($connect, $check));
 	if(isset($result)){
 		$response["value"] = 2;
 		$response["message"] = "Email sudah digunakan";
 		echo json_encode($response);
 	} else{

	$insert = "INSERT into tbl_users (id, email, name, hp, register_date, image) values ('".$id."','".$email."','".$name."','".$hp."',NOW(), '')";
 		
 	if(mysqli_query($connect,$insert)){
 		$response["value"] = 1;
 		$response["message"] = "Registrasi Berhasil";
 		echo json_encode($response);
 	}else{
 		$response["value"] = 0;
 		$response["message"] = "Registrasi Gagal";
 		echo json_encode($response);
 	}
 }

 	

 }


 ?>