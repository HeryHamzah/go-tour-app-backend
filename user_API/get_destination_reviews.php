<?php 
 require '../connect.php';

 if($_SERVER["REQUEST_METHOD"] == "POST"){

 	$id_destination = $_POST["id_destination"];

 	$queryResult = $connect->query("SELECT a.*, b.name as user_name, b.image as user_picture FROM tbl_destination_rating a INNER JOIN tbl_users b ON a.id_user = b.id WHERE a.id_destination = '$id_destination' ");

 	$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	$result[] = $fetchData;
}
echo json_encode($result);
}
