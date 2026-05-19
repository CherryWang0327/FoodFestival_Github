<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // 获取 URL 参数 category，默认为 asian
    String category = request.getParameter("category");
    if (category == null || category.isEmpty()) {
        category = "grill";
    }
    
    // 设置页面标题和描述
    String title = "Featured Menu";
    String desc = "Discover the signature dishes you can't miss at Spice Route Express.";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><%= category.substring(0,1).toUpperCase() + category.substring(1) %> Menu | FoodFest 2026</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body class="bg-gray-50">

    <header class="bg-white shadow-md">
        <nav class="container mx-auto px-6 py-4 flex justify-between items-center">
            <div class="flex items-center space-x-2">
                <i class="fas fa-utensils text-3xl text-orange-500"></i>
                <h1 class="text-2xl font-bold">Food<span class="text-orange-500">Fest</span> 2026</h1>
            </div>
            <ul class="flex space-x-8 font-medium uppercase text-sm">
                <li><a href="index.jsp" class="hover:text-orange-500">Home</a></li>
                <li><a href="menus.jsp?category=grill" class="<%= "grill".equals(category) ? "text-orange-500 border-b-2 border-orange-500" : "hover:text-orange-500" %>">Grill</a></li>
                <li><a href="menus.jsp?category=sushi" class="<%= "sushi".equals(category) ? "text-orange-500 border-b-2 border-orange-500" : "hover:text-orange-500" %>">Sushi</a></li>
                <li><a href="event_registration.jsp" class="hover:text-orange-500">Contact</a></li>
            </ul>
        </nav>
    </header>

    <main class="container mx-auto px-6 py-12">
        <div class="text-center mb-16">
            <h2 class="text-4xl font-bold text-gray-800 mb-4 capitalize"><%= category %> Menu</h2>
            <p class="text-gray-600">Hand-picked selection for our <%= category %> specialty showcase.</p>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
            <% 
                // 根据 category 渲染不同的内容逻辑
                if ("grill".equals(category)) { 
            %>
                <!-- Asian Items -->
                <div class="bg-white rounded-2xl shadow-lg overflow-hidden hover:shadow-xl transition-shadow">
                    <img src="https://images.unsplash.com/photo-1563241522-30d8d0856012?w=600" class="w-full h-56 object-cover">
                    <div class="p-6">
                        <h3 class="text-xl font-bold text-gray-800">Spicy Laksa</h3>
                        <p class="text-gray-600 text-sm mt-2">Traditional coconut curry noodle soup.</p>
                    </div>
                </div>
                <!-- 可以继续添加更多 Asian 卡片 -->
            <% } else if ("sushi".equals(category)) { %>
                <!-- sushi Items -->
                <div class="bg-white rounded-2xl shadow-lg overflow-hidden hover:shadow-xl transition-shadow">
                    <img src="https://images.unsplash.com/photo-1550317138-10000687a72b?w=600" class="w-full h-56 object-cover">
                    <div class="p-6">
                        <h3 class="text-xl font-bold text-gray-800">Classic Wagyu Burger</h3>
                        <p class="text-gray-600 text-sm mt-2">Premium beef patty with artisan cheese.</p>
                    </div>
                </div>
            <% } else { %>
                <p class="col-span-3 text-center text-gray-500">No menu items found for this category.</p>
            <% } %>
        </div>
    </main>

    <footer class="bg-gray-900 text-white py-10 text-center mt-20">
        <p>© Team XYZ, 2026. All Rights Reserved.</p>
    </footer>
</body>
</html>