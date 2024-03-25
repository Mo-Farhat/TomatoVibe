<?php
$host = "localhost";
$username = "root";
$password = "";
$database = "tomato";
$conn = new mysqli($host, $username, $password, $database);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query to fetch leaderboard data
$sql = "SELECT username, score FROM leaderboard ORDER BY score DESC LIMIT 10"; // Assuming leaderboard table structure

$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Username: " . $row["username"]. " - Score: " . $row["score"]. "<br>";
    }
} else {
    echo "0 results";
}

$conn->close();
?>