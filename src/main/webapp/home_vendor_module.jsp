<!-- 1. 必须引入 Tailwind CDN（如果这个页面还用了其他的 Tailwind 原生类名） -->
    <script src="https://cdn.tailwindcss.com"></script>
    
    <!-- 2. 必须引入你的自定义样式表（也就是你写了 .btn-outline-orange 的地方） -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body class="bg-gray-50">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section id="vendors" class="bg-gray-100 py-20">
    <div class="container mx-auto px-6">
        <div class="text-center mb-16">
            <h3 class="text-4xl font-bold brand-font text-gray-800">Featured Vendors</h3>
            <div class="w-24 h-1 bg-orange-500 mx-auto mt-4"></div>
            <p class="mt-4 text-gray-600">Discover the masterminds behind the extraordinary tastes.</p>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-3 gap-10">
            <!-- Vendor 1 -->
            <div class="bg-white p-8 rounded-2xl shadow-md text-center hover:-translate-y-2 transition-all">
                <img src="assets/images/vendor/grill-master.webp" onerror="this.src='https://ui-avatars.com/api/?name=Grill+Master&background=f97316&color=fff&size=200'" class="w-24 h-24 rounded-full mx-auto mb-4 object-cover border-4 border-orange-100 shadow-sm" alt="The Grill Master">
                <h4 class="text-xl font-bold">The Grill Master</h4>
                <p class="text-orange-500 text-sm mb-4 font-semibold italic">BBQ & Smoked Meats</p>
                <p class="text-gray-500 text-sm mb-6">Bringing the authentic Texas smokehouse experience to your plate.</p>
                <a href="vendor.jsp" class="btn-outline-orange">Explore Menu</a>
            </div>

            <!-- Vendor 2 -->
            <div class="bg-white p-8 rounded-2xl shadow-md text-center hover:-translate-y-2 transition-all">
                <img src="https://images.unsplash.com/photo-1583394293214-28ded15ee548?w=200" class="w-24 h-24 rounded-full mx-auto mb-4 object-cover border-4 border-orange-100">
                <h4 class="text-xl font-bold">Sushi Zen</h4>
                <p class="text-orange-500 text-sm mb-4 font-semibold italic">Japanese Specialty</p>
                <p class="text-gray-500 text-sm mb-6">Fresh, handcrafted sushi made with premium grade-A ingredients.</p>
                <a href="vendor.jsp" class="btn-outline-orange">Explore Menu</a>
            </div>

            <!-- Vendor 3 -->
            <div class="bg-white p-8 rounded-2xl shadow-md text-center hover:-translate-y-2 transition-all">
                <img src="https://images.unsplash.com/photo-1556910103-1c02745aae4d?w=200" class="w-24 h-24 rounded-full mx-auto mb-4 object-cover border-4 border-orange-100">
                <h4 class="text-xl font-bold">Pasta Paradiso</h4>
                <p class="text-orange-500 text-sm mb-4 font-semibold italic">Italian Classics</p>
                <p class="text-gray-500 text-sm mb-6">Homemade pasta sauces following traditional family recipes.</p>
                <a href="vendor.jsp" class="btn-outline-orange">Explore Menu</a>
            </div>
        </div>
    </div>
</section>