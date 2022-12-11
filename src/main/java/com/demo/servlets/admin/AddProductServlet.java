package com.demo.servlets.admin;

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

        sc.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("submit-product");

        if (action.equals("clicked")) {
            String name = request.getParameter("inputName");
            String quantity = request.getParameter("inputQuantity");
            String price = request.getParameter("inputPrice");

            if (!name.equals("") && !quantity.equals("") && !price.equals("")) {
                response.sendRedirect(request.getContextPath() + "/admin/product");
            }
        }
    }
}