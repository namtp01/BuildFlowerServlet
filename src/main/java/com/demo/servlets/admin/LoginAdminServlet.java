package com.demo.servlets.admin;

import com.demo.models.AccountModel;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginAdminServlet", value = "/admin/login")
public class LoginAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("../WEB-INF/views/admin/login/index.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("../WEB-INF/views/admin/login/index.jsp").forward(request,response);
        String username = request.getParameter("username").trim();
        String password = request.getParameter("password").trim();
        AccountModel accountModel = new AccountModel();
        if (accountModel.login(username, password, 1) != null) {
            HttpSession session = request.getSession();
            session.setAttribute("username_admin", username);
            response.sendRedirect("../admin/dashboard");
        } else {
            request.setAttribute("err", "Invalid");
            request.getRequestDispatcher("../WEB-INF/views/admin/login/index.jsp").forward(request,response);
        }
    }


}
