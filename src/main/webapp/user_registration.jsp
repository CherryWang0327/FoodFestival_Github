<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FoodFest 2026 | Register & Login</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>

    <header class="header">
        <nav class="nav-container">
            <div class="logo">
                <i class="fas fa-utensils"></i>
                <h1>Food<span>Fest</span> 2026</h1>
            </div>
            <ul class="nav-links">
                <li><a href="index.jsp">Home</a></li>
            </ul>
        </nav>
    </header>

    <main class="auth-container">
        <div class="form-box">
            <div class="tab-header">
                <button id="login-btn" class="active" onclick="showLogin()">Login</button>
                <button id="register-btn" onclick="showRegister()">Register</button>
            </div>

            <form id="login-form" action="LoginServlet" method="POST">
                <div class="input-group">
                    <label>Email</label>
                    <input type="email" name="email" required>
                </div>
                <div class="input-group">
                    <label>Password</label>
                    <input type="password" name="password" required>
                </div>
                <button type="submit" class="btn-submit">Sign In</button>
            </form>

            <form id="register-form" action="RegisterServlet" method="POST" style="display:none;">
                <div class="input-group">
                    <label>Username</label>
                    <input type="text" name="username" required>
                </div>
                <div class="input-group">
                    <label>Email</label>
                    <input type="email" name="email" required>
                </div>
                <div class="input-group">
                    <label>Password</label>
                    <input type="password" name="password" required>
                </div>
                <button type="submit" class="btn-submit">Create Account</button>
            </form>
        </div>
    </main>

    <script>
        function showLogin() {
            document.getElementById('login-form').style.display = 'block';
            document.getElementById('register-form').style.display = 'none';
            document.getElementById('login-btn').classList.add('active');
            document.getElementById('register-btn').classList.remove('active');
        }
        function showRegister() {
            document.getElementById('login-form').style.display = 'none';
            document.getElementById('register-form').style.display = 'block';
            document.getElementById('register-btn').classList.add('active');
            document.getElementById('login-btn').classList.remove('active');
        }
    </script>
</body>
</html>