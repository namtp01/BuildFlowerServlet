package com.demo.servlets.admin;

import com.demo.entity.Category;
import com.demo.models.CategoryModel;
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
        request.getRequestDispatcher("../WEB-INF/views/admin/admin_product/add_form_product.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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