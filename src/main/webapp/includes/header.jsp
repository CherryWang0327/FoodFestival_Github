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

    <nav class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4">

        <div class="flex flex-wrap items-center justify-between gap-4">

            <!-- Logo -->
            <a href="home.jsp" class="flex items-center space-x-2 flex-shrink-0">

                <i class="fas fa-utensils text-orange-500 text-2xl"></i>

                <h1 class="text-2xl md:text-3xl font-bold brand-font whitespace-nowrap">
                    Food<span class="text-orange-500">Fest</span> 2026
                </h1>

            </a>

            <!-- Navigation -->
            <ul class="flex flex-wrap items-center justify-center gap-4 md:gap-8 
                       font-medium uppercase text-sm tracking-wider">

                <li>
                    <a href="home.jsp"
                       class="hover:text-orange-500 transition-all duration-300">
                        Home
                    </a>
                </li>

                <li>
                    <a href="home.jsp#festivals"
                       class="hover:text-orange-500 transition-all duration-300">
                        Festivals
                    </a>
                </li>

                <li>
                    <a href="home.jsp#vendors"
                       class="hover:text-orange-500 transition-all duration-300">
                        Vendors
                    </a>
                </li>

                <li>
                    <a href="contact.jsp"
                       class="hover:text-orange-500 transition-all duration-300">
                        Contact
                    </a>
                </li>

                <li>
                    <a href="user_registration.jsp"
                       class="bg-orange-500 text-white px-5 py-2 rounded-lg
                              hover:bg-orange-600 transition-all duration-300
                              whitespace-nowrap">
                        Register/Login
                    </a>
                </li>

            </ul>

        </div>

    </nav>

</header>