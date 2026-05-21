<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="includes/header.jsp" %>

<%
    String bookingRef = "FF2026-" + String.valueOf(System.currentTimeMillis()).substring(7);
    String safeUserName  = (request.getAttribute("userName")    != null) ? (String)request.getAttribute("userName")    : "Guest";
    String safeUserEmail = (request.getAttribute("userEmail")   != null) ? (String)request.getAttribute("userEmail")   : "-";
    String safeFest      = (request.getAttribute("selectedFest")!= null) ? (String)request.getAttribute("selectedFest"): "-";
    String safeUserMsg   = (request.getAttribute("userMsg")     != null && !((String)request.getAttribute("userMsg")).isEmpty())
                           ? (String)request.getAttribute("userMsg") : "None";
%>

<main class="min-h-screen py-16 px-4">

    <section class="max-w-2xl mx-auto text-center mb-10 confirmation-fadein">
        <div class="inline-flex items-center justify-center w-24 h-24 rounded-full bg-green-100 mb-6 success-ring">
            <i class="fas fa-check-circle text-green-500 text-5xl"></i>
        </div>
        <h2 class="text-4xl font-bold brand-font text-gray-800 mb-3">You're Registered!</h2>
        <p class="text-gray-500 text-lg">
            A confirmation has been noted for <span class="font-semibold text-orange-500"><%= safeUserEmail %></span>.
            See you at the festival!
        </p>
    </section>

    <div class="max-w-2xl mx-auto confirmation-fadein" style="animation-delay:0.15s">

        <div class="bg-orange-500 text-white rounded-t-2xl px-8 py-5 flex items-center justify-between">
            <div>
                <p class="text-xs font-semibold uppercase tracking-widest opacity-80">Booking Reference</p>
                <p class="text-2xl font-bold tracking-wider"><%= bookingRef %></p>
            </div>
            <div class="text-right opacity-80 text-sm">
                <p><i class="fas fa-utensils mr-1"></i> FoodFest 2026</p>
                <p class="text-xs mt-1">Keep this for your records</p>
            </div>
        </div>

        <div class="relative bg-white border-x border-dashed border-orange-300">
            <div class="absolute -left-4 top-1/2 -translate-y-1/2 w-8 h-8 rounded-full bg-gray-50 border border-orange-200"></div>
            <div class="absolute -right-4 top-1/2 -translate-y-1/2 w-8 h-8 rounded-full bg-gray-50 border border-orange-200"></div>
            <div class="border-t-2 border-dashed border-orange-200 mx-4"></div>
        </div>

        <div class="bg-white border-x border-orange-200 px-8 py-8">
            <h4 class="text-xs font-bold uppercase tracking-widest text-gray-400 mb-5">Registration Details</h4>

            <div class="space-y-5">
                <div class="flex items-start gap-4">
                    <div class="w-9 h-9 rounded-full bg-orange-50 flex items-center justify-center flex-shrink-0 mt-0.5">
                        <i class="fas fa-user text-orange-500 text-sm"></i>
                    </div>
                    <div>
                        <p class="text-xs text-gray-400 font-medium uppercase tracking-wide">Full Name</p>
                        <p class="text-gray-800 font-semibold text-base"><%= safeUserName %></p>
                    </div>
                </div>

                <div class="flex items-start gap-4">
                    <div class="w-9 h-9 rounded-full bg-orange-50 flex items-center justify-center flex-shrink-0 mt-0.5">
                        <i class="fas fa-envelope text-orange-500 text-sm"></i>
                    </div>
                    <div>
                        <p class="text-xs text-gray-400 font-medium uppercase tracking-wide">Email Address</p>
                        <p class="text-gray-800 font-semibold text-base"><%= safeUserEmail %></p>
                    </div>
                </div>

                <div class="flex items-start gap-4">
                    <div class="w-9 h-9 rounded-full bg-orange-50 flex items-center justify-center flex-shrink-0 mt-0.5">
                        <i class="fas fa-calendar-alt text-orange-500 text-sm"></i>
                    </div>
                    <div>
                        <p class="text-xs text-gray-400 font-medium uppercase tracking-wide">Selected Festival</p>
                        <p class="text-gray-800 font-semibold text-base"><%= safeFest %></p>
                    </div>
                </div>

                <div class="flex items-start gap-4">
                    <div class="w-9 h-9 rounded-full bg-orange-50 flex items-center justify-center flex-shrink-0 mt-0.5">
                        <i class="fas fa-comment-dots text-orange-500 text-sm"></i>
                    </div>
                    <div>
                        <p class="text-xs text-gray-400 font-medium uppercase tracking-wide">Special Requests</p>
                        <p class="text-gray-600 italic text-sm leading-relaxed"><%= safeUserMsg %></p>
                    </div>
                </div>
            </div>
        </div>

        <div class="bg-gray-50 border border-t-0 border-orange-200 rounded-b-2xl px-8 py-6 flex flex-col sm:flex-row items-center justify-between gap-4">
            <a href="payment.jsp"
               class="w-full sm:w-auto bg-orange-500 hover:bg-orange-600 text-white font-bold py-3 px-8 rounded-xl transition-all shadow-md text-center">
                <i class="fas fa-credit-card mr-2"></i>Proceed to Payment
            </a>
            <a href="home.jsp"
               class="w-full sm:w-auto text-center text-gray-500 hover:text-orange-500 font-medium text-sm transition-all">
                <i class="fas fa-arrow-left mr-1"></i> Return to Homepage
            </a>
        </div>
    </div>

    <p class="text-center text-xs text-gray-400 mt-8 confirmation-fadein" style="animation-delay:0.3s">
        <i class="fas fa-info-circle mr-1"></i>
        Please save your booking reference <strong class="text-gray-600"><%= bookingRef %></strong>
        for future payment and entry inquiries.
    </p>

</main>

<style>
    @keyframes fadeInUp {
        from { opacity: 0; transform: translateY(24px); }
        to   { opacity: 1; transform: translateY(0); }
    }
    @keyframes ringPulse {
        0%, 100% { box-shadow: 0 0 0 0 rgba(34,197,94,0.4); }
        50%       { box-shadow: 0 0 0 16px rgba(34,197,94,0); }
    }
    .confirmation-fadein {
        opacity: 0;
        animation: fadeInUp 0.5s ease forwards;
    }
    .success-ring {
        animation: ringPulse 1.8s ease-in-out 0.4s 3;
    }
</style>

<%@ include file="includes/footer.jsp" %>