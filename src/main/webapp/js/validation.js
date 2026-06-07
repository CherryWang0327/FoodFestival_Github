/* src/main/webapp/js/validation.js */

/* ── Event Registration (event_registration.jsp) ── */
function validateForm() {
    const name = document.getElementById('fullName').value.trim();
    const email = document.getElementById('email').value.trim();
    const fest = document.getElementById('prefFestival').value;

    // Required fields check
    if (!name || !email || !fest) {
        showAuthError('reg-error', 'Please fill in all required fields.');
        return false;
    }

    // Email format check
    const emailRegex = /^[^\s@]+@[^\s@]+\.[a-zA-Z]{2,}$/;
    if (!emailRegex.test(email)) {
        showAuthError('reg-error', 'Please enter a valid email address (e.g. you@example.com).');
        return false;
    }

    clearAuthError('reg-error');
    return true;
}

/* ── User Login (user_registration.jsp) ── */
function validateLoginForm() {
    const email = document.getElementById('login-email').value.trim();
    const password = document.getElementById('login-pw').value;

    // Email format check
    const emailRegex = /^[^\s@]+@[^\s@]+\.[a-zA-Z]{2,}$/;
    if (!emailRegex.test(email)) {
        showAuthError('login-error', 'Please enter a valid email address (e.g. you@example.com).');
        return false;
    }

    // Password: min 8 chars, must contain letter + number
    const hasLetter = /[a-zA-Z]/.test(password);
    const hasNumber = /[0-9]/.test(password);
    if (!password) {
        showAuthError('login-error', 'Please enter your password.');
        return false;
    }
    if (password.length < 8 || !hasLetter || !hasNumber) {
        showAuthError('login-error', 'Password must be at least 8 characters and include both letters and numbers.');
        return false;
    }

    clearAuthError('login-error');
    return true;
}

/* ── User Register (user_registration.jsp) ── */
function validateRegisterForm() {
    const username = document.getElementById('register-username').value.trim();
    const email = document.getElementById('register-email').value.trim();
    const password = document.getElementById('register-pw').value;

    // Username not empty
    if (!username) {
        showAuthError('register-error', 'Please enter a username.');
        return false;
    }

    // Email format check
    const emailRegex = /^[^\s@]+@[^\s@]+\.[a-zA-Z]{2,}$/;
    if (!emailRegex.test(email)) {
        showAuthError('register-error', 'Please enter a valid email address (e.g. you@example.com).');
        return false;
    }

    // Password: min 8 chars, must contain letter + number
    const hasLetter = /[a-zA-Z]/.test(password);
    const hasNumber = /[0-9]/.test(password);
    if (password.length < 8 || !hasLetter || !hasNumber) {
        showAuthError('register-error', 'Password must be at least 8 characters and include both letters and numbers.');
        return false;
    }

    clearAuthError('register-error');
    return true;
}

/* ── Helpers ── */
function showAuthError(id, message) {
    const el = document.getElementById(id);
    if (el) {
        el.textContent = message;
        el.style.display = 'block';
    }
}

function clearAuthError(id) {
    const el = document.getElementById(id);
    if (el) {
        el.textContent = '';
        el.style.display = 'none';
    }
}