<?php
// backend_login.php

// Start session to store user information
session_start();

$host = "localhost";
$username = "root";
$password = "";
$database = "tomato";

$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to sanitize input data
function sanitizeInput($data) {
    global $conn;
    return $conn->real_escape_string(htmlspecialchars(trim($data)));
}

// Login logic
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["login"])) {
    $username = sanitizeInput($_POST["username"]);
    $password = sanitizeInput($_POST["password"]);

    $loginSql = "SELECT u.*, l.score FROM users_signup u LEFT JOIN leaderboard l ON u.username = l.username WHERE u.username = ?";
    $stmt = $conn->prepare($loginSql);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        if (password_verify($password, $row["password"])) {
            // Password is correct, store username and score in session
            $_SESSION["username"] = $username;
            $_SESSION["score"] = $row["score"]; // Store the score in session
            // Redirect to main_menu.html
            header("Location: main_menu.html");
            exit();
        } else {
            echo "Invalid password. Please try again.";
        }
    } else {
        echo "User not found. Please sign up.";
    }
}
