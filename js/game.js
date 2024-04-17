let currentGame;
let score = 0;
let remainingTries = 3; // Initialize remaining tries

document.addEventListener("DOMContentLoaded", function () {
    initializeGame();
});

function initializeGame() {
    getNextQuestion();
    document.getElementById("submit-answer").addEventListener("click", submitAnswer);
    document.getElementById("logout").addEventListener("click", logout);

    const urlParams = new URLSearchParams(window.location.search);
    const selectedDifficulty = urlParams.get('difficulty');

    // Adjust game mechanics based on difficulty
    switch (selectedDifficulty) {
        case 'easy':
            timeLimit = 30; // Set a longer time limit for easy difficulty
            penalty = 1; // Set a smaller penalty for incorrect answers
            break;
        case 'medium':
            timeLimit = 20; // Set a moderate time limit for medium difficulty
            penalty = 2; // Set a moderate penalty for incorrect answers
            break;
        case 'hard':
            timeLimit = 10; // Set a shorter time limit for hard difficulty
            penalty = 3; // Set a higher penalty for incorrect answers
            break;
        default:
            timeLimit = 30; // Default time limit for easy difficulty
            penalty = 1; // Default penalty for incorrect answers
            break;
    }

    updateTriesDisplay(remainingTries);
    startTimer(); // Start the timer based on the adjusted time limit
}

function getNextQuestion() {
    fetch('https://marcconrad.com/uob/tomato/api.php?out=csv&base64=yes')
        .then(response => response.text())
        .then(data => {
            currentGame = {
                image: 'data:image/png;base64,' + data.split(",")[0],
                solution: parseInt(data.split(",")[1])
            };

            document.getElementById('game-image').src = currentGame.image;
            document.getElementById('answer').value = '';
            document.getElementById('result-message').innerText = '';
        })
        .catch(error => console.error('Error fetching question:', error));
}

function submitAnswer() {
    const userAnswer = parseInt(document.getElementById('answer').value);

    if (!isNaN(userAnswer)) {
        const isCorrect = checkAnswer(userAnswer);

        if (isCorrect) {
            score++;
            getNextQuestion();
            updateScoreDisplay();
            clearInterval(timerInterval);
            startTimer();
        } else {
            remainingTries--;
            updateLivesDisplay();
            if (remainingTries > 0) {
                document.getElementById('result-message').innerText = `Incorrect. ${remainingTries} ${remainingTries > 1 ? 'tries' : 'try'} left.`;
            } else {
                // If no tries left, show the game over message and play again button
                document.getElementById('result-message').innerText = `Game over! Your final score is ${score}.`;
                showPlayAgainButton(score);
                // End game session and submit score to leaderboard
                endGame('username', score);
            }
        }
    } else {
        document.getElementById('result-message').innerText = 'Please enter a valid number.';
    }
}

function resetGame() {
    score = 0;
    remainingTries = 3;
    updateScoreDisplay();
    updateLivesDisplay();
    getNextQuestion();
    document.getElementById('result-message').innerText = '';
    // Remove the play again button and score display if they exist
    const playAgainButton = document.getElementById('play-again-button');
    if (playAgainButton) {
        playAgainButton.remove();
    }
    const scoreDisplay = document.getElementById('score-display');
    if (scoreDisplay) {
        scoreDisplay.remove();
    }
}

function showPlayAgainButton(score) {
    // Check if the play again button already exists
    if (!document.getElementById('play-again-button')) {
        const playAgainButton = document.createElement('button');
        playAgainButton.innerText = 'Play Again';
        playAgainButton.id = 'play-again-button';
        playAgainButton.onclick = () => {
            resetGame(); // Reset the game when play again button is clicked
        };
        document.getElementById('game-container').appendChild(playAgainButton);
    }
}

function checkAnswer(answer) {
    return answer === currentGame.solution;
}

function updateScoreDisplay() {
    document.getElementById('score').innerText = 'Score: ' + score;
}

function updateLivesDisplay() {
    document.getElementById('lives').innerText = 'Lives left: ' + remainingTries;
}

function logout() {
    // Redirect to the login page
    window.location.href = 'index.html';
}

function retryGame() {
    // Reset remaining tries to 3
    remainingTries = 3;

    // Update the lives display after retrying
    updateLivesDisplay();

    // Additional logic for retrying the game
    // For example, you might want to reset the score, fetch a new question, etc.
    score = 0; // Reset the score to zero

    // Fetch a new question
    getNextQuestion();
}

// Function to end the game session and submit the final score to the leaderboard
function endGame(username, finalScore) {
    // Send final score to server
    fetch('backend_leaderboard.php', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json',
        },
        body: JSON.stringify({
            username: username,
            score: finalScore
        })
    })
    .then(response => {
        if (response.ok) {
            console.log('Score submitted successfully.');
            // Fetch and update leaderboard after submitting score
            fetchLeaderboard();
        } else {
            console.error('Failed to submit score.');
        }
    })
    .catch(error => console.error('Error:', error));
}