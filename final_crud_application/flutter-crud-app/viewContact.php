<?php 

	
include 'database.php';

	$query = $db->query("SELECT * FROM person");
	$result = array();

	while ($rowData = $query->fetch_assoc()) {
		$result[] = $rowData;
	}


	echo json_encode($result);

?>