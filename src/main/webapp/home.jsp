<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 1. 引入头部 (包含导航栏、Tailwind和main.css) --%>
<%@ include file="includes/header.jsp" %>

    <!-- Hero Section -->
    <section style="background-image: url('https://images.unsplash.com/photo-1682862279256-b2a9e4f3d22c?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3Ds'); 
                background-size: cover; 
                background-position: center top;
                background-repeat: no-repeat;"
         class="relative h-[500px] flex items-center justify-center text-center text-white">
    <div class="absolute inset-0 bg-black/50"></div>
    <div class="relative z-10 px-4">
        <h2 class="text-6xl font-bold mb-4 brand-font">A World of Flavors Awaits</h2>
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
