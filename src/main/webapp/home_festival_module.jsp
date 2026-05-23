<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section id="festivals" class="festival-section">

    <!-- 模块标题区域 -->
    <div class="section-heading">
        <h3 class="section-title brand-font">Upcoming Food Festivals</h3>
        <div class="heading-line"></div>
        <p class="section-subtitle">
            Discover Malaysia’s most exciting food festivals featuring street food,
            cultural experiences, seafood feasts, vegan delights, and vibrant night markets.
        </p>
    </div>

    <!-- 节日卡片网格容器 -->
    <div class="festival-grid">

        <!-- 节日卡片 1 -->
        <div class="festival-card">
            <div class="card-image-wrap">
                <img src="${pageContext.request.contextPath}/assets/images/event/spice-route.png" 
                     alt="Spice Route Express" 
                     class="card-img">
                <!-- 标签带有特定的业务修饰类名 -->
                <div class="card-badge badge-asian">Asian Fusion</div>
            </div>
            <div class="card-body">
                <h4 class="card-title">Spice Route Express</h4>
                <p class="card-date date-asian">July 12–14, 2026 • TRX City Park</p>
                <p class="card-text">
                    Explore Southeast Asian fusion flavors featuring laksa,
                    handrolled sushi, satay, dim sum, and vibrant cultural street food experiences.
                </p>
                <a href="details.jsp?id=1" class="btn-outline-orange">View Details</a>
            </div>
        </div>

        <!-- 节日卡片 2 -->
        <div class="festival-card">
            <div class="card-image-wrap">
                <img src="${pageContext.request.contextPath}/assets/images/event/vegan.png" 
                     alt="Vegan Harvest Day" 
                     class="card-img">
                <div class="card-badge badge-healthy">Healthy Eatery</div>
            </div>
            <div class="card-body">
                <h4 class="card-title">Vegan Harvest Day</h4>
                <p class="card-date date-healthy">August 18, 2026 • The Waterfront, Desa Parkcity</p>
                <p class="card-text">
                    Enjoy fresh plant-based cuisine, organic treats,
                    healthy street bites, and eco-friendly experiences
                    at this vibrant wellness food festival.
                </p>
                <a href="details.jsp?id=2" class="btn-outline-orange">View Details</a>
            </div>
        </div>

        <!-- 节日卡片 3 -->
        <div class="festival-card">
            <div class="card-image-wrap">
                <img src="${pageContext.request.contextPath}/assets/images/event/midnight-street.png" 
                     alt="Midnight Street Fiesta" 
                     class="card-img">
                <div class="card-badge badge-street">Street Food</div>
            </div>
            <div class="card-body">
                <h4 class="card-title">Midnight Street Fiesta</h4>
                <p class="card-date date-street">October 05, 2026 • Lalaport</p>
                <p class="card-text">
                    Experience sizzling BBQ, local snacks, bubble tea,
                    and live music under glowing night lights
                    inspired by modern Asian night markets.
                </p>
                <a href="details.jsp?id=3" class="btn-outline-orange">View Details</a>
            </div>
        </div>

        <!-- 节日卡片 4 -->
        <div class="festival-card">
            <div class="card-image-wrap">
                <img src="${pageContext.request.contextPath}/assets/images/event/seafood.png" 
                     alt="Coastal Seafood Carnival" 
                     class="card-img">
                <div class="card-badge badge-seafood">Seafood</div>
            </div>
            <div class="card-body">
                <h4 class="card-title">Coastal Seafood Carnival</h4>
                <p class="card-date date-seafood">October 18–20, 2026 • Port Dickson Waterfront</p>
                <p class="card-text">
                    Fresh seafood, sunset beach vibes, live music,
                    and coastal BBQ experiences by the seaside
                    night market atmosphere.
                </p>
                <a href="details.jsp?id=4" class="btn-outline-orange">View Details</a>
            </div>
        </div>

    </div>
</section>