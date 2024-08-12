<%@page import="shop.CartProducts"%>
<%@page import="shop.CartDAO"%>
<%@page import="shop.ProductDAO"%>
<%@page import="shop.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
CartDAO dao = CartDAO.getCartDAO();
List<CartProducts> carts = dao.viewCart();
request.setAttribute("carts", carts);
%>
<jsp:forward page="CartList.jsp"/>
