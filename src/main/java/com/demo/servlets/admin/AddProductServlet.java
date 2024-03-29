package com.demo.servlets.admin;

import com.demo.entity.Account;
import com.demo.models.ProductModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddProductServlet", value = "/admin/add_product")
public class AddProductServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletContext sc = getServletContext();
        String url = "/WEB-INF/views/admin/product/add_form_product.jsp";
        HttpSession session = request.getSession();
        String message = "";
        try{
            Account current_account = (Account) session.getAttribute("account");
            message = "Hello " + current_account.getFull_name();
        }
        catch(Exception e){
            url = "/WEB-INF/views/admin/login/login.jsp";
        }
        request.setAttribute("message", message);

        sc.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("submit-product");
        ProductModel productModel = new ProductModel();

        if (action.equals("clicked")) {
            String name = request.getParameter("inputName");
            String quantity = request.getParameter("inputQuantity");
            String price = request.getParameter("inputPrice");
            String description = request.getParameter("inputDescription");
            String details = request.getParameter("inputDetails");
            String image = request.getParameter("inputImage");
            String type = request.getParameter("inputType");

            if (!name.equals("") && !quantity.equals("") && !price.equals("")) {
                productModel.insertProduct(name, quantity, price, description, details, image);
                response.sendRedirect(request.getContextPath() + "/admin/product");
            }
        }
    }
}