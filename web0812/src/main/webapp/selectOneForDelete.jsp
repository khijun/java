<%@page import="shop.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
int id = Integer.parseInt(request.getParameter("id"));
request.setAttribute("id", id);
%>
<jsp:forward page="./Controller/deleteProduct.jsp"/>