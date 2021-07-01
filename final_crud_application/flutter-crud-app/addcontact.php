<?php 

	include 'database.php';

	$name = $_POST['name'];
	$email = $_POST['email'];
	$phone = $_POST['phone'];
	$skill = $_POST['skill'];
	$bloodgroup = $_POST['bloodgroup'];
	$address = $_POST['address'];

	$db->query("INSERT INTO person(name,email,phone,skill,bloodgroup,address)VALUES('".$name."','".$email."','".$phone."','".$skill."','".$bloodgroup."','".$address."')");
