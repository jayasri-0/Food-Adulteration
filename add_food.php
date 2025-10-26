<?php
$servername = "localhost";
$username = "root";
$password = "Daddy@2005";
$dbname = "food_safety";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Handle form submission
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = trim($_POST['name']);
    $advantages = trim($_POST['advantages']);
    $disadvantages = trim($_POST['disadvantages']);
    $description = trim($_POST['description']);

    if (!empty($name) && !empty($advantages) && !empty($disadvantages) && !empty($description)) {
        // Insert into database
        $stmt = $conn->prepare("INSERT INTO food_info (name, advantages, disadvantages, description) VALUES (?, ?, ?)");
        $stmt->bind_param("sss", $name, $advantages, $disadvantages, $description);

        if ($stmt->execute()) {
            echo "Food item added successfully! <a href='food_info.html'>Go back</a>";
        } else {
            echo "Error: " . $stmt->error;
        }

        $stmt->close();
    } else {
        echo "All fields are required!";
    }
}

$conn->close();
?>
