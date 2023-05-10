<?php
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "database";

$db = new mysqli($servername, $username, $password, $dbname);

if ($db->connect_error) {
  die("Connection failed: " . $db->connect_error);
}
?>

