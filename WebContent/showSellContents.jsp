<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookSearch</title>
</head>
<body>

	<h3>売却リスト<h3>
	<form action="/tbtrade/SellContentsServlet" method="post">
		<%if(request.getAttribute("name") ==null){ %>
		タイトル：<input type="text" name="name"><br>
		<%} else {%>
		タイトル：<input type="text" name="name" value="${name}"><br>
		<%} %>

		<%if(request.getAttribute("author") ==null){ %>
		著者名：<input type="text" name="author"><br>
		<%} else {%>
		著者名：<input type="text" name="author" value="${author}"><br>
		<%} %>


		<%if(request.getAttribute("datetime") ==null){ %>
		出版年：<input type="text" name="datetime"><br>
		<%} else {%>
		出版年：<input type="text" name="datetime" value="${datetime}"><br>
		<%} %>

		<%if(request.getAttribute("datetime") ==null){ %>
		出版社：<input type="text" name="publisher"><br>
		<%} else {%>
		出版社：<input type="text" name="publisher" value="${publisher}"><br>
		<%} %>

		<input type="hidden" name="action" value="confirm">
		<input type="submit" value="売却確認">
	</form>

	<form action="/tbtrade/bookSearch.jsp">
		<input type="submit" value="検索に戻る">
	</form>
</body>
</html>