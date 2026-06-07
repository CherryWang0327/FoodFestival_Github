<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register | FoodFest 2026</title>
    
    <!-- 1. external dependence (only retain the FontAwesome icon) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <!-- 2. intro stylesheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">

    <!-- 3. page-specific stylesheet -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/event_registration.css">

    <!-- 4. validation JS -->
    <script src="${pageContext.request.contextPath}/js/validation.js" defer></script>
</head>
<body class="site-body">

    <!-- unified header -->
    <%@ include file="includes/header.jsp" %>

    <!-- Registration page body wrapper -->
    <main class="reg-main-wrap">
        <div class="reg-card-box">
            
            <!-- Left side: Solid color information panel -->
            <div class="reg-side-info">
                <h3 class="side-info-title">Join the Feast</h3>
                <p class="side-info-desc">Register now to get exclusive updates and early bird tickets for FoodFest 2026.</p>
                <div class="side-info-features">
                    <p><i class="fas fa-check-circle"></i> Free Entry for Kids</p>
                    <p><i class="fas fa-check-circle"></i> 50+ Global Vendors</p>
                    <p><i class="fas fa-check-circle"></i> Live Masterclasses</p>
                </div>
            </div>

            <!-- Right side: Form input area -->
            <div class="reg-form-area">
                <h2 class="form-area-title">Visitor Registration</h2>
                <form id="regForm" action="${pageContext.request.contextPath}/RegisterServlet" method="POST" onsubmit="return validateForm()">

                    <!-- Inline error message -->
                    <div id="reg-error" class="reg-error"></div>
                    
                    <div class="reg-form-group">
                        <label class="reg-form-label">Full Name</label>
                        <input type="text" id="fullName" name="fullName" class="reg-form-input" placeholder="Enter your name">
                    </div>
                    
                    <div class="reg-form-group">
                        <label class="reg-form-label">Email Address</label>
                        <input type="text" id="email" name="email" class="reg-form-input" placeholder="your@email.com">
                    </div>
                    
                    <div class="reg-form-group">
                        <label class="reg-form-label">Preferred Festival</label>
                        <select id="prefFestival" name="prefFestival" class="reg-form-select">
                            <option value="">-- Choose an Event --</option>
                            <option value="Spice Route Express">Spice Route Express</option>
                            <option value="Vegan Harvest Day">Vegan Harvest Day</option>
                            <option value="Midnight Street Fiesta">Midnight Street Fiesta</option>
                            <option value="Coastal Seafood Carnival">Coastal Seafood Carnival</option>
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

    <%-- 5. Include a footer (containing copyright information and JS references) --%>
    <%@ include file="includes/footer.jsp" %>
</body>
</html>
