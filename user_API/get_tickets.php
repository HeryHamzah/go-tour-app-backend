<?php 
require '../connect.php';

$queryResult = $connect->query("SELECT a.*, b.name as user_name, b.image as profile_picture FROM tbl_tickets a INNER JOIN tbl_users b ON a.id_user = b.id");

$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	$result[] = $fetchData;
}

echo json_encode($result);

 ?>