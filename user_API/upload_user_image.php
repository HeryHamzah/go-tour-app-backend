 <?php

require '../connect.php';
	
	if ($_SERVER['REQUEST_METHOD']=="POST") {
		$response = array();

		$id_user = $_POST['id_user'];

		$image = $_FILES['image']['name'];
		$imagePath = "../images/user_upload/".$image;
		move_uploaded_file($_FILES['image']['tmp_name'],$imagePath);

		

			$insert = "UPDATE tbl_users SET image = '$image' WHERE id='$id_user'";
			if (mysqli_query($connect, $insert)) {
				$response['value']=1;
				$response['message']="Image berhasil diupload";
				echo json_encode($response);
			} else {
				$response['value']=0;
				$response['message']="Image gagal diupload";
				echo json_encode($response);
			}
		}
?> 