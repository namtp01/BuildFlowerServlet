package com.demo.servlets.admin;

import com.demo.entity.Account;
import com.demo.entity.Category;
import com.demo.entity.Product;
import com.demo.models.CategoryModel;
import com.demo.models.ProductModel;

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
        String action = request.getParameter("action");
        if (action == null) {
            doGet_List(request, response);
        } else {
            if (action.equalsIgnoreCase("add")) {
                doGet_Add(request, response);
            } else if (action.equalsIgnoreCase("delete")) {
                doGet_Delete(request, response);
            } else if (action.equalsIgnoreCase("edit")) {
                doGet_Edit(request, response);
            }
        }
    }

    protected void doGet_Edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductModel productModel = new ProductModel();
        String id = request.getParameter("id");
        request.setAttribute("product", productModel.getProductById("id"));
        request.getRequestDispatcher("../WEB-INF/views/admin/product/edit_form_product.jsp").forward(request,response);
    }

    protected void doGet_Add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CategoryModel categoryModel = new CategoryModel();
        List<Category> listC = categoryModel.getAllCategory();
        request.setAttribute("listC", listC);
        request.getRequestDispatcher("../WEB-INF/views/admin/product/add_product.jsp").forward(request,response);
    }

    protected void doGet_Delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        ProductModel productModel = new ProductModel();
        productModel.deleteProduct(id);
        response.sendRedirect("product");
    }

    protected void doGet_List(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ProductModel productModel = new ProductModel();
        List<Product> list = productModel.getAllProduct();
        request.setAttribute("listP", list);
        request.getRequestDispatcher("../WEB-INF/views/admin/product/product.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("add")) {
            doPost_Add(request, response);
        }
    }

    protected void doPost_Add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("inputName");
        String price = request.getParameter("inputPrice");
        String quantity = request.getParameter("inputQuantity");
        String description = request.getParameter("inputDescription");
        String details = request.getParameter("inputDetails");
        String image = request.getParameter("inputImage");
        String status = request.getParameter("inputStatus");
        String category_id = request.getParameter("inputCategory_id");
        HttpSession session = request.getSession();

        CategoryModel categoryModel = new CategoryModel();
        List<Category> listC = categoryModel.getAllCategory();
        request.setAttribute("listC", listC);

        ProductModel productModel = new ProductModel();
        productModel.insertProduct(name,price,quantity,description,details,image,status,category_id);
        response.sendRedirect("product");

    }
}
