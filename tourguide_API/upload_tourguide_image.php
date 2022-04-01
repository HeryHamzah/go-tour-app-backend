 <?php

require '../connect.php';
	
	if ($_SERVER['REQUEST_METHOD']=="POST") {
		$response = array();

		$id_tourguide = $_POST['id_tourguide'];

		$image = $_FILES['image']['name'];
		$imagePath = "../images/tourguide_upload/".$image;
		move_uploaded_file($_FILES['image']['tmp_name'],$imagePath);

		$update = "UPDATE tbl_tourguide SET image = '$image' WHERE id='$id_tourguide'";
		if (mysqli_query($connect, $update)) {
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