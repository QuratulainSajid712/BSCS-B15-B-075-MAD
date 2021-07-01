<?php 

	include 'database.php';

	$id = $_POST['id'];

	$db->query("DELETE FROM person WHERE id = '".$id."'");