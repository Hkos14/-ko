<?php
/*$server = "localhost";
$username = "englishoko";
$password = "Akos123456";
$database = "englishoko";*/

$server = "localhost";
$username = "root";
$password = "";
$database = "englishoko";

// Create connection
$dbconn = new mysqli($server, $username, $password, $database);

// Check connection
/*if ($dbconn->connect_error) {
  echo $dbconn->connect_error;
  die("Connection failed: " . $dbconn->connect_error);
}*/

