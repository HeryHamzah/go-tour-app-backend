 <?php

require '../connect.php';
	
	if ($_SERVER['REQUEST_METHOD']=="POST") {
		$response = array();
		$name = $_POST['name'];
		$email = $_POST['email'];
		$hp = $_POST['hp'];
		$id = $_POST['id'];
		$image = $_POST['image'];
		$balance = $_POST['balance'];

		

			$insert = "UPDATE tbl_users SET name = '$name', email = '$email', hp ='$hp', image='$image', balance='$balance' WHERE id='$id'";
			if (mysqli_query($connect, $insert)) {
				$response['value']=1;
				$response['message']="Data berhasil diupdate";
				echo json_encode($response);
			} else {
				$response['value']=0;
				$response['message']="Data gagal diupdate";
				echo json_encode($response);
			}
		}
?> 