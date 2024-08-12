<%@page import="shop.Product"%>
<%@page import="java.util.List"%>
<%@page import="shop.ProductDAO"%>
<%@page import="shop.CartDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
asdf
</body>
</html>
<%
ProductDAO dao = null;
List<Product> products = null;
//for(int i=0;i<100;i++){
	dao = new ProductDAO();
	products = dao.getAllProducts();
	System.out.println(1);	
//}
%>