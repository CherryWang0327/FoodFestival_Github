<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FoodFest 2026 | Register &amp; Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Registration.css">
</head>
<body>

    <%@ include file="includes/header.jsp" %>

    <main class="auth-wrap">
        <div class="auth-card">

            <div class="auth-tabs">
                <button id="login-btn" class="auth-tab active" onclick="showLogin()">Login</button>
                <button id="register-btn" class="auth-tab" onclick="showRegister()">Register</button>
            </div>

            <!-- Login Sheet -->
            <form id="login-form" action="UserLoginServlet" method="POST" onsubmit="return validateLoginForm()">
                <div id="login-error" class="auth-error"></div>
                <div class="auth-form-group">
                    <label class="auth-label">Email</label>
                    <input type="text" id="login-email" name="email" class="auth-input" placeholder="you@example.com">
                </div>
                <div class="auth-form-group">
                    <label class="auth-label">Password</label>
                    <div class="password-wrap">
                        <input type="password" id="login-pw" name="password" class="auth-input" placeholder="••••••••">
                        <button type="button" class="toggle-pw" onclick="togglePw('login-pw', this)">
                            <i class="fas fa-eye"></i>
                        </button>
                    </div>
                </div>
                <button type="submit" class="auth-submit-btn">Sign In</button>
            </form>

            <!-- Register Sheet -->
            <form id="register-form" action="UserRegisterServlet" method="POST" onsubmit="return validateRegisterForm()" style="display:none;">
                <div id="register-error" class="auth-error"></div>
                <div class="auth-form-group">
                    <label class="auth-label">Username</label>
                    <input type="text" id="register-username" name="username" class="auth-input" placeholder="Your name">
                </div>
                <div class="auth-form-group">
                    <label class="auth-label">Email</label>
                    <input type="text" id="register-email" name="email" class="auth-input" placeholder="you@example.com">
                </div>
                <div class="auth-form-group">
                    <label class="auth-label">Password</label>
                    <div class="password-wrap">
                        <input type="password" id="register-pw" name="password" class="auth-input" placeholder="At least 8 chars with letters & numbers">
                        <button type="button" class="toggle-pw" onclick="togglePw('register-pw', this)">
                            <i class="fas fa-eye"></i>
                        </button>
                    </div>
                </div>
                <button type="submit" class="auth-submit-btn">Create Account</button>
            </form>

        </div>
    </main>

    <%@ include file="includes/footer.jsp" %>

    <script src="${pageContext.request.contextPath}/js/validation.js"></script>
    <script>
        function showLogin() {
            document.getElementById('login-form').style.display = 'block';
            document.getElementById('register-form').style.display = 'none';
            document.getElementById('login-btn').classList.add('active');
            document.getElementById('register-btn').classList.remove('active');
            clearAuthError('login-error');
        }
        function showRegister() {
            document.getElementById('login-form').style.display = 'none';
            document.getElementById('register-form').style.display = 'block';
            document.getElementById('register-btn').classList.add('active');
            document.getElementById('login-btn').classList.remove('active');
            clearAuthError('register-error');
        }
        function togglePw(inputId, btn) {
            var input = document.getElementById(inputId);
            var icon = btn.querySelector('i');
            if (input.type === 'password') {
                input.type = 'text';
                icon.classList.remove('fa-eye');
                icon.classList.add('fa-eye-slash');
            } else {
                input.type = 'password';
                icon.classList.remove('fa-eye-slash');
                icon.classList.add('fa-eye');
            }
        }
    </script>
</body>
</html>