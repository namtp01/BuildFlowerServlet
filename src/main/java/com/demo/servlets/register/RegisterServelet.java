package com.demo.servlets.register;

import com.demo.entity.Account;
import com.demo.models.AccountModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "RegisterServelet", value = "/register")

public class RegisterServelet  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("su_username");
        String password = request.getParameter("su_password");
        String repassword = request.getParameter("su_repassword");
        if (!password.equals(repassword)) {
            response.sendRedirect("WEB-INF/views/login/login.jsp");
        } else {
            AccountModel accountModel = new AccountModel();
            Account account = accountModel.checkAccountExist(username);
            if (account == null) {
                accountModel.signup(username, password);
                response.sendRedirect("WEB-INF/views/home/index.jsp");
            } else {
                response.sendRedirect("WEB-INF/views/login/login.jsp");
            }
        }
    }
}
