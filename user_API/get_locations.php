<?php 
require '../connect.php';

$queryResult = $connect->query("SELECT * from tbl_locations");

$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	$result[] = $fetchData;
}

echo json_encode($result);

 ?>