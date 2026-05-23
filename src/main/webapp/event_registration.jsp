<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register | FoodFest 2026</title>
    
    <!-- 1. 外部依赖 (仅保留 FontAwesome 图标) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <!-- 2. 引入品牌样式表 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">

    <!-- 3. 表单验证 JS -->
    <script src="${pageContext.request.contextPath}/js/validation.js" defer></script>
</head>
<body class="site-body">

    <!-- 统一引入导航栏 -->
    <%@ include file="includes/header.jsp" %>

    <!-- 注册页主体包裹器 -->
    <main class="reg-main-wrap">
        <div class="reg-card-box">
            
            <!-- 左侧：纯色信息面板 -->
            <div class="reg-side-info">
                <h3 class="side-info-title">Join the Feast</h3>
                <p class="side-info-desc">Register now to get exclusive updates and early bird tickets for FoodFest 2026.</p>
                <div class="side-info-features">
                    <p><i class="fas fa-check-circle"></i> Free Entry for Kids</p>
                    <p><i class="fas fa-check-circle"></i> 50+ Global Vendors</p>
                    <p><i class="fas fa-check-circle"></i> Live Masterclasses</p>
                </div>
            </div>

            <!-- 右侧：表单输入区域 -->
            <div class="reg-form-area">
                <h2 class="form-area-title">Visitor Registration</h2>
                <form id="regForm" action="RegisterServlet" method="POST" onsubmit="return validateForm()">
                    
                    <div class="reg-form-group">
                        <label class="reg-form-label">Full Name</label>
                        <input type="text" id="fullName" name="fullName" class="reg-form-input" placeholder="Enter your name">
                    </div>
                    
                    <div class="reg-form-group">
                        <label class="reg-form-label">Email Address</label>
                        <input type="email" id="email" name="email" class="reg-form-input" placeholder="your@email.com">
                    </div>
                    
                    <div class="reg-form-group">
                        <label class="reg-form-label">Preferred Festival</label>
                        <select id="prefFestival" name="prefFestival" class="reg-form-select">
                            <option value="">-- Choose an Event --</option>
                            <option value="Spice Route Express">Spice Route Express</option>
                            <option value="Vegan Harvest Day">Vegan Harvest Day</option>
                            <option value="Sweet Tooth Carnival">Sweet Tooth Carnival</option>
                            <option value="Smoke & Sizzle BBQ">Smoke & Sizzle BBQ</option>
                        </select>
                    </div>
                    
                    <div class="reg-form-group-last">
                        <label class="reg-form-label">Message / Special Requests</label>
                        <textarea id="message" name="message" rows="3" class="reg-form-textarea" placeholder="Any dietary requirements?"></textarea>
                    </div>
                    
                    <button type="submit" class="reg-submit-btn">Submit Registration</button>
                </form>
            </div>
            
        </div>
    </main>

    <%-- 5. 引入页脚 (包含版权信息和 JS 引用) --%>
    <%@ include file="includes/footer.jsp" %>
</body>
</html>