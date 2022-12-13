package com.demo.servlets.addtocart;


import com.demo.entity.Item;
import com.demo.entity.Order;
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
            } else if (action.equalsIgnoreCase("remove")) {
                doGet_Remove(request,response);
            }
        }
    }

    protected void doGet_Remove(HttpServletRequest request, HttpServletResponse response) throws   ServletException, IOException {
        int index = Integer.parseInt(request.getParameter("index").trim());
        HttpSession session = request.getSession();
        List<Item> cart = (List<Item>) session.getAttribute("addtocart");
        cart.remove(index);
        session.setAttribute("addtocart", cart);
        response.sendRedirect("addtocart");
    }

    protected void doGet_Buy(HttpServletRequest request, HttpServletResponse response) throws   ServletException, IOException {
        int quantity = 1;
        String id = request.getParameter("id");
        ProductModel productModel = new ProductModel();
        Product product = productModel.getProductById(id);
        HttpSession session = request.getSession();
        if (session.getAttribute("addtocart") == null) {
            List<Item> listItems = new ArrayList<Item>();
            listItems.add(new Item(product,1));
            session.setAttribute("addtocart", listItems);
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

//    protected void doGet_Buy(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        int quantity = 1;
//        String id;
//        if (request.getParameter("bookId") != null) {
//            id = request.getParameter("bookId");
//            ProductModel productModel = new ProductModel();
//            Product product = productModel.getProductById(id);
//            if (product != null) {
//                if (request.getParameter("quantity") != null){
//                    quantity = Integer.parseInt(request.getParameter("quantity"));
//                }
//                HttpSession session = request.getSession();
//                if (session.getAttribute("order") == null) {
//                    Order order = new Order();
//                    List<Item> listItems = new ArrayList<Item>();
//                    Item item = new Item();
//                    item.setQuantity(quantity);
//                    item.setProduct(product);
//                    item.setPrice(product.getPrice());
//                    listItems.add(item);
//                    order.setItems(listItems);
//                } else {
//                    Order order = (Order) session.getAttribute("order");
//                    List<Item> listItems = order.getItems();
//                    boolean  check = false;
//                    for (Item item : listItems) {
//                        if (item.getProduct().getId() == product.getId()) {
//                            item.setQuantity(item.getQuantity()+quantity);
//                            check = true;
//                        }
//                    }
//                    if (check == false) {
//                        Item item = new Item();
//                        item.setQuantity(quantity);
//                        item.setProduct(product);
//                        item.setPrice(product.getPrice());
//                        listItems.add(item);
//                    }
//                    session.setAttribute("order", order);
//                }
//            }
//            response.sendRedirect("addtocart");
//        } else {
//            response.sendRedirect("addtocart");
//        }
//    }

    protected void doGet_View(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("WEB-INF/views/addtocart/addtocart.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("update")) {
            doPost_Update(request, response);
        }
    }

    protected void doPost_Update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int quantity = Integer.parseInt(request.getParameter("quantity").trim());
        int index = Integer.parseInt(request.getParameter("index").trim());
        HttpSession session = request.getSession();
        List<Item> cart = (List<Item>) session.getAttribute("addtocart");
        cart.get(index).setQuantity(quantity);
        session.setAttribute("addtocart", cart);
        response.sendRedirect("addtocart");
    }
}
