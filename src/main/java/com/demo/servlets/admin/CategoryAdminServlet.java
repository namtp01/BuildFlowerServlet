package com.demo.servlets.admin;

import com.demo.models.CategoryModel;
import com.demo.entities.CategoryEntity;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CategoryServlet", value = "/admin/category")
public class CategoryAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            doGet_List(request, response);
        } else {
            if (action.equalsIgnoreCase("add")) {
                doGet_Add(request, response);
            } else if (action.equalsIgnoreCase("delete")) {
                doGet_Delete(request, response);
            } else if (action.equalsIgnoreCase("edit")) {
                doGet_Edit(request, response);
            }
        }
    }

    protected void doGet_Edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryModel categoryModel = new CategoryModel();
        int id = Integer.parseInt(request.getParameter("id").trim());
        request.setAttribute("category", categoryModel.find(id));
        request.getRequestDispatcher("../WEB-INF/views/admin/category/edit.jsp").forward(request,response);
    }

    protected void doGet_Delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryModel categoryModel = new CategoryModel();
        int id = Integer.parseInt(request.getParameter("id").trim());
        categoryModel.delete(categoryModel.find(id));
        response.sendRedirect("category");
    }

    protected void doGet_Add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("../WEB-INF/views/admin/category/add.jsp").forward(request,response);
    }

    protected void doGet_List(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryModel categoryModel = new CategoryModel();
        request.setAttribute("categories", categoryModel.findCategoryLevel1());
        request.getRequestDispatcher("../WEB-INF/views/admin/category/category.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("add")) {
            doPost_Add(request, response);
        } else if (action.equalsIgnoreCase("edit")) {
            doPost_Edit(request, response);
        }
    }

    protected void doPost_Edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryModel categoryModel = new CategoryModel();
        int id = Integer.parseInt(request.getParameter("id").trim());
        CategoryEntity categoryEntity = categoryModel.find(id);
        categoryEntity.setName(request.getParameter("name").trim());
        categoryEntity.setStatus(request.getParameter("status") != null);
        categoryModel.update(categoryEntity);
        response.sendRedirect("category");
    }

    protected void doPost_Add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryModel categoryModel = new CategoryModel();
        CategoryEntity categoryEntity = new CategoryEntity();
        categoryEntity.setName(request.getParameter("name").trim());
        categoryEntity.setStatus(request.getParameter("status") != null);
        categoryModel.create(categoryEntity);
        response.sendRedirect("category");
    }
}
