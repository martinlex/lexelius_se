<?php
header("Access-Control-Allow-Origin: *");
header('Content-Type: application/json; charset=utf-8');


// live db setup
$hostname = "lexelius.se.mysql"; 
$username = "lexelius_se";
$password = "hejsan";
$db       = "lexelius_se";

// local db setup
$hostname = "localhost"; 
$username = "root";
$password = "";
$db 		 = "lexelius_se";

// connection to db
$conn = mysqli_connect($hostname, $username, $password, $db) 
	or die("Unable to connect to mysqli");

// select a database to work with
$selected = mysqli_select_db($conn, $db) 
	or die("Could not select db");

mysqli_query($conn, "SET NAMES 'utf8'");
mysqli_query($conn, "SET CHARACTER SET 'utf8'"); 
$result = $conn->query("SELECT * FROM posts ORDER BY timestamp DESC");

$outp = "";
while($rs = $result->fetch_array(MYSQLI_ASSOC)) {
   if ($outp != "") {$outp .= ",";}
   $outp .= '{"id":"'           . $rs["id"]            . '",';
   $outp .= '"timestamp":"'     . $rs["timestamp"]     . '",';
   $outp .= '"title":"'         . $rs["title"]         . '",';
   $outp .= '"subtitle":"'      . $rs["subtitle"]      . '",';
   $outp .= '"body_1":"'        . $rs["body_1"]        . '",';
   $outp .= '"body_2":"'        . $rs["body_2"]        . '",';
   $outp .= '"category":"'      . $rs["category"]      . '",';
   $outp .= '"thumbnail_img":"' . $rs["thumbnail_img"] . '",';
   $outp .= '"img_1":"'         . $rs["img_1"]         . '",';
   $outp .= '"img_2":"'         . $rs["img_2"]         . '",';
   $outp .= '"img_3":"'         . $rs["img_3"]         . '",';
   $outp .= '"img_4":"'         . $rs["img_4"]         . '",';
   $outp .= '"img_5":"'         . $rs["img_5"]         . '",';
   $outp .= '"tag_1":"'         . $rs["tag_1"]         . '",';
   $outp .= '"tag_2":"'         . $rs["tag_2"]         . '",';
   $outp .= '"tag_3":"'         . $rs["tag_3"]         . '",';
   $outp .= '"tag_4":"'         . $rs["tag_4"]         . '",';
   $outp .= '"tag_5":"'         . $rs["tag_5"]         . '"}'; 
}
$outp ='{"records":['.$outp.']}';
$conn->close();

echo($outp);
//print json_encode($outp);
?>