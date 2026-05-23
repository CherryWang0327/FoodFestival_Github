<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 1. 引入头部 (包含导航栏和 main.css，确保里面已经没有 Tailwind 的 <script> 标签) --%>
<%@ include file="includes/header.jsp" %>

    <section class="hero-section">
        <div class="hero-overlay"></div>
        
        <div class="hero-content">
            <h2 class="hero-title brand-font">A World of Flavors Awaits</h2>
            <p class="hero-subtitle">Join us for the most prestigious culinary tour of the year.</p>
            <a href="#festivals" class="hero-btn">Explore Festivals</a>
        </div>
    </section>

    <jsp:include page="home_festival_module.jsp" />

    <jsp:include page="home_vendor_module.jsp" />

<%-- 5. 引入页脚 (包含版权信息和 JS 引用) --%>
<%@ include file="includes/footer.jsp" %>