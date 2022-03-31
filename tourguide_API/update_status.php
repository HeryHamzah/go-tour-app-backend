 <?php

require '../connect.php';
	
	if ($_SERVER['REQUEST_METHOD']=="POST") {
		$response = array();
		$id = $_POST['id'];
		$status = $_POST['status'];

			$insert = "UPDATE tbl_tourguide SET status = '$status' WHERE id='$id'";
			if (mysqli_query($connect, $insert)) {
				$response['value']=1;
				$response['message']="Status terupdate!";
				echo json_encode($response);
			} else {
				$response['value']=0;
				$response['message']="Status belum terupdate!";
				echo json_encode($response);
			}
		}
?> 