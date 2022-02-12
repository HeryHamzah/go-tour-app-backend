<?php 
 require '../connect.php';

 if($_SERVER["REQUEST_METHOD"] == "POST"){
 	$response = array();
 	$id_destination = $_POST["id_destination"];

 	$queryResult = $connect->query("SELECT a.*, b.name as location, AVG(c.rating) as rating FROM tbl_destinations a INNER JOIN tbl_locations b ON a.id_location = b.id_location LEFT JOIN tbl_destination_rating c ON a.id_destination = c.id_destination WHERE a.id_destination = '$id_destination'");

 	$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	if ($fetchData['rating'] ==  null) {
		$fetchData['rating'] = "0";

	}
	$result['result'] = $fetchData;
}

echo json_encode($result);
 	}
