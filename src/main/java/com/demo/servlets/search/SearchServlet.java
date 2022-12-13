package com.demo.servlets.search;

import com.demo.entity.Category;
import com.demo.entity.Product;
import com.demo.models.CategoryModel;
import com.demo.models.ProductModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SearchServlet", value = "/search")
public class SearchServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String txtSearch = request.getParameter("txt");
        ProductModel productModel = new ProductModel();
        CategoryModel categoryModel = new CategoryModel();
        List<Product> list = productModel.searchProductByName(txtSearch);
        List<Category> listC = categoryModel.getAllCategory();
        request.setAttribute("listP", list);
        request.setAttribute("listC", listC);
        request.getRequestDispatcher("WEB-INF/views/product/product.jsp").forward(request,response);
    }
}
