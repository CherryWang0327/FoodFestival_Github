<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- 1. Include header section (navigation bar + main css styles) --%>
<%@ include file="includes/header.jsp" %>

	<%-- Hero section: main landing banner of the homepage --%>
    <section class="hero-section">
        <div class="hero-overlay"></div>
        
        <div class="hero-content">
            <h2 class="hero-title brand-font">A World of Flavors Awaits</h2>
            <p class="hero-subtitle">Join us for the most prestigious culinary tour of the year.</p>
            <a href="#festivals" class="hero-btn">Explore Festivals</a>
        </div>
    </section>

	<%-- 2. Include festival module section (display list of festivals on homepage) --%>
    <jsp:include page="home_festival_module.jsp" />

	<%-- 3. Include vendore module section (display features vendors) --%>
    <jsp:include page="home_vendor_module.jsp" />

<%-- 4. Include footer section (copyright information + JavaScript files) --%>
<%@ include file="includes/footer.jsp" %>






