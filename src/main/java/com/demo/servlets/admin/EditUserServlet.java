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
        String url = "/WEB-INF/views/admin/product/edit_form_user.jsp";

        int id = Integer.parseInt(request.getParameter("id"));

        AccountEntity account = AccountModel.findAccount(id);

        request.setAttribute("editUsername", account.getUsername());
        request.setAttribute("editPassword", account.getPassword());

        sc.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("save-user");

        if (action.equals("saved")) {
            String username = request.getParameter("editUsername");
            String password = request.getParameter("editPassword");

            if (!username.equals("") && !password.equals("")) {
                response.sendRedirect(request.getContextPath() + "/admin/user");
            }
        }
    }
}