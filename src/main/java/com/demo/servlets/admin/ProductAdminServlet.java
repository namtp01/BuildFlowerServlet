package com.demo.servlets.admin;

import com.demo.entity.Product;
import com.demo.models.CategoryModel;
import com.demo.models.ProductModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductAdminServlet", value = "/admin/product")
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
        List<Product> list = productModel.getAllProduct();
        request.setAttribute("listP", list);
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
//        Product productEntity = new Product();
//        ProductModel productModel = new ProductModel();
//        CategoryModel categoryModel = new CategoryModel();
//        productEntity.setCategory(categoryModel.find(Integer.parseInt(request.getParameter("category"))));
//        productEntity.setDescription(request.getParameter("description").trim());
//        productEntity.setDetails(request.getParameter("details").trim());
//        productEntity.setFeatured(request.getParameter("featured") != null);
//        productEntity.setName(request.getParameter("name").trim());
//        productEntity.setPrice(Double.parseDouble(request.getParameter("price").trim()));
//        productEntity.setQuantity(Integer.parseInt(request.getParameter("quantity").trim()));
//        productEntity.setStatus(request.getParameter("status") != null);
//        productModel.create(productEntity);
//        response.sendRedirect("product");
    }
}
