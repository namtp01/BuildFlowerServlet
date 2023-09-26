package com.demo.servlets.admin;

import com.demo.entity.Account;
import com.demo.models.AccountModel;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AddUserServlet", value = "/admin/add_user")
public class AddUserServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext sc = getServletContext();
        String url = "/WEB-INF/views/admin/admin-user/add_form_user.jsp";
        HttpSession session = request.getSession();
        String message = "";
        try{
            Account current_account = (Account) session.getAttribute("account");
            message = "Hello " + current_account.getFull_name();
        }
        catch(Exception e){
            url = "/WEB-INF/views/admin/login/login.jsp";
        }
        request.setAttribute("message", message);

        sc.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("submit-user");
        AccountModel accountModel = new AccountModel();

        if (action.equals("clicked")) {
            String username = request.getParameter("inputUsername");
            String password = request.getParameter("inputPassword");
            String full_name = request.getParameter("inputFullName");
            String address = request.getParameter("inputAddress");
            String email = request.getParameter("inputEmail");
            String phone = request.getParameter("inputPhone");
            String role = request.getParameter("inputRole");

            if (!username.equals("") && !password.equals("") && !role.equals("")) {
                accountModel.insertAccount(username, password, full_name, address, email, phone, role);
                response.sendRedirect(request.getContextPath() + "/admin/user");
            } else {
                response.sendRedirect(request.getContextPath() + "/admin/add_user");
            }
        }

    }
}