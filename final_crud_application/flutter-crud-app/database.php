<?php

$hostname= 'localhost:3307';
$username= 'root';
$password= '';
$dbname= 'crud_app';

$db = new mysqli($hostname,$username,$password,$dbname);

	if ($db->connect_errno) {
		printf('faild database connect',$db->connect_errno);
		exit();
	}

?>