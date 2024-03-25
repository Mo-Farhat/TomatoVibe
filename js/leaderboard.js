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
    const leaderboardElement = document.getElementById('leaderboard-table');

    // Clear previous content
    leaderboardElement.innerHTML = '';

    // Create HTML elements to display leaderboard
    leaderboardData.forEach(entry => {
        const listItem = document.createElement('li');
        listItem.textContent = `${entry.username}: ${entry.score}`;
        leaderboardElement.appendChild(listItem);
    });
}

// Call fetchLeaderboard function when the page loads or when needed
document.addEventListener("DOMContentLoaded", function () {
    fetchLeaderboard();
});
