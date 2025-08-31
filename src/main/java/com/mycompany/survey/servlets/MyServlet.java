package com.mycompany.survey.servlets;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/SubmitServlet")
public class MyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Lấy dữ liệu từ form
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String dob = request.getParameter("dob");
        String source = request.getParameter("source");

        // Checkbox
        String announcement1 = request.getParameter("announcement1");
        String announcement2 = request.getParameter("announcement2");

        // Select box
        String contactMethod = request.getParameter("contactMethod");

        // Gửi dữ liệu sang JSP
        request.setAttribute("firstName", firstName);
        request.setAttribute("lastName", lastName);
        request.setAttribute("email", email);
        request.setAttribute("dob", dob);
        request.setAttribute("source", source);
        request.setAttribute("announcement1", (announcement1 != null) ? "Yes" : "No");
        request.setAttribute("announcement2", (announcement2 != null) ? "Yes" : "No");
        request.setAttribute("contactMethod", contactMethod);

        // Forward sang trang hiển thị kết quả
        request.getRequestDispatcher("result.jsp").forward(request, response);
    }

    // Nếu người dùng truy cập trực tiếp bằng GET thì redirect về form
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("index.jsp");
    }
}


