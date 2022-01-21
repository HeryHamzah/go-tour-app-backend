<?php 
 require '../connect.php';

 if($_SERVER["REQUEST_METHOD"] == "POST"){
 	$response = array();
 	$id_user = $_POST["id_user"];

 	$queryResult = $connect->query("SELECT * FROM tbl_users where id ='$id_user'");

 	$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	$result['result'] = $fetchData;
}

echo json_encode($result);
 	}

