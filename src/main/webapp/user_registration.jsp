<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FoodFest 2026 | Register & Login</title>
    
   <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body class="bg-gray-50">

    <%@ include file="includes/header.jsp" %>
        

    <main style="
    background: #f97316;
    min-height: calc(100vh - 80px);
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 2rem 1rem;
">
    <div style="
        background: #ffffff;
        border-radius: 12px;
        padding: 2rem 2.5rem;
        width: 100%;
        max-width: 400px;
        box-sizing: border-box;
    ">
        <div style="
            display: flex;
            gap: 1rem;
            margin-bottom: 1.5rem;
            border-bottom: 1.5px solid #f1efe8;
            padding-bottom: 0.75rem;
        ">
            <button id="login-btn"
                onclick="showLogin()"
                style="background:none; border:none; font-size:15px; font-weight:500;
                       cursor:pointer; padding:0.25rem 0.5rem; color:#f97316;
                       border-bottom: 2.5px solid #f97316; margin-bottom:-0.85rem;">
                Login
            </button>
            <button id="register-btn"
                onclick="showRegister()"
                style="background:none; border:none; font-size:15px; font-weight:500;
                       cursor:pointer; padding:0.25rem 0.5rem; color:#888780;
                       border-bottom: 2.5px solid transparent; margin-bottom:-0.85rem;">
                Register
            </button>
        </div>

        <form id="login-form" action="LoginServlet" method="POST">
            <div style="margin-bottom:1rem;">
                <label style="display:block; font-size:13px; color:#5f5e5a; margin-bottom:4px;">Email</label>
                <input type="email" name="email" required
                    style="width:100%; box-sizing:border-box; border:0.5px solid #d3d1c7;
                           border-radius:8px; padding:0.5rem 0.75rem; font-size:14px;">
            </div>
            <div style="margin-bottom:1rem;">
                <label style="display:block; font-size:13px; color:#5f5e5a; margin-bottom:4px;">Password</label>
                <input type="password" name="password" required
                    style="width:100%; box-sizing:border-box; border:0.5px solid #d3d1c7;
                           border-radius:8px; padding:0.5rem 0.75rem; font-size:14px;">
            </div>
            <button type="submit"
                style="width:100%; background:#f97316; color:#fff; border:none;
                       border-radius:8px; padding:0.65rem; font-size:15px;
                       font-weight:500; cursor:pointer; margin-top:0.5rem;">
                Sign In
            </button>
        </form>

        <form id="register-form" action="RegisterServlet" method="POST" style="display:none;">
            <div style="margin-bottom:1rem;">
                <label style="display:block; font-size:13px; color:#5f5e5a; margin-bottom:4px;">Username</label>
                <input type="text" name="username" required
                    style="width:100%; box-sizing:border-box; border:0.5px solid #d3d1c7;
                           border-radius:8px; padding:0.5rem 0.75rem; font-size:14px;">
            </div>
            <div style="margin-bottom:1rem;">
                <label style="display:block; font-size:13px; color:#5f5e5a; margin-bottom:4px;">Email</label>
                <input type="email" name="email" required
                    style="width:100%; box-sizing:border-box; border:0.5px solid #d3d1c7;
                           border-radius:8px; padding:0.5rem 0.75rem; font-size:14px;">
            </div>
            <div style="margin-bottom:1rem;">
                <label style="display:block; font-size:13px; color:#5f5e5a; margin-bottom:4px;">Password</label>
                <input type="password" name="password" required
                    style="width:100%; box-sizing:border-box; border:0.5px solid #d3d1c7;
                           border-radius:8px; padding:0.5rem 0.75rem; font-size:14px;">
            </div>
            <button type="submit"
                style="width:100%; background:#f97316; color:#fff; border:none;
                       border-radius:8px; padding:0.65rem; font-size:15px;
                       font-weight:500; cursor:pointer; margin-top:0.5rem;">
                Create Account
            </button>
        </form>
    </div>
</main>
    <%@ include file="includes/footer.jsp" %>
    

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