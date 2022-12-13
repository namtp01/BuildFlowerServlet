package com.demo.servlets.product;

import com.demo.entity.Category;
import com.demo.entity.Product;
import com.demo.models.CategoryModel;
import com.demo.models.ProductModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/product")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductModel productModel = new ProductModel();
        CategoryModel categoryModel = new CategoryModel();
        List<Product> listP = productModel.getAllProduct();
        List<Category> listC = categoryModel.getAllCategory();
        request.setAttribute("listP", listP);
        request.setAttribute("listC", listC);
        request.getRequestDispatcher("WEB-INF/views/product/product.jsp").forward(request,response);
    }
}
