<!-- 1. 必须引入 Tailwind CDN（如果这个页面还用了其他的 Tailwind 原生类名） -->
    <script src="https://cdn.tailwindcss.com"></script>
    
    <!-- 2. 必须引入你的自定义样式表（也就是你写了 .btn-outline-orange 的地方） -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>
<body class="bg-gray-50">

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section id="festivals" class="container mx-auto px-4 sm:px-6 lg:px-8 py-16 lg:py-24">

    <!-- Section Heading -->
    <div class="text-center mb-14">
        <h3 class="text-3xl sm:text-4xl lg:text-5xl font-bold brand-font text-gray-800">Upcoming Food Festivals</h3>
       
        <div class="w-24 h-1 bg-orange-500 mx-auto mt-4 rounded-full"></div>
        <p class="text-gray-500 mt-5 max-w-2xl mx-auto text-sm sm:text-base leading-relaxed">
            Discover Malaysia’s most exciting food festivals featuring street food,
            cultural experiences, seafood feasts, vegan delights, and vibrant night markets.
        </p>
    </div>

    <!-- Festival Cards -->
    <div class="grid grid-cols-1 sm:grid-cols-2 xl:grid-cols-4 gap-8">

        <!-- Festival Card 1 -->
        <div class="bg-white rounded-3xl shadow-md overflow-hidden group hover:shadow-2xl transition-all duration-500 hover:-translate-y-3 flex flex-col">
            <div class="relative h-56 overflow-hidden">

                <img
                    src="${pageContext.request.contextPath}/images/spice-route.png"
                    alt="Spice Route Express"
                    class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-700">

                <div class="absolute top-4 right-4 bg-orange-500 text-white text-xs font-semibold px-3 py-1 rounded-full shadow">
                    Asian Fusion
                </div>
            </div>

            <div class="p-6 flex flex-col flex-grow">

                <h4 class="text-2xl font-bold text-gray-800 mb-3">
                    Spice Route Express
                </h4>

                <p class="text-orange-500 text-sm font-medium mb-4">
                    July 12–14, 2026 • TRX City Park
                </p>

                <p class="text-gray-600 text-sm leading-relaxed flex-grow">
                    Explore Southeast Asian fusion flavors featuring laksa,
                    handrolled sushi, satay, dim sum, and vibrant cultural street food experiences.
                </p>

                <a href="details.jsp?id=1"
                   class="mt-6 block text-center border-2 border-orange-500 text-orange-500 font-semibold py-3 rounded-xl hover:bg-orange-500 hover:text-white transition-all duration-300">
                    View Details
                </a>
            </div>
        </div>

        <!-- Festival Card 2 -->
        <div class="bg-white rounded-3xl shadow-md overflow-hidden group hover:shadow-2xl transition-all duration-500 hover:-translate-y-3 flex flex-col">

            <div class="relative h-56 overflow-hidden">
                <img
                    src="${pageContext.request.contextPath}/images/vegan.png"
                    alt="Vegan Harvest Day"
                    class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-700">

                <div class="absolute top-4 right-4 bg-green-500 text-white text-xs font-semibold px-3 py-1 rounded-full shadow">
                    Healthy Eatery
                </div>
            </div>

            <div class="p-6 flex flex-col flex-grow">

                <h4 class="text-2xl font-bold text-gray-800 mb-3">
                    Vegan Harvest Day
                </h4>

                <p class="text-green-500 text-sm font-medium mb-4">
                    August 18, 2026 • The Waterfront, Desa Parkcity
                </p>

                <p class="text-gray-600 text-sm leading-relaxed flex-grow">
                    Enjoy fresh plant-based cuisine, organic treats,
                    healthy street bites, and eco-friendly experiences
                    at this vibrant wellness food festival.
                </p>

                <a href="details.jsp?id=2"
                   class="mt-6 block text-center border-2 border-orange-500 text-orange-500 font-semibold py-3 rounded-xl hover:bg-orange-500 hover:text-white transition-all duration-300">
                    View Details
                </a>

            </div>
        </div>

        <!-- Festival Card 3 -->
        <div class="bg-white rounded-3xl shadow-md overflow-hidden group hover:shadow-2xl transition-all duration-500 hover:-translate-y-3 flex flex-col">

            <div class="relative h-56 overflow-hidden">
                <img
                    src="${pageContext.request.contextPath}/images/midnight-street.png"
                    alt="Midnight Street Fiesta"
                    class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-700">

                <div class="absolute top-4 right-4 bg-amber-500 text-white text-xs font-semibold px-3 py-1 rounded-full shadow">
                    Street Food
                </div>
            </div>

            <div class="p-6 flex flex-col flex-grow">

                <h4 class="text-2xl font-bold text-gray-800 mb-3">
                    Midnight Street Fiesta
                </h4>

                <p class="text-amber-500 text-sm font-medium mb-4">
                    October 05, 2026 • Lalaport
                </p>

                <p class="text-gray-600 text-sm leading-relaxed flex-grow">
                    Experience sizzling BBQ, local snacks, bubble tea,
                    and live music under glowing night lights
                    inspired by modern Asian night markets.
                </p>

                <a href="details.jsp?id=3"
                   class="mt-6 block text-center border-2 border-orange-500 text-orange-500 font-semibold py-3 rounded-xl hover:bg-orange-500 hover:text-white transition-all duration-300">
                    View Details
                </a>
            </div>
        </div>

        <!-- Festival Card 4 -->
        <div class="bg-white rounded-3xl shadow-md overflow-hidden group hover:shadow-2xl transition-all duration-500 hover:-translate-y-3 flex flex-col">

            <div class="relative h-56 overflow-hidden">
                <img
                    src="${pageContext.request.contextPath}/images/seafood.png"
                    alt="Coastal Seafood Carnival"
                    class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-700">

                <div class="absolute top-4 right-4 bg-cyan-500 text-white text-xs font-semibold px-3 py-1 rounded-full shadow">
                    Seafood
                </div>
            </div>

            <div class="p-6 flex flex-col flex-grow">

                <h4 class="text-2xl font-bold text-gray-800 mb-3">
                    Coastal Seafood Carnival
                </h4>

                <p class="text-cyan-500 text-sm font-medium mb-4">
                    October 18–20, 2026 • Port Dickson Waterfront
                </p>

                <p class="text-gray-600 text-sm leading-relaxed flex-grow">
                    Fresh seafood, sunset beach vibes, live music,
                    and coastal BBQ experiences by the seaside
                    night market atmosphere.
                </p>

                <a href="details.jsp?id=4"
                   class="mt-6 block text-center border-2 border-orange-500 text-orange-500 font-semibold py-3 rounded-xl hover:bg-orange-500 hover:text-white transition-all duration-300">
                    View Details
                </a>
            </div>
        </div>

    </div>
</section>