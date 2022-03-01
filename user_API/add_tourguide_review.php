 <?php

require '../connect.php';
	
	if ($_SERVER['REQUEST_METHOD']=="POST") {
		$response = array();
		$id = $_POST['id'];
		$comment = $_POST['comment'];
		$rating = $_POST['rating'];

			$insert = "UPDATE tbl_tourguide_tickets SET comment = '$comment', rating = '$rating' WHERE id='$id'";
			if (mysqli_query($connect, $insert)) {
				$response['value']=1;
				$response['message']="Review disimpan";
				echo json_encode($response);
			} else {
				$response['value']=0;
				$response['message']="Review gagal diupdate";
				echo json_encode($response);
			}
		}
?> 