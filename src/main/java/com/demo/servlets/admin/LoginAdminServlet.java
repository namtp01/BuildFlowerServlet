package com.demo.servlets.admin;

import com.demo.entities.AccountEntity;
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
        String action = request.getParameter("action");
        if (action == null) {
            request.getRequestDispatcher("../WEB-INF/views/admin/login/index.jsp").forward(request, response);
        } else {
            if (action.equalsIgnoreCase("logout")) {
                doGet_Logout(request, response);
            } else if (action.equalsIgnoreCase("profile")) {
                doGet_Profile(request, response);
            }
        }
    }

    protected void doGet_Profile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String username = session.getAttribute("username_admin").toString();
        AccountModel accountModel = new AccountModel();
        request.setAttribute("account", accountModel.find(username));
        request.getRequestDispatcher("../WEB-INF/views/admin/login/profile.jsp").forward(request,response);
    }

    protected void doGet_Logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        session.removeAttribute("username_admin");
        response.sendRedirect("../admin/dashboard");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("login")) {
            doPost_Login(request,response);
        } else if (action.equalsIgnoreCase("profile")) {
            doPost_Profile(request, response);
        }
    }

    protected void doPost_Profile (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AccountModel accountModel = new AccountModel();
        String username = request.getParameter("username");
        AccountEntity accountEntity = accountModel.find(username);
        if (!request.getParameter("password").trim().isEmpty()) {
            accountEntity.setPassword(BCrypt.hashpw(request.getParameter("password").trim(), BCrypt.gensalt()));
        }
        accountEntity.setAddress(request.getParameter("address").trim());
        accountEntity.setEmail(request.getParameter("email").trim());
        accountEntity.setFullName(request.getParameter("fullName").trim());
        accountEntity.setPhone(request.getParameter("phone").trim());
        accountModel.update(accountEntity);
        response.sendRedirect("../admin/login?action=profile");
    }

    protected void doPost_Login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
