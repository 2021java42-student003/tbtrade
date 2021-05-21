<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/tbtrade/SearchServlet" method="post">
<input type="submit" value="ログアウト">
<input type="hidden" name="action" value="logout">
</form>

<form action="/tbtrade/SearchServlet" method="post">
<input type="submit" value="マイページ">
<input type="hidden" name="action" value="mypage">
</form>

<form action="/tbtrade/SearchServlet" method="post">
<input type="text"  name="title" placeholder="タイトルを入力してください">
<input type="submit" value="検索">
<input type="hidden" name="action" value="search">
</form>

<form action="/tbtrade/SearchServlet" method="post">
<input type="submit" value="売却ページ">
<input type="hidden" name="action" value="sell">
</form>

</body>
</html>