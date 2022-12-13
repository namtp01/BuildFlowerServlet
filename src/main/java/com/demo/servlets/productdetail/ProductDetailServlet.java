package com.demo.servlets.productdetail;

import com.demo.entity.Product;
import com.demo.models.ProductModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductDetailServlet", value = "/productdetail")
public class ProductDetailServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        ProductModel productModel = new ProductModel();
        Product p = productModel.getProductById(id);
        request.setAttribute("detail", p);
        request.getRequestDispatcher("WEB-INF/views/productdetail/productdetail.jsp").forward(request,response);
    }

}
