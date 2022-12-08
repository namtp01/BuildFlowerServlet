package com.demo.servlets.admin;

import com.demo.entities.AccountEntity;
import com.demo.models.AccountModel;
import com.demo.models.ProductModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
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

        List<AccountEntity> users = AccountModel.findAllAccount();
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
        request.setAttribute("users", users);
        //request.setAttribute("indexmessage",index_message);
        sc.getRequestDispatcher(url).forward(request, response);

        String action = request.getServletPath();

        switch (action) {
            case "/update":
                try {
                    updateUser(request, response);
                } catch (Exception e) {
                    System.out.println(e);
                }
                break;
            case "/delete":
                try {
                    deleteUser(request, response);
                } catch (Exception e) {
                    System.out.println(e);
                }
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    private void deleteUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        AccountModel.deleteUser(id);
        response.sendRedirect("list");
    }

    private void updateUser(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String username = request.getParameter("username");
        AccountEntity account = AccountModel.findAccount(id);
        account.setUsername(username);
    }
}
