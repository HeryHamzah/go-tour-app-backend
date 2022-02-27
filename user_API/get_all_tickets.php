<?php 
require '../connect.php';

$queryResult = $connect->query("SELECT * FROM tbl_tickets");

$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	$result[] = $fetchData;
}

echo json_encode($result);

 ?>