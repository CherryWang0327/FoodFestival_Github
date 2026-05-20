<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Confirmed | FoodFest 2026</title>
    
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body class="bg-gray-50">
    <main class="min-h-screen">
        <section class="container mx-auto px-6 py-20 text-center">
            <div class="max-w-2xl mx-auto bg-white p-12 rounded-3xl shadow-xl">
                <div class="w-20 h-20 bg-green-100 text-green-500 rounded-full flex items-center justify-center mx-auto mb-6">
                    <i class="fas fa-check-circle text-5xl"></i>
                </div>
                
                <h2 class="text-3xl font-bold brand-font mb-4 text-gray-800">Registration Successful!</h2>
                <p class="text-gray-600 mb-8">Thank you for registering. We have received your information.</p>
                
                <div class="bg-gray-50 p-6 rounded-xl text-left mb-8 space-y-3">
				    <h4 class="font-bold border-b pb-2 mb-2 text-gray-700">Submitted Information (Server Side):</h4>
				    <p><span class="font-semibold text-orange-600">Name:</span> ${userName}</p>
				    <p><span class="font-semibold text-orange-600">Email:</span> ${userEmail}</p>
				    <p><span class="font-semibold text-orange-600">Preferred Event:</span> ${selectedFest}</p>
				    <p><span class="font-semibold text-orange-600">Message:</span> <span class="italic text-gray-500">"${userMsg}"</span></p>
				</div>

                <a href="home.jsp" class="inline-block text-orange-500 font-bold hover:underline">
                    <i class="fas fa-home mr-1"></i> Return to Homepage
                </a>
            </div> </section>
    </main>
</body>
</html>