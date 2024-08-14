<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
</head>
<body>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
		crossorigin="anonymous"></script>
<table class = "table table-bordered w-75">
    <tr class="w-100">
        <th class="table-light" style="text-align:center; width:20%;">제목</th>
        <td>${msg.title}</td>
            <tr>
        <th class="w-auto table-light" style="text-align:center;">작성자</th>
        <td>${msg.writer}</td>
    </tr>
    <tr>
        <th class="w-auto table-light" style="text-align:center;">작성일시</th>
        <td>${msg.regtime}</td>
    </tr>
    <tr>
        <th class="w-auto table-light" style="text-align:center;">조회수</th>
        <td>${msg.hits}</td>
    </tr>
    <tr style="height:200px;">
        <th class="w-auto table-light" style="text-align:center;">내용</th>
        <td>${msg.content}</td>
	</tr>
    </tr>

</table>

<br>
<input type="button" value="목록보기" onclick="location.href='list'" class="btn btn-outline-secondary">
<input type="button" value="수정"
       onclick="location.href='write?num=${param.num}'" class="btn btn-outline-success">
<input type="button" value="삭제"
       onclick="location.href='delete?num=${param.num}'" class="btn btn-outline-danger">

</body>
</html>