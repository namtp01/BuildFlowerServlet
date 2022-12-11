package com.demo.servlets.admin;

import com.demo.entities.ProductEntity;
import com.demo.models.ProductModel;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/admin/product")
@MultipartConfig(
        fileSizeThreshold = 1024 * 1024 * 10,
        maxFileSize = 1024 * 1024 * 50,
        maxRequestSize = 1024 * 1024 * 100
)
public class ProductAdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        List<ProductEntity> products = ProductModel.findAllProduct();
        ServletContext sc = getServletContext();
        String url = "/WEB-INF/views/admin/product/admin_product.jsp";
        //String index_message = "LOG IN";
        HttpSession session = request.getSession();
        //try{
        //      ProductEntity current_account = (ProductEntity) session.getAttribute("account");
        //      index_message = "Hello " + current_account.getFullname();
        //}
        //catch(Exception e){
        //      index_message = "LOG IN";
        //}
        request.setAttribute("products", products);
        //request.setAttribute("indexmessage",index_message);
        sc.getRequestDispatcher(url).
                forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("delete-product");
        int id = Integer.parseInt(request.getParameter("id"));

        if (!action.equals("")) {

        }
    }


}
