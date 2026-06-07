<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
	// Retrieve the festival ID passed from the URL paramter
    String id = request.getParameter("id");

	// Declare variables to store festival information
    String title = "";
    String category = "";
    String image = "";
    String date = "";
    String time = "";
    String location = "";
    String description = "";
    String map = "";
    String tagColor = "";

    // Load festival details based on the selected festival ID
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

    <!-- 1. External library for Font Awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    <!-- 2. Import the main stylesheet for consistent website branding -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
</head>

<body class="site-body">

<%@ include file="includes/header.jsp" %>

<!-- Main content area -->
<main class="details-main-wrap">

    <!-- Navigation link to return to the homepage -->
    <a href="home.jsp" class="back-home-link">
        <i class="fas fa-arrow-left"></i>
        Back to Home
    </a>

    <!-- Festival details card container -->
    <section class="details-card">

        <!-- Festival image section -->
        <div class="details-img-area">
            <img src="${pageContext.request.contextPath}/assets/images/event/<%= image %>"
                 alt="<%= title %>"
                 class="details-hero-img">
        </div>

        <!-- Festival information section -->
        <div class="details-content-area">
            
            <!-- Dynamic category badge with color controlled by CSS -->
            <span class="details-badge" data-color="<%= tagColor %>">
                <%= category %>
            </span>

            <!-- Festival title -->
            <h2 class="details-title"><%= title %></h2>

            <!-- Festival date, time, and location information -->
            <div class="details-info-grid">
                <div class="info-tag-box tag-orange">
                    <i class="far fa-calendar-alt"></i>
                    <%= date %>
                </div>

                <div class="info-tag-box tag-purple">
                    <i class="far fa-clock"></i>
                    <%= time %>
                </div>

                <div class="info-tag-box tag-blue">
                    <i class="fas fa-map-marker-alt"></i>
                    <%= location %>
                </div>
            </div>

            <!-- Detailed festival description -->
            <p class="details-description"><%= description %></p>

            <!-- Embedded Google Map showing the festival location -->
            <div class="details-map-wrap">
				<iframe class="details-map-iframe"
				        src="<%= map %>"
				        id="festivalMap">
				</iframe>
				
				<script>
				    document.getElementById('festivalMap').setAttribute('loading', 'lazy');
				</script>
            </div>

            <!-- Call-to-action button for event registration -->
            <a href="event_registration.jsp" class="details-submit-btn">
                Register Your Interest
            </a>

        </div>

    </section>

</main>

<%@ include file="includes/footer.jsp" %>

</body>
</html>