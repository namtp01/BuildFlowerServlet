package com.demo.servlets.admin;

import com.demo.entity.Account;
import com.demo.models.AccountModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name="AdminUserServlet", value = "/admin/user")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100
)
public class AdminUserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Account> users;
        AccountModel accountModel = new AccountModel();
        ServletContext sc = getServletContext();
        String url = "/WEB-INF/views/admin/admin-user/admin_user.jsp";
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

        String id = request.getParameter("id");

        if (id != null) {
            accountModel.deleteAccount(id);
        }

        String search = request.getParameter("search-user-value");
        String runSearch = request.getParameter("search-user");

        if (runSearch != null) {
            users = accountModel.searchAccount(search);
        } else {
            users = accountModel.findAllAccount();
        }
        request.setAttribute("users", users);
        sc.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
