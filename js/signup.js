document.getElementById("signupForm").addEventListener("submit", function(event) {
    var password = document.getElementById("password").value;
    var confirmPassword = document.getElementById("confirmPassword").value;
    if (password !== confirmPassword) {
        event.preventDefault(); // Prevent form submission
        alert("Your passwords do not match. Please try again.");
    }
});

function showNotification(message) {
    var notification = document.getElementById('notification');
    notification.innerHTML = message;
    notification.style.display = 'block';
}

function hideNotification() {
    var notification = document.getElementById('notification');
    notification.style.display = 'none';
}
