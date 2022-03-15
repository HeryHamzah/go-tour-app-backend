<?php 
 require '../connect.php';

 if($_SERVER["REQUEST_METHOD"] == "POST"){
 	$id_tourguide = $_POST["id_tourguide"];

 	$queryResult = $connect->query("SELECT * FROM tbl_tourguide where id ='$id_tourguide'");

 	$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	$result['result'] = $fetchData;
}

echo json_encode($result);
 	}

