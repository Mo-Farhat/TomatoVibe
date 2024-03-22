document.getElementById("getJokeButton").addEventListener("click", function() {
    fetch("https://official-joke-api.appspot.com/random_joke")
        .then(response => response.json())
        .then(data => {
            const joke = data.setup + " " + data.punchline;
            document.getElementById("joke").innerText = joke;
        })
        .catch(error => console.error("Error fetching joke:", error));
});
