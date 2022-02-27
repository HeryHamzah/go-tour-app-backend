 <?php

require '../connect.php';
	
	if ($_SERVER['REQUEST_METHOD']=="POST") {
		$response = array();
		$booking_code = $_POST['booking_code'];
		$id_user = $_POST['id_user'];
		$id_destination = $_POST['id_destination'];
		$coment = $_POST['coment'];
		$rating = $_POST['rating'];


		$insert = "INSERT INTO tbl_destination_rating (id_rating, coment, id_user, id_destination, rating, booking_code) VALUES (NULL, '".$coment."','".$id_user."','".$id_destination."','".$rating."','".$booking_code."')";

			if (mysqli_query($connect, $insert)) {
				$response['value']=1;
				$response['message']="Tiket disimpan";
				echo json_encode($response);
			} else {
				$response['value']=0;
				$response['message']="Tiket gagal disimpan";
				echo json_encode($response);
			}
		}
?> 