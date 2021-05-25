<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>registBook</title>
</head>
<body>

<h3>新規商品登録入力</h3>
<br><br>
<br>
<h3>${message}<h3>

<form action="/tbtrade/RegistBookServlet" method="post">
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

		<%if(request.getAttribute("publisher") ==null){ %>
		出版社：<input type="text" name="publisher"><br>
		<%} else {%>
		出版社：<input type="text" name="publisher" value="${publisher}"><br>
		<%} %>

		<%if(request.getAttribute("stock") ==null){ %>
		在庫数：<input type="text" name="stock"><br>
		<%} else {%>
		在庫数：<input type="text" name="stock" value="${stock}"><br>
		<%} %>

		<input type="hidden" name="action" value="confirm">
		<input type="submit" value="確認する">
	</form>


</body>
</html>