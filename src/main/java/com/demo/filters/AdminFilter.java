//package com.demo.filters;
//
//import javax.servlet.*;
//import javax.servlet.annotation.*;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpSession;
//import java.io.IOException;
//
//@WebFilter(filterName = "adminFilter", urlPatterns = {"/admin/*"})
//public class AdminFilter implements Filter {
//    public void init(FilterConfig config) throws ServletException {
//    }
//
//    public void destroy() {
//    }
//
//    @Override
//    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
//        HttpServletRequest httpServletRequest = (HttpServletRequest) request;
//        HttpSession session = httpServletRequest.getSession();
//        if (session.getAttribute("username_admin") == null && !((HttpServletRequest) request).getRequestURI().endsWith("admin/login")) {
//            request.getRequestDispatcher("/WEB-INF/views/admin/login/index.jsp").forward(request,response);
//        }else {
//            chain.doFilter(request, response);
//        }
//    }
//}
