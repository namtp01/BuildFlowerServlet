package com.demo.servlets.admin;

import com.demo.entities.AccountEntity;
import com.demo.models.AccountModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginAdminServlet", value = "/admin/login")
public class LoginAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext sc = getServletContext();
        String url = "/WEB-INF/views/admin/login/login.jsp";
        sc.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("login");
        HttpSession session = request.getSession();
        String message;

        if (action.equals("Login")) {
            String username = request.getParameter("loginUsername");
            String password = request.getParameter("loginPassword");

            if(!username.equals("") && !password.equals("")) {
                Boolean validated = AccountModel.loginAccount(username, password);
                if(validated) {
                    message = "Hello " + username;
                    session.setAttribute("message" , message);
                    response.sendRedirect(request.getContextPath() + "/admin/dashboard");
                } else {
                    response.sendRedirect(request.getContextPath() + "/admin/login");
                }
            }
        }
    }
}
