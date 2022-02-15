 <?php

require '../connect.php';
	
	if ($_SERVER['REQUEST_METHOD']=="POST") {
		$response = array();
		$id_transaction = $_POST['id_transaction'];
		$id_user = $_POST['id_user'];
		$title = $_POST['title'];
		$picture_path = $_POST['picture_path'];
		$amount = $_POST['amount'];
		$time = $_POST['time'];
		$description = $_POST['description'];

		

		$insert = "INSERT INTO tbl_transactions (id_transaction, id_user, title, picture_path, amount, time, description) VALUES ('".$id_transaction."', '".$id_user."','".$title."','".$picture_path."','".$amount."', '".$time."', '".$description."')";
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