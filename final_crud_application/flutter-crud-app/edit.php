<?php 

	include 'database.php';

	$name = $_POST['name'];
	$email = $_POST['email'];
	$phone = $_POST['phone'];
	$skill = $_POST['skill'];
	$bloodgroup = $_POST['bloodgroup'];
	$address = $_POST['address'];
	
	$db->query("UPDATE person SET name = '".$name."',email = '".$email."',phone = '".$phone."',skill = '".$skill."',bloodgroup = '".$bloodgroup."',address = '".$address."' WHERE id = '".$id."'");


?>