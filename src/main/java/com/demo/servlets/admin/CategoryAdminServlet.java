package com.demo.servlets.admin;

import com.demo.entity.Account;
import com.demo.entity.Category;
import com.demo.models.CategoryModel;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryAdminServlet", value = "/admin/category")
public class CategoryAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Category> categories;
        CategoryModel categoryModel = new CategoryModel();
        ServletContext sc = getServletContext();
        String url = "/WEB-INF/views/admin/product/admin_product.jsp";
        HttpSession session = request.getSession();
        String message = "";
        try{
            Account current_account = (Account) session.getAttribute("account");
            message = "Hello " + current_account.getFull_name();
        }
        catch(Exception e){
            sc.getRequestDispatcher("/WEB-INF/views/product/admin_product.jsp").forward(request,response);
        }
        request.setAttribute("message", message);

        String id = request.getParameter("id");

        if (id != null) {
            categoryModel.deleteCategory(id);
        }

        String search = request.getParameter("search-product-value");
        String runSearch = request.getParameter("search-user");

        if (runSearch != null) {
            categories = categoryModel.searchCategoryByName(search);
        } else {
            categories = categoryModel.getAllCategory();
        }
        request.setAttribute("products", categories);
        sc.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
