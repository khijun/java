<%@page import="java.io.File"%>
<%@page import="webhard.webhardDTO"%>
<%@page import="webhard.webhardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String temp = request.getParameter("num");
if (temp == null || "".equals(temp)) {
%>	
	<script>
		alert('업로드 실패 !');
		location.href="webhards.jsp";
	</script>
<%
}
int num = Integer.parseInt(temp);
webhardDAO dao = webhardDAO.getDAO();
webhardDTO dto = dao.getWebhardByNum(num);
if(dto != null){
    File file = new File(application.getRealPath("/files/") +
            dto.getFname());
    if (file != null) {
        file.delete();
    }
	dao.deleteWebhard(num);
}
%>
<script>
	alert("삭제 성공!");
	location.href="webhards.jsp";
</script>