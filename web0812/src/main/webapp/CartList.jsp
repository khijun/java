<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
    <h1>Product List</h1>
    <a href="${pageContext.request.contextPath}/products.jsp">View Product</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>담긴 수량</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="cart" items="${carts}">
            <tr>
                <td>${cart.id}</td>
                <td>${cart.name}</td>
                <td>${cart.description}</td>
                <td>${cart.price}</td>
                <td>${cart.quantity}</td>
                <td>
                    <a href="${pageContext.request.contextPath}/Controller/SubtractCart.jsp?id=${cart.id}">Sub Cart</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>