<?php
session_start();
include 'config.php'; // Ensure database connection

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $email = trim($_POST['email']);
    $password = trim($_POST['password']);

    $stmt = $conn->prepare("SELECT * FROM users WHERE email = ?");
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();
    
    if ($result->num_rows === 1) {
        $user = $result->fetch_assoc();
        
        // Verify hashed password
        if (password_verify($password, $user['password'])) {
            $_SESSION['email'] = $user['email'];
            $_SESSION['name'] = $user['name'];

            // Redirect to home page after login
            header("Location: report.php");
            exit();
        } else {
            echo "<script>alert('Invalid Credentials! Try again.'); window.location.href='signin.html';</script>";
        }
    } else {
        echo "<script>alert('User not found! Please sign up.'); window.location.href='signup.html';</script>";
    }
}
?>
