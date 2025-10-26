<?php
$host = "localhost";  // Change if using a remote database
$username = "root";   // Your MySQL username
$password = "Daddy@2005";       // Your MySQL password (leave blank if none)
$database = "food_safety"; // Your database name

$conn = new mysqli($host, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
