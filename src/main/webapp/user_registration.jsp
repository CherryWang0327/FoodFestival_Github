<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FoodFest 2026 | Register & Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <style>
        .auth-wrap {
            min-height: calc(100vh - 80px) !important;
            background: #f5f5f0 !important;
            display: flex !important;
            align-items: center !important;
            justify-content: center !important;
            padding: 2rem 1rem !important;
        }

        .auth-card {
            background: #ffffff;
            border-radius: 14px;
            padding: 2rem 2.5rem;
            width: 100%;
            max-width: 420px;
            box-shadow: 0 2px 16px rgba(0,0,0,0.07);
            box-sizing: border-box;
        }

        .auth-tabs {
            display: flex;
            margin-bottom: 1.75rem;
            border-bottom: 2px solid #eeece4;
        }

        .auth-tab {
            flex: 1;
            background: none;
            border: none;
            border-bottom: 3px solid transparent;
            margin-bottom: -2px;
            padding: 0.6rem 0;
            font-size: 15px;
            font-weight: 600;
            font-family: 'Poppins', sans-serif;
            color: #aaa89f;
            cursor: pointer;
            letter-spacing: 0.02em;
            transition: color 0.2s, border-color 0.2s;
        }

        .auth-tab.active {
            color: #f97316;
            border-bottom-color: #f97316;
        }

        .auth-form-group {
            margin-bottom: 1rem;
        }

        .auth-label {
            display: block;
            font-size: 13px;
            font-weight: 500;
            color: #5f5e5a;
            margin-bottom: 5px;
        }

        .auth-input {
            width: 100%;
            box-sizing: border-box;
            border: 1px solid #d3d1c7;
            border-radius: 8px;
            padding: 0.55rem 0.85rem;
            font-size: 14px;
            font-family: 'Poppins', sans-serif;
            color: #2d2c28;
            background: #fafaf8;
            outline: none;
            transition: border-color 0.2s;
        }

        .auth-input:focus {
            border-color: #f97316;
            box-shadow: 0 0 0 3px rgba(249, 115, 22, 0.15);
        }

        .password-wrap {
            position: relative;
        }

        .password-wrap .auth-input {
            padding-right: 2.5rem;
        }

        .toggle-pw {
            position: absolute;
            right: 0.75rem;
            top: 50%;
            transform: translateY(-50%);
            background: none;
            border: none;
            cursor: pointer;
            color: #aaa89f;
            padding: 0;
            font-size: 15px;
            transition: color 0.2s;
        }

        .toggle-pw:hover {
            color: #f97316;
        }

        /* 错误提示样式 */
        .auth-error {
            display: none;
            font-size: 12px;
            color: #dc2626;
            background: #fef2f2;
            border: 1px solid #fecaca;
            border-radius: 6px;
            padding: 0.5rem 0.75rem;
            margin-bottom: 0.75rem;
        }

        .auth-submit-btn {
            width: 100%;
            background: #f97316;
            color: #fff;
            border: none;
            border-radius: 8px;
            padding: 0.7rem;
            font-size: 15px;
            font-weight: 600;
            font-family: 'Poppins', sans-serif;
            cursor: pointer;
            margin-top: 0.75rem;
            transition: background 0.2s;
        }

        .auth-submit-btn:hover {
            background: #ea6a0a;
        }
    </style>
</head>
<body>

    <%@ include file="includes/header.jsp" %>

    <main class="auth-wrap">
        <div class="auth-card">

            <div class="auth-tabs">
                <button id="login-btn" class="auth-tab active" onclick="showLogin()">Login</button>
                <button id="register-btn" class="auth-tab" onclick="showRegister()">Register</button>
            </div>

            <!-- Login 表单 -->
            <form id="login-form" action="LoginServlet" method="POST" onsubmit="return validateLoginForm()">
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

            <!-- Register 表单 -->
            <form id="register-form" action="RegisterServlet" method="POST" onsubmit="return validateRegisterForm()" style="display:none;">
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