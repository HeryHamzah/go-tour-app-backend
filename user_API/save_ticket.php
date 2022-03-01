 <?php

require '../connect.php';
	
	if ($_SERVER['REQUEST_METHOD']=="POST") {
		$response = array();
		$booking_code = $_POST['booking_code'];
		$id_user = $_POST['id_user'];
		$id_destination = $_POST['id_destination'];
		$time = $_POST['time'];
		$total_ticket = $_POST['total_ticket'];
		$total_price = $_POST['total_price'];


		$insert = "INSERT INTO tbl_tickets (booking_code, id_user, id_destination, time, total_ticket, total_price, comment, rating) VALUES ('".$booking_code."', '".$id_user."','".$id_destination."','".$time."', '".$total_ticket."', '".$total_price."', '', '0')";
		
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