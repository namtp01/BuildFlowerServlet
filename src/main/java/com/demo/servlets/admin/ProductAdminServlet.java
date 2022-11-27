package com.demo.servlets.admin;

import com.demo.entities.CategoryEntity;
import com.demo.entities.ProductEntity;
import com.demo.models.CategoryModel;
import com.demo.models.ProductModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductServlet", value = "/admin/product")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100
)
public class ProductAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            doGet_List(request, response);
        } else {
            if (action.equalsIgnoreCase("add")) {
                doGet_Add(request, response);
            }
        }
    }

    protected void doGet_Add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("../WEB-INF/views/admin/product/add_product.jsp").forward(request,response);
    }

    protected void doGet_List(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductModel productModel = new ProductModel();
        request.setAttribute("products", productModel.findAll());
        request.getRequestDispatcher("../WEB-INF/views/admin/product/product.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("add")) {
            doPost_Add(request, response);
        }
    }

    protected void doPost_Add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductEntity productEntity = new ProductEntity();
        ProductModel productModel = new ProductModel();
        CategoryModel categoryModel = new CategoryModel();
        productEntity.setCategory(categoryModel.find(Integer.parseInt(request.getParameter("category"))));
        productEntity.setDescription(request.getParameter("description").trim());
        productEntity.setDetails(request.getParameter("details").trim());
        productEntity.setFeatured(request.getParameter("featured") != null);
        productEntity.setName(request.getParameter("name").trim());
        productEntity.setPrice(Double.parseDouble(request.getParameter("price").trim()));
        productEntity.setQuantity(Integer.parseInt(request.getParameter("quantity").trim()));
        productEntity.setStatus(request.getParameter("status") != null);
        productModel.create(productEntity);
        response.sendRedirect("product");
    }


}
