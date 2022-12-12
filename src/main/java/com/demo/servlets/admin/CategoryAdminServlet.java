package com.demo.servlets.admin;

import com.demo.entity.Category;
import com.demo.models.CategoryModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryAdminServlet", value = "/admin/category")
public class CategoryAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            doGet_List(request, response);
        }
    }

    protected void doGet_List(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryModel categoryModel = new CategoryModel();
        List<Category> list = categoryModel.getAllCategory();
        request.setAttribute("categories", list);
        request.getRequestDispatcher("../WEB-INF/views/admin/category/category.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
