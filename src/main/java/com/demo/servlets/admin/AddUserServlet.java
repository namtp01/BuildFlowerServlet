package com.demo.servlets.admin;

import com.demo.entities.AccountEntity;
import com.demo.models.AccountModel;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "AddUserServlet", value = "/admin/add_user")
public class AddUserServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext sc = getServletContext();
        String url = "/WEB-INF/views/admin/admin-user/add_form_user.jsp";

        sc.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("submit-user");

        if (action.equals("clicked")) {
            String username = request.getParameter("inputUsername");
            String password = request.getParameter("inputPassword");
            String role = request.getParameter("inputRole");

            if (!username.equals("") && !password.equals("") && !role.equals("")) {
                AccountModel.insertAccount(username, password, role);
                response.sendRedirect(request.getContextPath() + "/admin/user");
            } else {
                response.sendRedirect(request.getContextPath() + "/admin/add_user");
            }
        }


    }
}