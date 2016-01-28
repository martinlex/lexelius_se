<?php
session_start();

// db setup
$hostname = "localhost"; 
$username = "root";
$password = "";
$db 		 = "lexelius_se";

// connection to db
$dbhandle = mysqli_connect($hostname, $username, $password, $db) 
	or die("Unable to connect to mysqli");
//echo "Connected to mysqli<br>";

// select a database to work with
$selected = mysqli_select_db($dbhandle, $db) 
	or die("Could not select akzonobelvr");
?>
