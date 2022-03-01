 <?php

require '../connect.php';
	
	if ($_SERVER['REQUEST_METHOD']=="POST") {
		$response = array();
		$booking_code = $_POST['booking_code'];
		$id_user = $_POST['id_user'];
		$id_tourguide = $_POST['id_tourguide'];
		$date_time = $_POST['date_time'];
		$destinations = $_POST['destinations'];
		$total_price = $_POST['total_price'];


		$insert = "INSERT INTO tbl_tourguide_tickets (id, id_user, id_tourguide, date_time, destinations, total_price, comment, rating) VALUES ('".$booking_code."','".$id_user."','".$id_tourguide."','".$date_time."', '".$destinations."', '".$total_price."', '', '0')";
			if (mysqli_query($connect, $insert)) {
				$response['value']=1;
				$response['message']="Reservasi Tourguide disimpan";
				echo json_encode($response);
			} else {
				$response['value']=0;
				$response['message']="Reservasi Tourguide gagal disimpan";
				echo json_encode($response);
			}
		}
?> 