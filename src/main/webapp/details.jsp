<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Festival Details | FoodFest 2026</title>
    
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body class="bg-gray-50">

    <header class="bg-white shadow-md">
        <nav class="container mx-auto px-6 py-4 flex justify-between items-center">
            <div class="flex items-center space-x-2">
                <i class="fas fa-utensils text-3xl text-orange-500"></i>
                <h1 class="text-2xl font-bold brand-font">Food<span class="text-orange-500">Fest</span> 2026</h1>
            </div>
            <ul class="flex space-x-8 font-medium uppercase text-sm">
                <li><a href="index.jsp" class="hover:text-orange-500">Home</a></li>
                <li><a href="event_registration.jsp" class="hover:text-orange-500">Contact</a></li>
            </ul>
        </nav>
    </header>

    <main class="container mx-auto px-6 py-12">
        <a href="index.jsp" class="mb-6 text-orange-500 hover:underline flex items-center font-bold">
            <i class="fas fa-arrow-left mr-2"></i> Back to Home
        </a>

        <div class="bg-white rounded-3xl shadow-2xl overflow-hidden flex flex-col lg:flex-row">
            <div class="lg:w-1/2">
                <img src="https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=800" class="w-full h-full object-cover min-h-[400px]">
            </div>
            
            <div class="lg:w-1/2 p-10 lg:p-16">
                <span class="text-orange-500 font-bold tracking-widest uppercase text-sm">Asian Fusion Night</span>
                <h2 class="text-5xl font-bold brand-font my-6 text-gray-800">Spice Route Express</h2>
                
                <div class="flex flex-wrap gap-4 mb-8">
                    <div class="bg-orange-50 px-4 py-2 rounded-lg text-orange-600 font-medium">
                        <i class="far fa-calendar-alt mr-2"></i> Oct 12-14, 2026
                    </div>
                    <div class="bg-blue-50 px-4 py-2 rounded-lg text-blue-600 font-medium">
                        <i class="fas fa-map-marker-alt mr-2"></i> Central Park Plaza
                    </div>
                </div>

                <p class="text-gray-600 leading-relaxed mb-10 text-lg">
                    Experience the bold and vibrant flavors of South-East Asia. This festival brings together over 50 unique street food stalls, featuring everything from spicy laksa to hand-rolled sushi. [cite: 35, 49]
                </p>

                <div class="border-t border-gray-100 pt-8">
                    <a href="event_registration.jsp" class="inline-block bg-gray-900 text-white px-10 py-4 rounded-full font-bold hover:bg-orange-500 transition-all transform hover:scale-105">
                        Register Your Interest
                    </a>
                </div>
            </div>
        </div>
    </main>

    <footer class="bg-gray-900 text-white py-10 text-center mt-20">
        <p>© Team XYZ, 2026. All Rights Reserved. [cite: 42]</p>
    </footer>

</body>
</html>>