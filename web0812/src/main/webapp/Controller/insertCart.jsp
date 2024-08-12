<%@page import="shop.CartDAO"%>
<%@page import="shop.ProductDAO"%>
<%@page import="shop.Product"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
int id = Integer.parseInt(request.getParameter("id"));
CartDAO dao = CartDAO.getCartDAO();
ProductDAO pDao = ProductDAO.getProductDAO();
if(pDao.getProductById(id).getStock() != 0){
	if(dao.getCartByPid(id) == null){
		dao.addCart(id);	
	}else{
		dao.increaseQuantity(id);
	}
	pDao.decreaseStock(id);
}else{
	%><script>alert("재고없음")</script><%
}
response.sendRedirect("../products.jsp");
%>
