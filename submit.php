<?php
session_start();
if (!isset($_SESSION['email'])) {
    header("Location: signin.html");
    exit();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST["name"];
    $email = $_POST["email"];
    $location = $_POST["location"];
    $subject = $_POST["subject"];
    $message = $_POST["message"];

    $conn = new mysqli("localhost", "root", "Daddy@2005", "food_safety");

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $stmt = $conn->prepare("INSERT INTO inquiries (name, email, location, subject, message) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("sssss", $name, $email, $location, $subject, $message);

    if ($stmt->execute()) {
        header("Location: submit.html?success=1");
        exit();
    } else {
        header("Location: submit.html?success=0");
        exit();
    }

    $stmt->close();
    $conn->close();
}
?>
