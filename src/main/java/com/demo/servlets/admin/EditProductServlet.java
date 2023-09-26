package com.demo.servlets.admin;

import com.demo.entity.Account;
import com.demo.entity.Product;
import com.demo.models.ProductModel;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "EditProductServlet", value = "/admin/edit_product")
public class EditProductServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        ServletContext sc = getServletContext();
        String url = "/WEB-INF/views/admin/product/edit_form_product.jsp";
        ProductModel productModel = new ProductModel();

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

        int id = Integer.parseInt(request.getParameter("id"));

        Product product = productModel.findProduct(id);

        request.setAttribute("product", product);

        sc.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("save-product");
        ProductModel productModel = new ProductModel();

        if (action.equals("saved")) {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("editName");
            int quantity = Integer.parseInt(request.getParameter("editQuantity"));
            double price = Double.parseDouble(request.getParameter("editPrice"));
            String description = request.getParameter("editDescription");
            String detail = request.getParameter("editDetail");
            String image = request.getParameter("editImage");
            Product product = productModel.findProduct(id);

            if (!product.equals("")) {
                product.setName(name);
                product.setQuantity(quantity);
                product.setPrice(price);
                product.setDescription(description);
                product.setDetails(detail);
                product.setImage(image);
                productModel.updateProduct(product);
                response.sendRedirect(request.getContextPath() + "/admin/product");
            }
        }
    }
}