<%@page import="shop.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
ProductDAO dao = ProductDAO.getProductDAO();
dao.deleteProduct(Integer.parseInt(request.getParameter("id")));
response.sendRedirect("../products.jsp");
%>