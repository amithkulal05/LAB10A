package com.registration;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

@WebServlet("/UserDataServlet")
public class UserDataServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Retrieve parameters
        String name = request.getParameter("username");
        String email = request.getParameter("email");
        String designation = request.getParameter("designation");

        // Server-side validation
        if (name == null || name.trim().isEmpty() || 
            email == null || !email.contains("@") || 
            designation == null || designation.trim().isEmpty()) {
            
            response.getWriter().println("Invalid Data. Please go back and try again.");
        } else {
            // Set attributes to pass to result.jsp
            request.setAttribute("uName", name);
            request.setAttribute("uEmail", email);
            request.setAttribute("uDesig", designation);
            
            // Forward to result.jsp
            RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
            rd.forward(request, response);
        }
    }
}
