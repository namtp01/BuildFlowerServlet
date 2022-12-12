package com.demo.servlets.addtocart;


import com.demo.entity.Item;
import com.demo.entity.Product;
import com.demo.models.ProductModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AddToCartServlet", value = "/addtocart")
public class AddToCartServerlet  extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            doGet_View(request, response);
        } else {
            if (action.equalsIgnoreCase("buy")) {
                doGet_Buy(request,response);
            }
        }
    }

    protected void doGet_Buy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int quantity = 1;
        String id = request.getParameter("id");
        ProductModel productModel = new ProductModel();
        Product product = productModel.getProductById(id);
        HttpSession session = request.getSession();
        if (session.getAttribute("addtocart") == null) {
            List<Item> cart = new ArrayList<Item>();
            cart.add(new Item(product,1));
            session.setAttribute("addtocart", cart);
        } else {
            List<Item> cart = (List<Item>) session.getAttribute("addtocart");
            int index = productModel.checkExistProduct(Integer.parseInt(id), cart);
            if (index == -1) {
                cart.add(new Item(product, 1));
            } else {
                int newQuantity = cart.get(index).getQuantity() + 1;
                cart.get(index).setQuantity(newQuantity);
            }
            session.setAttribute("addtocart", cart);
        }
        response.sendRedirect("addtocart");
    }

    protected void doGet_View(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/views/addtocart/addtocart.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/views/addtocart/addtocart.jsp").forward(request,response);
    }
}
