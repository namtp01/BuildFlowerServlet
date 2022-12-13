package com.demo.servlets.login;

import com.demo.entity.Account;
import com.demo.models.AccountModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/login")

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        AccountModel accountModel = new AccountModel();
        Account account = accountModel.loginForAdmin(username,password);
        if (account == null) {
            request.setAttribute("mess", "Wrong username or password");
            request.getRequestDispatcher("WEB-INF/views/login/login.jsp").forward(request,response);
        } else {
            HttpSession session = request.getSession();
            session.setAttribute("acc", account);
            request.getRequestDispatcher("WEB-INF/views/home/index.jsp").forward(request,response);
        }
    }
}
