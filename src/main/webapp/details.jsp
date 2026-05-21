<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String id = request.getParameter("id");

    String title = "";
    String category = "";
    String image = "";
    String date = "";
    String time = "";
    String location = "";
    String description = "";
    String map = "";
    String tagColor = "";

    if ("1".equals(id)) {

        title = "Spice Route Express";
        category = "Asian Fusion Festival";
        image = "spice-route.png";
        date = "July 12–14, 2026";
        time = "4:00 PM – 11:00 PM";
        location = "TRX City Park";

        description = "Spice Route Express brings together Southeast Asia’s most iconic flavors in one lively culinary festival, featuring rich laksa, freshly handrolled sushi, sizzling satay, dim sum, fusion street bites, cultural performances, and immersive night market vibes inspired by modern city food fairs.";

        map = "https://www.google.com/maps?q=TRX%20Kuala%20Lumpur&output=embed";

        tagColor = "orange";

    } else if ("2".equals(id)) {

        title = "Vegan Harvest Day";
        category = "Plant-Based Festival";
        image = "vegan.png";
        date = "August 18, 2026";
        time = "10:00 AM – 9:00 PM";
        location = "The Waterfront, Desa Parkcity";

        description = "Vegan Harvest Day celebrates wholesome living with colorful plant-based dishes, organic desserts, fresh juices, artisan vendors, and relaxing outdoor market vibes. Discover creative vegan street food, sustainable dining experiences, and community-focused activities in a refreshing festival atmosphere inspired by modern urban eco markets.";

        map = "https://www.google.com/maps?q=The+Waterfront+@+ParkCity&output=embed";

        tagColor = "green";

    } else if ("3".equals(id)) {

        title = "Midnight Street Fiesta";
        category = "Night Market Festival";
        image = "midnight-street.png";
        date = "October 05, 2026";
        time = "6:00 PM – 2:00 AM";
        location = "Lantern Street";

        description = "Midnight Street Fiesta transforms the night into a lively street food celebration filled with grilled satay, local snacks, bubble tea stalls, live acoustic performances, glowing lanterns, and energetic market vibes inspired by Malaysia’s bustling late-night food scenes and modern urban festivals.";

        map = "https://www.google.com/maps?q=LaLaport+BBCC+Kuala+Lumpur&output=embed";

        tagColor = "amber";

    } else {

        title = "Coastal Seafood Carnival";
        category = "Beachside Seafood Festival";
        image = "seafood.png";
        date = "October 18–20, 2026";
        time = "4:00 PM – Midnight";
        location = "Port Dickson Waterfront";

        description = "Coastal Seafood Carnival delivers the perfect seaside escape with freshly grilled seafood, tropical beverages, sunset beach dining, live entertainment, and vibrant open-air market experiences. Enjoy prawns, shellfish, seafood platters, and oceanfront festival vibes inspired by Malaysia’s popular coastal night events.";

        map = "https://www.google.com/maps?q=Port%20Dickson&output=embed";

        tagColor = "cyan";
    }
%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title><%= title %> | FoodFest 2026</title>

    <script src="https://cdn.tailwindcss.com"></script>

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

</head>

<body class="bg-gray-50">

<%@ include file="includes/header.jsp" %>

<!-- MAIN -->

<main class="max-w-7xl mx-auto px-4 md:px-6 py-8 md:py-12">

    <!-- Back Button -->

    <a href="home.jsp"
       class="inline-flex items-center mb-10 text-orange-500 hover:text-orange-600 font-bold">

        <i class="fas fa-arrow-left mr-2"></i>

        Back to Home

    </a>

    <!-- EVENT SECTION -->

    <section class="bg-white rounded-3xl shadow-xl overflow-hidden flex flex-col lg:flex-row">

        <!-- IMAGE -->

        <div class="lg:w-1/2">

            <img
                src="${pageContext.request.contextPath}/images/<%= image %>"
                alt="<%= title %>"
                class="w-full h-64 md:h-96 lg:h-full object-cover"
            >

        </div>

        <!-- CONTENT -->

        <div class="lg:w-1/2 p-6 md:p-8 lg:p-12">

            <!-- CATEGORY -->

            <span class="text-<%= tagColor %>-500 font-bold uppercase tracking-widest text-sm">

                <%= category %>

            </span>

            <!-- TITLE -->

            <h2 class="text-3xl md:text-4xl lg:text-5xl font-bold my-6 text-gray-800 leading-tight">

                <%= title %>

            </h2>

            <!-- INFO -->

            <div class="flex flex-wrap gap-4 mb-8">

                <div class="bg-orange-50 px-4 py-3 rounded-xl text-orange-600 font-medium">

                    <i class="far fa-calendar-alt mr-2"></i>

                    <%= date %>

                </div>

                <div class="bg-purple-50 px-4 py-3 rounded-xl text-purple-600 font-medium">

                    <i class="far fa-clock mr-2"></i>

                    <%= time %>

                </div>

                <div class="bg-blue-50 px-4 py-3 rounded-xl text-blue-600 font-medium">

                    <i class="fas fa-map-marker-alt mr-2"></i>

                    <%= location %>

                </div>

            </div>

            <!-- DESCRIPTION -->

            <p class="text-gray-600 leading-relaxed text-base md:text-lg mb-8">

                <%= description %>

            </p>

            <!-- MAP -->

            <div class="mb-8">

                <iframe
                    class="w-full h-64 rounded-2xl"
                    src="<%= map %>"
                    loading="lazy">
                </iframe>

            </div>

            <!-- BUTTON -->

            <a href="event_registration.jsp"
               class="inline-block bg-gray-900 text-white px-8 py-4 rounded-full font-bold hover:bg-orange-500 transition-all duration-300 hover:scale-105">

                Register Your Interest

            </a>

        </div>

    </section>

</main>

<%-- 5. 引入页脚 (包含版权信息和 JS 引用) --%>
<%@ include file="includes/footer.jsp" %>


</body>
</html>