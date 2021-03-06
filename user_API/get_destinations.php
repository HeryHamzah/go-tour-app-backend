<?php 
require '../connect.php';

$queryResult = $connect->query("SELECT a.*,b.id_location as id_location, b.name as location_name, SUM(if(c.rating > 0, c.rating, 0)) /  SUM(if(c.rating > 0, 1, null))  as rating, COUNT(c.id_destination) as number_of_visits, SUM(if(c.rating > 0, 1, null)) as number_of_reviews FROM tbl_destinations a inner join tbl_locations b on a.id_location = b.id_location LEFT JOIN tbl_tickets c ON a.id_destination = c.id_destination GROUP BY a.id_destination");

$result = array();

While($fetchData=$queryResult->fetch_assoc()){
	if ($fetchData['rating'] ==  null) {
		$fetchData['rating'] = "0";
		$fetchData['number_of_reviews'] = "0";
	}
		$result[] = $fetchData;
}

$sort = array_column($result, 'rating');
array_multisort($sort, SORT_DESC, $result);

echo json_encode($result);

 ?>