<?php 
 require '../connect.php';

 if($_SERVER["REQUEST_METHOD"] == "POST"){
 	$id_tourguide = $_POST["id_tourguide"];

 	$queryResult = $connect->query("SELECT a.*, b.name as location_name, SUM(if(c.rating > 0, c.rating, 0)) /  SUM(if(c.rating > 0, 1, null)) as rating, COUNT(c.id_tourguide) as number_of_trips, SUM(if(c.rating > 0, 1, null)) as number_of_reviews FROM tbl_tourguide a INNER JOIN tbl_locations b ON a.id_location = b.id_location LEFT JOIN tbl_tourguide_tickets c ON a.id = c.id_tourguide WHERE a.id = '$id_tourguide'");

 	$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	if ($fetchData['rating'] ==  null) {
		$fetchData['rating'] = "0";
		$fetchData['number_of_reviews'] = "0";

	}
		$result[] = $fetchData;
}

echo json_encode($result);
 	}

