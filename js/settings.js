document.addEventListener("DOMContentLoaded", function () {
    const difficultyForm = document.getElementById('difficulty-form');

    difficultyForm.addEventListener('submit', function (event) {
        event.preventDefault();

        const selectedDifficulty = document.getElementById('difficulty').value;

        // Save selected difficulty to local storage or send it to the server for storage
        // Example: localStorage.setItem('difficulty', selectedDifficulty);

        // Optional: Provide feedback to the user that the difficulty setting has been saved
        alert('Difficulty setting saved successfully!');
    });
});
