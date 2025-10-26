<?php
$servername = "localhost"; // Change if needed
$username = "root"; // Your database username
$password = "Daddy@2005"; // Your database password
$dbname = "food_safety"; // Your database name

// Create a connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check if the connection is successful
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Process form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $food = $conn->real_escape_string($_POST['food']);

    // Fetch food details from the database
    $sql = "SELECT * FROM food_info WHERE name LIKE '%$food%'";
    $result = $conn->query($sql);

    echo "<!DOCTYPE html>
    <html lang='en'>
    <head>
        <meta charset='UTF-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1.0'>
        <title>Food Information</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background: url('download.jpeg') no-repeat center center/cover;
                margin: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .container {
                background: rgba(255, 255, 255, 0.9);
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
                width: 50%;
                text-align: left;
            }
            h2 {
                text-align: center;
                color: #333;
            }
            p {
                font-size: 16px;
                color: #555;
            }
            .back-btn, .home-btn {
                display: block;
                margin: 10px auto;
                padding: 10px 15px;
                text-align: center;
                text-decoration: none;
                border-radius: 5px;
                width: 150px;
            }
            .back-btn {
                background: #ff5722;
                color: white;
            }
            .back-btn:hover {
                background: #e64a19;
            }
            .home-btn {
                background: #007bff;
                color: white;
            }
            .home-btn:hover {
                background: #0056b3;
            }
        </style>
    </head>
    <body>
    <div class='container'>
        <h2>Food Information</h2>";

    if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
            echo "<p><strong>Food Name:</strong> " . htmlspecialchars($row["name"]) . "</p>";
            echo "<p><strong>Advantages:</strong> " . htmlspecialchars($row["advantages"]) . "</p>";
            echo "<p><strong>Disadvantages:</strong> " . htmlspecialchars($row["disadvantages"]) . "</p>";
            echo "<p><strong>Description:</strong> " . htmlspecialchars($row["description"]) . "</p>";
            echo "<hr>";
        }
    } else {
        echo "<p>No information found for \"$food\".</p>";
    }

    echo "<a href='food_info.html' class='back-btn'>Back</a>";
    echo "<a href='home.html' class='home-btn'>Return to Home</a>";
    echo "</div></body></html>";
}

$conn->close();
?>
