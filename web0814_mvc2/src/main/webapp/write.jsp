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
<form method="post" action="${action}">
    <table class = "table table-bordered w-75">
        <tr>
            <th class="table-light" style="text-align:center; width:20%;">제목</th>
            <td><input type="text" name="title"  maxlength="80"
                       value="${msg.title}" class="w-100 form-control">
            </td>
        </tr>
        <tr>
            <th class = "table-light" style="text-align:center;">작성자</th>
            <td><input type="text" name="writer" maxlength="20"
                       value="${msg.writer}" class="w-100  form-control">
            </td>
        </tr>
        <tr>
            <th class = "table-light" style="text-align:center;">내용</th>
            <td style="height:200px;"><textarea name="content" class="w-100 h-100  form-control">${msg.content}</textarea>
            </td>
        </tr>
    </table>

    <br>
    <input type="submit" value="저장" class="btn btn-outline-primary">
    <input type="button" value="취소" onclick="history.back()" class="btn btn-outline-danger">
</form>

</body>
</html>