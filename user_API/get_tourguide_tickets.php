<?php 
 require '../connect.php';

 if($_SERVER["REQUEST_METHOD"] == "POST"){
 	$response = array();
 	$id_user = $_POST["id_user"];

 	$queryResult = $connect->query("SELECT * FROM tbl_tourguide_tickets where id_user ='$id_user'");

 	$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	$result[] = $fetchData;
	}

echo json_encode($result);
}
