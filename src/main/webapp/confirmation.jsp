<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="includes/header.jsp" %>
<%@ page import="java.util.UUID" %>

<%
    // 1. Generate an 8-character unique booking reference number.
    String bookingRef = "FF2026-" + java.util.UUID.randomUUID().toString().substring(0, 8).toUpperCase();
    
    // 2. Fallback for optional fields.
    String safeUserMsg = (request.getAttribute("userMsg") != null && !((String)request.getAttribute("userMsg")).isEmpty())
                           ? (String)request.getAttribute("userMsg") : "None";
%>

<main class="confirm-main-wrap">

    <section class="confirm-status-header confirm-fadein">
        <div class="status-icon-ring success-ring">
            <i class="fas fa-check-circle"></i>
        </div>
        <h2 class="confirm-main-title brand-font">You're Registered!</h2>
        <p class="confirm-main-subtitle">
            A confirmation has been noted for <span class="highlight-email">${userEmail}</span>.<br>
            See you at the festival!
        </p>
    </section>

    <div class="ticket-wrapper confirm-fadein" style="animation-delay: 0.15s">

        <div class="ticket-header">
            <div>
                <p class="ticket-label-light">Booking Reference</p>
                <p class="ticket-ref-num"><%= bookingRef %></p>
            </div>
            <div class="ticket-header-right">
                <p><i class="fas fa-utensils"></i> FoodFest 2026</p>
                <p class="ticket-subtext-light">Keep this for your records</p>
            </div>
        </div>

        <div class="ticket-tear-line-area">
            <div class="notch notch-left"></div>
            <div class="notch notch-right"></div>
            <div class="dashed-divider"></div>
        </div>

        <div class="ticket-body">
            <h4 class="ticket-body-section-title">Registration Details</h4>

            <div class="ticket-info-list">
                
                <div class="ticket-info-item">
                    <div class="info-icon-box">
                        <i class="fas fa-user"></i>
                    </div>
                    <div>
                        <p class="info-label">Full Name</p>
                        <p class="info-value">${userName}</p>
                    </div>
                </div>

                <div class="ticket-info-item">
                    <div class="info-icon-box">
                        <i class="fas fa-envelope"></i>
                    </div>
                    <div>
                        <p class="info-label">Email Address</p>
                        <p class="info-value">${userEmail}</p>
                    </div>
                </div>

                <div class="ticket-info-item">
                    <div class="info-icon-box">
                        <i class="fas fa-calendar-alt"></i>
                    </div>
                    <div>
                        <p class="info-label">Selected Festival</p>
                        <p class="info-value">${selectedFest}</p>
                    </div>
                </div>

                <div class="ticket-info-item">
                    <div class="info-icon-box">
                        <i class="fas fa-comment-dots"></i>
                    </div>
                    <div>
                        <p class="info-label">Special Requests</p>
                        <p class="info-value-text italic-text"><%= safeUserMsg %></p>
                    </div>
                </div>
                
            </div>
        </div>

        <div class="ticket-footer">
            <a href="home.jsp" class="ticket-return-btn">
                <i class="fas fa-arrow-left"></i> Return to Homepage
            </a>
        </div>
    </div>

    <p class="confirm-bottom-tip confirm-fadein" style="animation-delay: 0.3s">
        <i class="fas fa-info-circle"></i>
        Please save your booking reference <strong class="dark-tip-num"><%= bookingRef %></strong>
        for future payment and entry inquiries.
    </p>

</main>

<%@ include file="includes/footer.jsp" %>