<?php 
 require '../connect.php';

 if($_SERVER["REQUEST_METHOD"] == "POST"){
 	$response = array();
 	$id_destination = $_POST["id_destination"];

 	$queryResult = $connect->query("SELECT a.*, b.name as location FROM tbl_destinations a INNER JOIN tbl_locations b ON a.id_location = b.id_location WHERE id_destination = '$id_destination'");

 	$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	$result['result'] = $fetchData;
}

echo json_encode($result);
 	}
