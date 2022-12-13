package com.demo.servlets.admin;

import com.demo.entity.Account;
import com.demo.entity.Product;
import com.demo.models.AccountModel;
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
import java.util.List;

@WebServlet(name = "ProductAdminServlet", value = "/admin/product")
public class ProductAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<Product> products;
        ProductModel productModel = new ProductModel();
        ServletContext sc = getServletContext();
        String url = "/WEB-INF/views/admin/product/admin_product.jsp";
        HttpSession session = request.getSession();
        String message = "";
        try{
            Account current_account = (Account) session.getAttribute("account");
            message = "Hello " + current_account.getFull_name();
        }
        catch(Exception e){
            sc.getRequestDispatcher("/WEB-INF/views/product/admin_product.jsp").forward(request,response);
        }
        request.setAttribute("message", message);

        String id = request.getParameter("id");

        if (id != null) {
            productModel.deleteProduct(id);
        }

        String search = request.getParameter("search-product-value");
        String runSearch = request.getParameter("search-user");

        if (runSearch != null) {
            products = productModel.searchProductByName(search);
        } else {
            products = productModel.getAllProduct();
        }
        request.setAttribute("products", products);
        sc.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
