 <?php

require '../connect.php';
	
	if ($_SERVER['REQUEST_METHOD']=="POST") {
		$response = array();
		$booking_code = $_POST['booking_code'];
		$id_user = $_POST['id_user'];
		$id_tourguide = $_POST['id_tourguide'];
		$user_name = $_POST['user_name'];
		$tourguide_name = $_POST['tourguide_name'];
		$date_time = $_POST['date_time'];
		$destinations = $_POST['destinations'];
		$total_price = $_POST['total_price'];
		$picture_path = $_POST['picture_path'];


		$insert = "INSERT INTO tbl_tourguide_tickets (id, id_user, id_tourguide, user_name, tourguide_name, date_time, destinations, total_price, picture_path) VALUES ('".$booking_code."', '".$id_user."','".$id_tourguide."','".$user_name."','".$tourguide_name."','".$date_time."', '".$destinations."', '".$total_price."','".$picture_path."')";
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