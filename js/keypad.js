// Function to add a digit to the user input
function addDigit(digit) {
    var userInput = document.getElementById("user-input");
    userInput.value += digit;
}

// Function to remove the last character from the user input (backspace)
function backspace() {
    var userInput = document.getElementById("user-input");
    userInput.value = userInput.value.slice(0, -1);
}

function appendToAnswer(value) {
    document.getElementById('answer').value += value;
}

function backspace() {
    let answer = document.getElementById('answer').value;
    document.getElementById('answer').value = answer.substring(0, answer.length - 1);
}
