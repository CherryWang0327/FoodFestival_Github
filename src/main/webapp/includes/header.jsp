<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FoodFest 2026</title>
    
    <!-- 1. 外部依赖 -->
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <!-- 2. 引入品牌样式表 -->
    <!-- 使用 contextPath 确保在所有 JSP 页面中都能准确找到 css 文件 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>

<body class="bg-gray-50">
<header class="bg-white shadow-md sticky top-0 z-50">

    <nav class="w-full px-6 py-4 flex justify-between items-center">
    <div class="flex items-center space-x-2">
        <i class="fas fa-utensils text-orange-500"></i>
        <h1 class="text-2xl font-bold brand-font">
            Food<span class="text-orange-500">Fest</span> 2026
        </h1>
    </div>

    <ul class="flex space-x-8 font-medium uppercase text-sm tracking-wider items-center">
        <li><a href="home.jsp" class="hover:text-orange-500 transition-all">Home</a></li>
        <li><a href="home.jsp#festivals" class="hover:text-orange-500 transition-all">Festivals</a></li>
        <li><a href="home.jsp#vendors" class="hover:text-orange-500 transition-all">Vendors</a></li>
        <li><a href="contact.jsp" class="hover:text-orange-500 transition-all">Contact</a></li>
        <li><a href="user_registration.jsp" class="bg-orange-500 text-white px-4 py-2 rounded-md hover:bg-orange-600 transition-all">Register/Login</a></li>
    </ul>
    </nav>

</header>