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

@WebServlet(name = "EditUserServlet", value = "/admin/edit_user")
public class EditUserServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletContext sc = getServletContext();
        String url = "/WEB-INF/views/admin/admin-user/edit_form_user.jsp";

        int id = Integer.parseInt(request.getParameter("id"));

        AccountEntity account = AccountModel.findAccount(id);
        request.setAttribute("user", account);
        sc.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("save-user");

        if (action.equals("saved")) {
            int id = Integer.parseInt(request.getParameter("id"));
            String username = request.getParameter("editUsername");
            String password = request.getParameter("editPassword");
            String role = request.getParameter("editRole");
            AccountEntity account = AccountModel.findAccount(id);

            if (!username.equals("") && !password.equals("") && !role.equals("")) {
                account.setUsername(username);
                account.setPassword(password);
                account.setRole(role);
                AccountModel.updateAccount(account);

                response.sendRedirect(request.getContextPath() + "/admin/user");
            }
        }
    }
}