<%@page import="util.Cookies"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookies cookies = new Cookies(request);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(cookies.exist("AUTH")){
%>
아이디 "<%=cookies.getValue("AUTH") %>"로 로그인한 상태
<%
	}else{
%>
로그인하지 않은 상태
<%
	}
%>
</body>
</html>