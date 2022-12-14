package com.demo.servlets.admin;

import com.demo.entity.Account;
import com.demo.models.CategoryModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddCategoryServlet", value = "/admin/add_category")
public class AddCategoryServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletContext sc = getServletContext();
        String url = "/WEB-INF/views/admin/category/add.jsp";
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
        String action = request.getParameter("submit-category");
        CategoryModel categoryModel = new CategoryModel();

        if (action.equals("clicked")) {
            String name = request.getParameter("name");

            if (!name.equals("")) {
                categoryModel.insertCategory(name);
                response.sendRedirect(request.getContextPath() + "/admin/product");
            }
        }
    }
}