<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FoodFest 2026</title>

    <%-- Font Awesome icons library --%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <%-- Global, structure, and theme stylesheets --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/base.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/layout.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/components.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/pages.css">
    
    <%-- Mobile responsive layout adjustments --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/responsive.css">
</head>

<body class="site-body">
<%-- Top navigation header --%>
<header class="site-header">

    <nav class="nav-container">
        <%-- Website identity and logo --%>
        <div class="logo-area">
            <i class="fas fa-utensils brand-icon"></i>
            <h1 class="brand-title brand-font">
                Food<span class="text-orange">Fest</span> 2026
            </h1>
        </div>

        <%-- Main navigation links --%>
        <ul class="nav-links">
            <li><a href="home.jsp" class="nav-item">Home</a></li>
            <li><a href="home.jsp#festivals" class="nav-item">Festivals</a></li>
            <li><a href="home.jsp#vendors" class="nav-item">Vendors</a></li>
            <li><a href="contact.jsp" class="nav-item">Contact</a></li>
            
            <%-- Gateway for sign up and sign in --%>
            <li><a href="user_registration.jsp" class="nav-btn">Register/Login</a></li>
        </ul>
    </nav>
</header>