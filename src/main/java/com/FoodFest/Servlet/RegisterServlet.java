package com.FoodFest.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // 1. Receive parameters passed from JSP
        String name = request.getParameter("fullName");
        String email = request.getParameter("email");
        String festival = request.getParameter("prefFestival");
        String message = request.getParameter("message");

        // 2. Pack the information into Request
        request.setAttribute("userName", name);
        request.setAttribute("userEmail", email);
        request.setAttribute("selectedFest", festival);
        request.setAttribute("userMsg", message);

        // 3. Send information to confirmation page
        request.getRequestDispatcher("confirmation.jsp").forward(request, response);
    }
}