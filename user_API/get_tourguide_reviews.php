<?php 
 require '../connect.php';

 if($_SERVER["REQUEST_METHOD"] == "POST"){

 	$id_tourguide = $_POST["id_tourguide"];

 	$queryResult = $connect->query("SELECT a.*, b.name as user_name, b.image as user_picture FROM tbl_tourguide_rating a INNER JOIN tbl_users b ON a.id_user = b.id WHERE a.id_tourguide = '$id_tourguide' ");

 	$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	$result[] = $fetchData;
}
echo json_encode($result);
}
