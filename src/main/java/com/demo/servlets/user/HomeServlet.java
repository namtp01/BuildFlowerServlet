package com.demo.servlets.user;

import com.demo.entity.Category;
import com.demo.models.CategoryModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", value = "/home")
public class HomeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryModel categoryModel = new CategoryModel();
        List<Category> listC = categoryModel.getAllCategory();
        request.setAttribute("listC", listC);

        request.getRequestDispatcher("WEB-INF/views/home/index.jsp").forward(request,response);
    }
}
