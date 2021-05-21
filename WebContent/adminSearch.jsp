<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminSearch</title>
</head>
<body>

<form action="/tbtrade/login.jsp" method="post">
<input type="submit" value="ログアウトする">
</form>

<form action="/tbtrade/adminTop.jsp" method="post">
<input type="submit" value="管理者トップ">
</form>

<br>
<br>
 タイトルで検索
<form action="/tbtrade/adminTop.jsp" method="post">
<input type="text" name="title"><br>
</form>
<form action="/tbtrade/AdminSearch?action=search" method="post">
<input type="submit" value="検索する">
</form>

</body>
</html>