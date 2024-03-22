<?php
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

// Password match check
if ($_POST["password"] !== $_POST["confirmPassword"]) {
    echo '<script>showNotification("Passwords don\'t match.");</script>';
} else {
    // Signup logic
    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["signup"])) {
        $username = sanitizeInput($_POST["username"]);
        $password = sanitizeInput($_POST["password"]);
        $confirmPassword = sanitizeInput($_POST["confirmPassword"]);

        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);
        $signupSql = "INSERT INTO users_signup (username, password) VALUES ('$username', '$hashedPassword')";

        if ($conn->query($signupSql) === TRUE) {
            // Signup successful, redirect to main_menu.html
            header("Location: main_menu.html");
            exit(); 
        } else {
            echo "Error: " . $signupSql . "<br>" . $conn->error;
        }
    }
}

$conn->close();
?>
