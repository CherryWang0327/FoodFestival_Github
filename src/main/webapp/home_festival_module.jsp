<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section id="festivals" class="container mx-auto px-6 py-20">
    <div class="text-center mb-16">
        <h3 class="text-4xl font-bold brand-font text-gray-800">Upcoming Food Festivals</h3>
        <div class="w-24 h-1 bg-orange-500 mx-auto mt-4"></div>
    </div>

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8">
        <!-- Festival Card 1 -->
        <div class="bg-white rounded-2xl shadow-lg overflow-hidden group hover:shadow-2xl transition-all">
            <div class="relative h-56 overflow-hidden">
                <img src="https://images.unsplash.com/photo-1512621776951-a57141f2eefd?w=500" class="w-full h-full object-cover group-hover:scale-110 transition-all duration-500">
                <div class="absolute top-4 right-4 bg-orange-500 text-white text-xs font-bold px-3 py-1 rounded-full">Asian Fusion</div>
            </div>
            <div class="p-6">
                <h4 class="text-xl font-bold mb-2">Spice Route Express</h4>
                <p class="text-gray-500 text-sm mb-4">Oct 12-14, 2026 | Central Park</p>
                <a href="details.jsp?id=1" class="block text-center border-2 border-orange-500 text-orange-500 font-bold py-2 rounded-lg hover:bg-orange-500 hover:text-white transition-all">View Details</a>
            </div>
        </div>

        <!-- Festival Card 2 -->
        <div class="bg-white rounded-2xl shadow-lg overflow-hidden group hover:shadow-2xl transition-all">
            <div class="relative h-56 overflow-hidden">
                <img src="https://images.unsplash.com/photo-1547592166-23ac45744acd?w=500" class="w-full h-full object-cover group-hover:scale-110 transition-all duration-500">
                <div class="absolute top-4 right-4 bg-green-500 text-white text-xs font-bold px-3 py-1 rounded-full">Healthy Eatery</div>
            </div>
            <div class="p-6">
                <h4 class="text-xl font-bold mb-2">Vegan Harvest Day</h4>
                <p class="text-gray-500 text-sm mb-4">Nov 05, 2026 | Green Garden</p>
                <a href="details.jsp?id=2" class="block text-center border-2 border-orange-500 text-orange-500 font-bold py-2 rounded-lg hover:bg-orange-500 hover:text-white transition-all">View Details</a>
            </div>
        </div>
    </div>
</section>