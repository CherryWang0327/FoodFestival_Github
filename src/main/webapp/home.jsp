<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 1. 引入头部 (包含导航栏、Tailwind和main.css) --%>
<%@ include file="includes/header.jsp" %>

    <!-- Hero Section -->
<section
    class="relative h-screen bg-cover bg-center flex items-center justify-center text-center text-white overflow-hidden"
    style="background-image: url('${pageContext.request.contextPath}/assets/images/hero/hero-bg.png'); background-position: center center;"
>

    <!-- Dark cinematic overlay -->
    <div class="absolute inset-0 bg-black/35"></div>

    <!-- Extra gradient overlay -->
    <div class="absolute inset-0 bg-gradient-to-t from-black/30 via-black/10 to-black/20"></div>

    <!-- Content -->
    <div class="relative z-10 px-6 max-w-5xl -mt-10">

        <h2 class="text-5xl md:text-7xl font-bold mb-6 leading-tight brand-font drop-shadow-2xl">
            A World of Flavors Awaits
        </h2>

        <p class="text-lg md:text-2xl text-gray-200 mb-10 max-w-3xl mx-auto">
            Join us for the most prestigious culinary tour of the year.
        </p>

        <a href="#festivals"
           class="inline-block bg-orange-500 hover:bg-orange-600 transition-all duration-300 hover:scale-105 px-10 py-4 rounded-full font-bold text-lg shadow-2xl">

            Explore Festivals

        </a>

    </div>

</section>
    <!-- 动态包含：节日模块 -->
    <jsp:include page="home_festival_module.jsp" />

    <!-- 动态包含：商家模块 -->
    <jsp:include page="home_vendor_module.jsp" />

<%-- 5. 引入页脚 (包含版权信息和 JS 引用) --%>
<%@ include file="includes/footer.jsp" %>
