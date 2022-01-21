<?php

require '../connect.php';
	
	if ($_SERVER['REQUEST_METHOD']=="POST") {
		$response = array();
		$id_user = $_POST['id_user'];
		$id_destination = $_POST['id_destination'];


			$insert = "INSERT INTO tbl_favorites (id_favorite, id_user, id_destination) VALUES (NULL,'".$id_user."','".$id_destination."')";
			if (mysqli_query($connect, $insert)) {
				$response['value']=1;
				$response['message']="Berhasil";
				echo json_encode($response);
			} else {
				$response['value']=0;
				$response['message']="Gagal";
				echo json_encode($response);
			}
		}
	
?> 