<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
    <h1>Product List</h1>
    <a href="${pageContext.request.contextPath}/registProduct.jsp">Add New Product</a>
    <a href="${pageContext.request.contextPath}/carts.jsp">View Cart</a>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Price</th>
            <th>Stock</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.id}</td>
                <td>${product.name}</td>
                <td>${product.description}</td>
                <td>${product.price}</td>
                <td><c:choose><c:when test = "${product.stock == 0}">재고 없음</c:when>
                <c:otherwise>${product.stock}</c:otherwise></c:choose></td>
                <td>
                    <a href="${pageContext.request.contextPath}/Controller/insertCart.jsp?id=${product.id}">Add Cart</a>
                    <a href="${pageContext.request.contextPath}/selectOneForUpdate.jsp?id=${product.id}">Edit</a>
                    <a href="${pageContext.request.contextPath}/Controller/deleteProduct.jsp?id=${product.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>