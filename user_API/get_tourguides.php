<?php 
require '../connect.php';

$queryResult = $connect->query("SELECT a.*, b.name as location_name, AVG(c.rating) as rating, COUNT(c.id_tourguide) as number_of_reviews FROM tbl_tourguide a INNER JOIN tbl_locations b ON a.id_location = b.id_location LEFT JOIN tbl_tourguide_rating c ON a.id = c.id_tourguide GROUP BY a.id");

$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	if ($fetchData['rating'] ==  null) {
		$fetchData['rating'] = "0";

	}
		$result[] = $fetchData;
}

echo json_encode($result);

 ?>