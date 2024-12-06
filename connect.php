<?php
$server = "localhost";
$username = "englishoko";
$password = "Akos123456";
$database = "englishoko";

// Create connection
$dbconn = new mysqli($server, $username, $password, $database, 3306);

// Check connection
if ($dbconn->connect_error) {
  echo "Kapcsolati hiba";
  die("Connection failed: " . $dbconn->connect_error);
}
else echo "Kapcsolat";
?>
