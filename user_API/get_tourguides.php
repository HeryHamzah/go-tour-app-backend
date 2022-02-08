<?php 
require '../connect.php';

$queryResult = $connect->query("SELECT a.*, b.name as location_name FROM tbl_tourguide a INNER JOIN tbl_locations b ON a.id_location = b.id_location");

$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	$result[] = $fetchData;
}

echo json_encode($result);

 ?>