<%@page import="webhard.webhardDTO"%>
<%@page import="java.util.List"%>
<%@page import="webhard.webhardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
webhardDAO dao = webhardDAO.getDAO();
List<webhardDTO> list = dao.getList();
request.setAttribute("list", list);
%>
<jsp:forward page="webhard.jsp"/>