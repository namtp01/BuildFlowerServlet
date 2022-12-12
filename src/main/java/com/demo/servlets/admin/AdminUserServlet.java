package com.demo.servlets.admin;

import com.demo.entities.AccountEntity;
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

        List<AccountEntity> users;
        ServletContext sc = getServletContext();
        String url = "/WEB-INF/views/admin/admin-user/admin_user.jsp";
        //String index_message = "LOG IN";
        HttpSession session = request.getSession();
        //try{
        //      ProductEntity current_account = (ProductEntity) session.getAttribute("account");
        //      index_message = "Hello " + current_account.getFullname();
        //}
        //catch(Exception e){
        //      index_message = "LOG IN";
        //}

        //request.setAttribute("indexmessage",index_message);
        String id = request.getParameter("id");

        if (id != null) {
            AccountModel.deleteUser(Integer.parseInt(id));
        }

        String search = request.getParameter("search-user-value");
        String runSearch = request.getParameter("search-user");

        if (runSearch != null) {
            users = AccountModel.searchAccounts(search);
        } else {
            users = AccountModel.findAllAccount();
        }
        request.setAttribute("users", users);
        sc.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
