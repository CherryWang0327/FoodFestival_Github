<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="includes/header.jsp" %>
<%@ page import="java.util.UUID" %>

<%
    String bookingRef = "FF2026-" + UUID.randomUUID().toString().substring(0, 8).toUpperCase();
    String safeUserName  = (request.getAttribute("userName")    != null) ? (String)request.getAttribute("userName")    : "Guest";
    String safeUserEmail = (request.getAttribute("userEmail")   != null) ? (String)request.getAttribute("userEmail")   : "-";
    String safeFest      = (request.getAttribute("selectedFest")!= null) ? (String)request.getAttribute("selectedFest"): "-";
    String safeUserMsg   = (request.getAttribute("userMsg")     != null && !((String)request.getAttribute("userMsg")).isEmpty())
                           ? (String)request.getAttribute("userMsg") : "None";
%>

<main class="confirm-main-wrap">

    <!-- 成功头部提示 -->
    <section class="confirm-status-header confirm-fadein">
        <div class="status-icon-ring success-ring">
            <i class="fas fa-check-circle"></i>
        </div>
        <h2 class="confirm-main-title brand-font">You're Registered!</h2>
        <p class="confirm-main-subtitle">
            A confirmation has been noted for <span class="highlight-email"><%= safeUserEmail %></span>.<br>
            See you at the festival!
        </p>
    </section>

    <!-- 电子票券复合体容器 -->
    <div class="ticket-wrapper confirm-fadein" style="animation-delay: 0.15s">

        <!-- 票头 (Booking Reference) -->
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

        <!-- 票券虚线打孔与左右撕开缺口效果 -->
        <div class="ticket-tear-line-area">
            <div class="notch notch-left"></div>
            <div class="notch notch-right"></div>
            <div class="dashed-divider"></div>
        </div>

        <!-- 票身 (Registration Details) -->
        <div class="ticket-body">
            <h4 class="ticket-body-section-title">Registration Details</h4>

            <div class="ticket-info-list">
                
                <div class="ticket-info-item">
                    <div class="info-icon-box">
                        <i class="fas fa-user"></i>
                    </div>
                    <div>
                        <p class="info-label">Full Name</p>
                        <p class="info-value"><%= safeUserName %></p>
                    </div>
                </div>

                <div class="ticket-info-item">
                    <div class="info-icon-box">
                        <i class="fas fa-envelope"></i>
                    </div>
                    <div>
                        <p class="info-label">Email Address</p>
                        <p class="info-value"><%= safeUserEmail %></p>
                    </div>
                </div>

                <div class="ticket-info-item">
                    <div class="info-icon-box">
                        <i class="fas fa-calendar-alt"></i>
                    </div>
                    <div>
                        <p class="info-label">Selected Festival</p>
                        <p class="info-value"><%= safeFest %></p>
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

        <!-- 票尾 (返回按钮区域) -->
        <div class="ticket-footer">
            <a href="home.jsp" class="ticket-return-btn">
                <i class="fas fa-arrow-left"></i> Return to Homepage
            </a>
        </div>
    </div>

    <!-- 底部小字提示 -->
    <p class="confirm-bottom-tip confirm-fadein" style="animation-delay: 0.3s">
        <i class="fas fa-info-circle"></i>
        Please save your booking reference <strong class="dark-tip-num"><%= bookingRef %></strong>
        for future payment and entry inquiries.
    </p>

</main>

<%@ include file="includes/footer.jsp" %>