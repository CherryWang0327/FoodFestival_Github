<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us | FoodFest 2026</title>
    
    <!-- 1. 外部依赖 (仅保留 FontAwesome 图标) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <!-- 2. 引入品牌样式表 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body class="site-body">

    <!-- 引入导航栏 -->
    <%@ include file="includes/header.jsp" %>

    <!-- 主体布局容器 -->
    <main class="contact-main-wrap">
        <div class="contact-flex-layout">
            
            <!-- 左侧：留言表单 -->
            <div class="contact-form-box">
                <h2 class="form-box-title">Send us a Message</h2>
                <form action="ContactServlet" method="POST">
                    
                    <div class="form-group">
                        <label class="form-label">Name</label>
                        <input type="text" name="name" class="form-input">
                    </div>
                    
                    <div class="form-group">
                        <label class="form-label">Email</label>
                        <input type="email" name="email" class="form-input">
                    </div>
                    
                    <div class="form-group form-group-last">
                        <label class="form-label">Message</label>
                        <textarea name="message" rows="4" class="form-textarea"></textarea>
                    </div>
                    
                    <button type="submit" class="form-submit-btn">
                        Submit Message
                    </button>
                </form>
            </div>

            <!-- 右侧：直接联系方式 -->
            <div class="contact-info-sidebar">
                <div class="info-sidebar-card">
                    <h3 class="sidebar-card-title">Direct Contact</h3>
                    
                    <a href="https://wa.me/601xxxxxxxxx" target="_blank" class="sidebar-contact-link link-whatsapp">
                        <i class="fab fa-whatsapp"></i>
                        <span>Chat on WhatsApp</span>
                    </a>
                    
                    <a href="mailto:contact@xmum.edu.my" class="sidebar-contact-link link-email">
                        <i class="fas fa-envelope"></i>
                        <span>Email Us</span>
                    </a>
                </div>
            </div>
            
        </div>
    </main>

    <%-- 5. 引入页脚 (包含版权信息和 JS 引用) --%>
    <%@ include file="includes/footer.jsp" %>

</body>
</html>