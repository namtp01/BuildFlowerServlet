package com.demo.servlets.admin;

import com.demo.models.AccountModel;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "AddUserServlet", value = "/admin/add_user")
public class AddUserServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext sc = getServletContext();
        String url = "/WEB-INF/views/admin/product/add_product.jsp";
        //String index_message = "LOG IN";
        HttpSession session = request.getSession();
        try{
            String name = request.getParameter("inputUsername");
            String password = request.getParameter("inputPassword");
            String fullName = request.getParameter("inputFullName");
            String address = request.getParameter("inputAddress");
            String email = request.getParameter("inputEmail");
            String phone = request.getParameter("inputEmail");
            String role = request.getParameter("inputRole");
            //AccountModel.insertAccount(99, name, password, fullName, address, email, phone, 1 ,role);
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
        request.getRequestDispatcher("../WEB-INF/views/admin/admin-user/add_form_user.jsp").forward(request,response);
    }
}