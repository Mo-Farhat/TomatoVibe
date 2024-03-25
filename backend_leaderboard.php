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

$leaderboardData = array();
if ($result->num_rows > 0) {
    // Fetch leaderboard data
    while($row = $result->fetch_assoc()) {
        $leaderboardData[] = array(
            'username' => $row["username"],
            'score' => $row["score"]
        );
    }
} 

// Return JSON response
header('Content-Type: application/json');
echo json_encode($leaderboardData);
$conn->close();
?>
