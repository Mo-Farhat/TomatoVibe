<?php
$host = "localhost";
$username = "root";
$password = "";
$database = "tomato";

// Establish database connection
$conn = new mysqli($host, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Function to sanitize input data
function sanitizeInput($data) {
    global $conn;
    return $conn->real_escape_string(htmlspecialchars(trim($data)));
}

// Check if the form is submitted and process signup
if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["signup"])) {
    // Sanitize and retrieve user input
    $username = sanitizeInput($_POST["username"]);
    $password = sanitizeInput($_POST["password"]);
    $confirmPassword = sanitizeInput($_POST["confirmPassword"]);
    // Assuming you retrieve the score from the form submission
    $score = isset($_POST["score"]) ? sanitizeInput($_POST["score"]) : 0; // Default score to 0 if not provided

    // Check if passwords match
    if ($password !== $confirmPassword) {
        echo '<script>alert("Passwords don\'t match.");</script>'; // Display alert for password mismatch
    } else {
        // Hash the password
        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

        // Insert user data into users_signup table
        $signupSql = "INSERT INTO users_signup (username, password) VALUES (?, ?)";
        $stmt = $conn->prepare($signupSql);
        $stmt->bind_param("ss", $username, $hashedPassword);

        if ($stmt->execute() === TRUE) {
            // Insert score into leaderboard table
            $insertScoreSql = "INSERT INTO leaderboard (username, score) VALUES (?, ?)";
            $stmt = $conn->prepare($insertScoreSql);
            $stmt->bind_param("si", $username, $score);
            if ($stmt->execute() === FALSE) {
                echo "Error inserting score: " . $stmt->error;
            }

            // Redirect to main_menu.html upon successful signup
            header("Location: main_menu.html");
            exit();
        } else {
            echo "Error: " . $signupSql . "<br>" . $conn->error;
        }
    }
}

// Close database connection
$conn->close();
?>
