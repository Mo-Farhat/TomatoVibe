document.addEventListener("DOMContentLoaded", function () {
    const loginForm = document.getElementById('login-form');

    // Event listener for login form submission
    loginForm.addEventListener('submit', function (event) {
        event.preventDefault();
        const username = document.getElementById('username').value;
        const password = document.getElementById('password').value;
        
        // Perform login action here, e.g., send data to backend for authentication
        
        // Set cookies upon successful login
        setCookie('username', username, 30); // Set username cookie for 30 days
        
        // Redirect to homepage or dashboard after login
        window.location.href = 'homepage.html'; // Replace 'homepage.html' with the actual URL
    });

    function setCookie(name, value, days) {
        const date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        const expires = "expires=" + date.toUTCString();
        document.cookie = name + "=" + value + ";" + expires + ";path=/";
    }
});
