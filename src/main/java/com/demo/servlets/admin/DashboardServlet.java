package com.demo.servlets.admin;

import com.demo.entity.Account;
import com.demo.models.AccountModel;
import com.demo.models.CategoryModel;
import com.demo.models.ProductModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DashboardServlet", value = "/admin/dashboard")
public class DashboardServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext sc = getServletContext();
        String url = "/WEB-INF/views/admin/dashboard/dashboard.jsp";
        AccountModel accountModel = new AccountModel();
        ProductModel productModel = new ProductModel();
        CategoryModel categoryModel = new CategoryModel();
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
        int account = accountModel.countAccount();
        int product = productModel.countProduct();
        int category = categoryModel.countCategory();
        request.setAttribute("countUser", account);
        request.setAttribute("countProduct", product);
        request.setAttribute("countCategory", category);

        sc.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("../WEB-INF/views/admin/dashboard/dashboard.jsp").forward(request,response);
    }
}
