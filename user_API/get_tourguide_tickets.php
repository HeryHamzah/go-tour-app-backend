<?php 
require '../connect.php';

$queryResult = $connect->query("SELECT a.*, b.name AS user_name, b.image AS user_picture, c.name AS tourguide_name, c.image AS tourguide_picture FROM tbl_tourguide_tickets a INNER JOIN tbl_users b ON a.id_user = b.id INNER JOIN tbl_tourguide c ON a.id_tourguide = c.id");

$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	$result[] = $fetchData;
}

echo json_encode($result);

 ?>