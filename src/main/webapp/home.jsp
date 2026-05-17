<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 1. 引入头部 (包含导航栏、Tailwind和main.css) --%>
<%@ include file="includes/header.jsp" %>

    <!-- Hero Section -->
    <section class="hero-bg h-[500px] flex items-center justify-center text-center text-white">
        <div class="px-4">
            <h2 class="text-6xl font-bold mb-4 brand-font">A World of Flavors Awaits!!!</h2>
            <p class="text-xl max-w-2xl mx-auto mb-8">Join us for the most prestigious culinary tour of the year.</p>
            <a href="#festivals" class="bg-orange-500 hover:bg-orange-600 px-10 py-4 rounded-full font-bold transition-all inline-block shadow-lg">Explore Festivals</a>
        </div>
    </section>

    <!-- 动态包含：节日模块 -->
    <jsp:include page="home_festival_module.jsp" />

    <!-- 动态包含：商家模块 -->
    <jsp:include page="home_vendor_module.jsp" />

<%-- 5. 引入页脚 (包含版权信息和 JS 引用) --%>
<%@ include file="includes/footer.jsp" %>
