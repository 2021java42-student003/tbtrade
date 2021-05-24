<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/tbtrade/login.jsp" method="post">
<input type="submit" value="ログアウト">
</form>

<form action="/tbtrade/mypage.jsp" method="post">
<input type="submit" value="マイページ">
</form>

<form action="/tbtrade/BookSearchServlet" method="post">
<input type="text"  name="title" placeholder="タイトルを入力してください">
<input type="submit" value="検索">
<input type="hidden" name="action" value="search">
</form>

<a href="/tbtrade/BookServlet>">全検索</a>

<form action="/tbtrade/showContents.jsp" method="post">
<input type="submit" value="売却ページ">
</form>

</body>
</html>