<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html style="height:100%;">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body style="min-height:100%;">
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
<div style="width:100vw; height:100vh; display:flex; justify-content: center; align-items:center;">
	<div class="border border-black" style="padding:50px;">
		<form action="loginAction">
		<div>
			<p style="width:300px;">아이디:<input type="text" name="id"></p>
		</div>
		<div>
			<p style="width:300px;">비밀번호:</p><input type="password" name="pw">
		</div>
		<div>
			<input type="submit" value="로그인" class = "btn btn-outline-primary">
			<button onclick="history.back()" class = "btn btn-outline-danger">이전</button>
		</div>
		</form>
	</div>	
</div>
</body> 
</html>