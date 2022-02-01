 <?php

require '../connect.php';
	
	if ($_SERVER['REQUEST_METHOD']=="POST") {
		$response = array();
		$id_user = $_POST['id_user'];
		$id_destination = $_POST['id_destination'];
		$destination_name = $_POST['destination_name'];
		$total_ticket = $_POST['total_ticket'];
		$time = $_POST['time'];
		$total_price = $_POST['total_price'];

		

		$insert = "INSERT INTO tbl_transactions (id_transaction, id_user, title, picture_path, amount, time, description) VALUES (NULL, '".$id_user."','".$title."','".$picture_path."','".$amount."', '".$time."', '".$description."')";
			if (mysqli_query($connect, $insert)) {
				$response['value']=1;
				$response['message']="Transaksi disimpan";
				echo json_encode($response);
			} else {
				$response['value']=0;
				$response['message']="Transaksi gagal disimpan";
				echo json_encode($response);
			}
		}
?> 