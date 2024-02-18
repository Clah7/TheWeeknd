
function getUsername() {
    var loginForm = document.querySelector('form');
    var usernameInput = document.getElementById('username');
    
    // Menangani pengiriman form
    loginForm.addEventListener('submit', function (e) {
        e.preventDefault(); // Menghentikan pengiriman form agar halaman tidak ter-refresh
    
        // Mendapatkan nilai username dari input
        var username = usernameInput.value;
    
        // Menyimpan nilai username di sessionStorage
        sessionStorage.setItem('username', username);
    
        // Mengarahkan pengguna ke halaman main.html
        window.location.href = 'Main.php';
    });
}

// Mendapatkan nilai username dari sessionStorage
var storedUsername = sessionStorage.getItem('username');

// Menyisipkan nilai username ke dalam navbar atau elemen lain
if (storedUsername) {
    var navbarUsernameElement = document.getElementById('usernamedis'); 
    navbarUsernameElement.textContent = 'Welcome, ' + storedUsername;
}
