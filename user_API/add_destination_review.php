 <?php

require '../connect.php';
	
	if ($_SERVER['REQUEST_METHOD']=="POST") {
		$response = array();
		$booking_code = $_POST['booking_code'];
		$is_rated = $_POST['is_rated'];

			$insert = "UPDATE tbl_tickets SET is_rated = '$is_rated' WHERE booking_code='$booking_code'";
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