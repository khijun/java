<%@page import="webhard.webhardDAO"%>
<%@page import="java.time.LocalTime"%>
<%@page import="webhard.webhardDTO"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.io.File"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
MultipartRequest multi = new MultipartRequest(request, application.getRealPath("/files"), // 파일을 저장할 경로
		100 * 1024 * 1024, // 최대 파일 크기 (100MB)
		"utf-8", // 인코딩
		new DefaultFileRenamePolicy() // 동일 파일명 처리 방법
);
File file = multi.getFile("upload");
if (file != null) {
	String currTime = LocalDate.now() + " " + LocalTime.now().toString().substring(0, 8);
	webhardDTO dto = new webhardDTO(0, file.getName(), currTime, (int) file.length());
	webhardDAO dao = webhardDAO.getDAO();
	dao.insertWebhard(dto);
	response.sendRedirect("webhards.jsp");
}
%>