package com.FoodFest.Servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/UserLoginServlet")
public class UserLoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. receive sheet data
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // 2. store data into Request
        request.setAttribute("userEmail", email);

        // 3. jump to main page (Login successful)
        request.getRequestDispatcher("home.jsp").forward(request, response);
    }
}