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
if(dao.getCartByPid(id).getQuantity() == 1){	
	dao.deleteCartByPid(id);
}else{
	dao.decreaseQuantity(id);
}
pDao.increaseStock(id);
response.sendRedirect("../carts.jsp");
%>