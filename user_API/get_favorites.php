<?php 
 require '../connect.php';

 if($_SERVER["REQUEST_METHOD"] == "POST"){
 	$response = array();
 	$id_user = $_POST["id_user"];

 	$queryResult = $connect->query("SELECT a.*, b.name as location FROM tbl_destinations a inner join tbl_locations b on a.id_location = b.id_location inner join tbl_favorites c on a.id_destination = c.id_destination where c.id_user ='$id_user'");

 	$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	$result[] = $fetchData;
}

echo json_encode($result);
 	}

