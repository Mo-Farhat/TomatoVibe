// leaderboard.js

// Function to fetch and display leaderboard
function fetchLeaderboard() {
    fetch('backend_leaderboard.php')
        .then(response => response.json())
        .then(data => {
            // Display leaderboard data on the webpage
            displayLeaderboard(data);
        })
        .catch(error => console.error('Error fetching leaderboard:', error));
}

// Function to display leaderboard data
function displayLeaderboard(leaderboardData) {
    const leaderboardTable = document.querySelector('table tbody');

    // Clear existing table rows
    leaderboardTable.innerHTML = '';

    // Iterate over leaderboard data and create table rows
    leaderboardData.forEach(entry => {
        const row = `<tr>
                        <td>${entry.username}</td>
                        <td>${entry.score}</td>
                    </tr>`;
        leaderboardTable.innerHTML += row;
    });
}

// Call fetchLeaderboard function when the page loads or when needed
document.addEventListener("DOMContentLoaded", function () {
    fetchLeaderboard();
});
