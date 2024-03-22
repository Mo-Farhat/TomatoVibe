function fetchJoke() {
    fetch('https://api.jokes.one')
        .then(response => response.json())
        .then(data => {
            // Extract joke from the JSON response
            const joke = data.contents.jokes[0].joke.text;

            // Display the joke on the page
            displayJoke(joke);
        })
        .catch(error => {
            console.error('Error fetching joke:', error);
            // Handle errors, such as displaying an error message
        });
}

function displayJoke(joke) {
    const jokeElement = document.getElementById('joke');
    jokeElement.innerText = joke;
}

document.addEventListener("DOMContentLoaded", function () {
    document.getElementById('getJokeButton').addEventListener('click', fetchJoke);
});
