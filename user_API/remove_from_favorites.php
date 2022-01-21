<?php

require '../connect.php';
	
	if ($_SERVER['REQUEST_METHOD']=="POST") {
		$response = array();
		$id_destination = $_POST['id_destination'];

			$insert = "DELETE FROM tbl_favorites WHERE id_destination ='$id_destination'";
			if (mysqli_query($connect, $insert)) {
				$response['value']=1;
				$response['message']="Berhasil dihapus";
				echo json_encode($response);
			} else {
				$response['value']=0;
				$response['message']="Gagal dihapus";
				echo json_encode($response);
			}
		}
	
?> 