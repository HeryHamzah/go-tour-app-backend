 <?php

require '../connect.php';
	
	if ($_SERVER['REQUEST_METHOD']=="POST") {
		$response = array();
		$id_tourguide = $_POST['id_tourguide'];
		$name = $_POST['name'];
		$email = $_POST['email'];
		$hp = $_POST['hp'];
		$image = $_POST['image'];
		$password = $_POST['password'];

		$update = "UPDATE tbl_tourguide SET name = '$name', email = '$email', hp ='$hp', image='$image', password='$password' WHERE id='$id_tourguide'";
		if (mysqli_query($connect, $update)) {
			$response['value']=1;
			$response['message']="Data Tour Guide diupdate!";
			echo json_encode($response);
		} else {
			$response['value']=0;
			$response['message']="Data Tour Guide gagal diupdate!";
			echo json_encode($response);
			}
		}
?> 