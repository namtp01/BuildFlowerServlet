package com.demo.servlets.admin;

import com.demo.entity.Account;
import com.demo.entity.Category;
import com.demo.entity.Product;
import com.demo.models.CategoryModel;
import com.demo.models.ProductModel;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "EditCategoryServlet", value = "/admin/edit_category")
public class EditCategoryServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        CategoryModel categoryModel = new CategoryModel();

        HttpSession session = request.getSession();
        String message = "";
        try{
            Account current_account = (Account) session.getAttribute("account");
            message = "Hello " + current_account.getFull_name();
        }
        catch(Exception e){
            request.getRequestDispatcher("/WEB-INF/views/admin/login/login.jsp");
        }
        request.setAttribute("message", message);
        int id = Integer.parseInt(request.getParameter("id"));

        Category category = categoryModel.findCategory(id);

        request.setAttribute("category", category);

        request.getRequestDispatcher("/WEB-INF/views/admin/category/edit.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("save-product");
        CategoryModel categoryModel = new CategoryModel();

        if (action.equals("saved")) {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("editName");
            Category category = categoryModel.findCategory(id);

            if (!name.equals("")) {
                category.setName(name);
                categoryModel.updateCategory(category);
                response.sendRedirect(request.getContextPath() + "/admin/product");
            }
        }
    }
}