package com.demo.servlets.product;

import com.demo.dao.ProductDAO;
import com.demo.entities.ProductEntity;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/product")
public class ProductServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/views/product/product.jsp").forward(request,response);
        List<ProductEntity> products = new ArrayList<>();
        ProductDAO productDAO = new ProductDAO();
        products = productDAO.getAllProduct();
        for(ProductEntity product : products) {
            System.out.println(product);
        }
        request.setAttribute("productList",products);

        getServletContext()
                .getRequestDispatcher("WEB-INF/views/product/product.jsp")
                .forward(request, response);
    }
}
