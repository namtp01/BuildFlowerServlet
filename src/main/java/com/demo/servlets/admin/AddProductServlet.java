package com.demo.servlets.admin;

import com.demo.entities.ProductEntity;
import com.demo.models.ProductModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddProductServlet", value = "/admin/add_product")
public class AddProductServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletContext sc = getServletContext();
        String url = "/WEB-INF/views/admin/product/add_product.jsp";
        //String index_message = "LOG IN";
        HttpSession session = request.getSession();
        try{
            String name = request.getParameter("name");
            int price = Integer.parseInt(request.getParameter("price"));
            int quanity = Integer.parseInt(request.getParameter("quanity"));
            String description = request.getParameter("description");
            String details = request.getParameter("details");
            Boolean status = true;
            Boolean featured = true;
            ProductModel.insertProduct(1, name, price, quanity, description, details, status, featured, 1);
            //ProductEntity current_account = (ProductEntity) session.getAttribute("account");
            //index_message = "Hello " + current_account.getFullname();
        }
        catch(Exception e){
            //index_message = "LOG IN";
        }
        //request.setAttribute("indexmessage",index_message);
        sc.getRequestDispatcher(url).
                forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("../WEB-INF/views/admin/admin_product/add_form_product.jsp").forward(request,response);
    }
}