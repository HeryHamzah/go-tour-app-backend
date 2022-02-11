<?php 
 require '../connect.php';

 if($_SERVER["REQUEST_METHOD"] == "POST"){
 	$response = array();
 	$id_location = $_POST["id_location"];

 	$queryResult = $connect->query("SELECT a.*, b.name as location, AVG(c.rating) as rating FROM tbl_destinations a inner join tbl_locations b on a.id_location = b.id_location LEFT JOIN tbl_destination_rating c ON a.id_destination = c.id_destination where a.id_location ='$id_location' GROUP BY a.id_destination");

 	$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	$result[] = $fetchData;
}

echo json_encode($result);
 	}

//Get_destinations.php
<?php 
 require '../connect.php';

 if($_SERVER["REQUEST_METHOD"] == "POST"){
 	$response = array();
 	$id_location = $_POST["id_location"];

 	$queryResult = $connect->query("SELECT a.*, b.name as location FROM tbl_destinations a inner join tbl_locations b on a.id_location = b.id_location where a.id_location ='$id_location'");

 	$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	$result[] = $fetchData;
}

echo json_encode($result);
 	}

