<?php
$server = "localhost";
$username = "username";
$password = "";
$database = "englishoko";

// Create connection
$dbconn = new mysqli($server, $username, $password, $database);

// Check connection
if ($dbconn->connect_error) {
  die("Connection failed: " . $dbconn->connect_error);
}
?>
