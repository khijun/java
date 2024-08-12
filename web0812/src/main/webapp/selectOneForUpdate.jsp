<%@page import="shop.Product"%>
<%@page import="shop.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");

ProductDAO dao = ProductDAO.getProductDAO();
Product dto = dao.getProductById(Integer.parseInt(id));
request.setAttribute("product", dto);
%>
<jsp:forward page = "modifyProduct.jsp"/>