<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
	<div class="w-75">
		<table class="table table-bordered">
			<thead class="table-light">
				<tr>
					<th class="num">번호</th>
					<th class="title">제목</th>
					<th class="writer">작성자</th>
					<th class="regtime">작성일시</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="msg" items="${msgList}">
					<tr>
						<td>${msg.num}</td>
						<td style="text-align: left;"><a
							href="view?num=${msg.num}&page=${param.page}"> ${msg.title} </a></td>
						<td>${msg.name}</td>
						<td>${msg.regtime}</td>
						<td>${msg.hits}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br> <button class="btn btn-outline-primary"
			onclick="location.href='write'">글쓰기</button><br>
		<div style="text-align: center;">
			<c:forEach var="pgn" items="${pgnList}">
				<button class =
				<c:choose>
						<c:when test="${pgn.curPage}">
							"btn btn-secondary"
						</c:when>
						<c:otherwise>
                     "btn btn-light"
                 </c:otherwise>
					</c:choose> 
				onclick="location.href='list?page=${pgn.pageNo}'">
					<c:choose>
						<c:when test="${pgn.curPage}">
							${pgn.display}
						</c:when>
						<c:otherwise>
                     ${pgn.display}
                 </c:otherwise>
					</c:choose>

				</button>
				<a class="pgn" href=""> </a>&nbsp;
    </c:forEach>
		</div>


	</div>
</body>
</html>