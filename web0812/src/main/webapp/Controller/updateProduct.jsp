<%@page import="shop.Product"%>
<%@page import="shop.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String name = request.getParameter("name");
String description = request.getParameter("description");
String price = request.getParameter("price");
String stock = request.getParameter("stock");
ProductDAO dao = ProductDAO.getProductDAO();
Product dto = new Product(Integer.parseInt(id), name, description,
						Double.parseDouble(price), Integer.parseInt(stock));
dao.updateProduct(dto);
response.sendRedirect("../products.jsp");
%>