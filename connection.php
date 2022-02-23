<?php
$servername = "localhost";
$database_user = "root";
$password = "";
$dbname = "requirments";
$baseurl = 'http://localhost/requirments/';


// Create connection
$conn = new mysqli($servername, $database_user, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>
