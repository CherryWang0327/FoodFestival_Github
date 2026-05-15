<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Register | FoodFest 2026</title>
    
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">

    <script src="${pageContext.request.contextPath}/js/validation.js" defer></script>
</head>
<body class="bg-gray-50">

    <header class="bg-white shadow-md sticky top-0 z-50">
        <nav class="container mx-auto px-6 py-4 flex justify-between items-center">
            <div class="flex items-center space-x-2">
                <i class="fas fa-utensils text-3xl text-orange-500"></i>
                <h1 class="text-2xl font-bold brand-font">Food<span class="text-orange-500">Fest</span> 2026</h1>
            </div>
            <ul class="flex space-x-8 font-medium uppercase text-sm">
                <li><a href="index.jsp" class="hover:text-orange-500">Home</a></li>
                <li><a href="event_registration.jsp" class="text-orange-500 border-b-2 border-orange-500">Register</a></li>
            </ul>
        </nav>
    </header>

    <main class="container mx-auto px-6 py-16">
        <div class="max-w-4xl mx-auto bg-white rounded-3xl shadow-2xl overflow-hidden flex flex-col md:flex-row">
            <div class="md:w-1/3 bg-orange-500 p-10 text-white flex flex-col justify-center">
                <h3 class="text-3xl font-bold mb-6">Join the Feast</h3>
                <p class="mb-8 opacity-90">Register now to get exclusive updates and early bird tickets for FoodFest 2026.</p>
                <div class="space-y-4 text-sm">
                    <p><i class="fas fa-check-circle mr-2"></i> Free Entry for Kids</p>
                    <p><i class="fas fa-check-circle mr-2"></i> 50+ Global Vendors</p>
                    <p><i class="fas fa-check-circle mr-2"></i> Live Masterclasses</p>
                </div>
            </div>

            <div class="md:w-2/3 p-10">
                <h2 class="text-2xl font-bold mb-6">Visitor Registration</h2>
                <form id="regForm" action="RegisterServlet" method="POST" onsubmit="return validateForm()">
                    <div class="mb-4">
                        <label class="block text-sm font-bold mb-2">Full Name</label>
                        <input type="text" id="fullName" name="fullName" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 outline-none" placeholder="Enter your name">
                    </div>
                    <div class="mb-4">
                        <label class="block text-sm font-bold mb-2">Email Address</label>
                        <input type="email" id="email" name="email" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 outline-none" placeholder="your@email.com">
                    </div>
                    <div class="mb-4">
                        <label class="block text-sm font-bold mb-2">Preferred Festival</label>
                        <select id="prefFestival" name="prefFestival" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 outline-none">
                            <option value="">-- Choose an Event --</option>
                            <option value="Spice Route Express">Spice Route Express</option>
                            <option value="Vegan Harvest Day">Vegan Harvest Day</option>
                            <option value="Sweet Tooth Carnival">Sweet Tooth Carnival</option>
                            <option value="Smoke & Sizzle BBQ">Smoke & Sizzle BBQ</option>
                        </select>
                    </div>
                    <div class="mb-6">
                        <label class="block text-sm font-bold mb-2">Message / Special Requests</label>
                        <textarea id="message" name="message" rows="3" class="w-full px-4 py-2 border rounded-lg focus:ring-2 focus:ring-orange-500 outline-none" placeholder="Any dietary requirements?"></textarea>
                    </div>
                    <button type="submit" class="w-full bg-orange-500 hover:bg-orange-600 text-white font-bold py-3 rounded-xl transition-all shadow-lg">Submit Registration</button>
                </form>
            </div>
        </div>
    </main>

    <footer class="bg-gray-900 text-white py-8 text-center mt-10">
        <p>© Team 6, 2026. All Rights Reserved.</p>
    </footer>
</body>
</html>