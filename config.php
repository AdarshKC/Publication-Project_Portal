<?php
	$dbhost = "localhost";
	$dbuser = "root";
	$dbpass = "adipatinson";
	$dbname = "pro2";

	$conn = new mysqli($dbhost, $dbuser, $dbpass, $dbname);
	if ($conn->connect_error) {
    	die("Connect failed: " . $conn->connect_error);
	}
?>