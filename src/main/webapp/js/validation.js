/* src/main/webapp/js/validation.js */
function validateForm() {
    const name = document.getElementById('fullName').value;
    const email = document.getElementById('email').value;
    const fest = document.getElementById('prefFestival').value;
    
    if (!name || !email || !fest) {
        alert("Please fill in all required fields!");
        return false;
    }
    return true; 
}