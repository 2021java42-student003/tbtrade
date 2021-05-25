<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mylog</title>
</head>
<body>

<h3>取引履歴</h3>
<table border="1">
<c:forEach items="${logs}" var="logs">
	<tr><td>売買判別</td><td>${logs.is_sell}</td></tr>
	<tr><td>取引日</td><td>${logs.datetime}</td></tr>
	<tr><td>タイトル</td><td>${logs.book_name}</td></tr>
	<tr><td>冊数</td><td>${logs.quantity}</td></tr>
	<tr><td>値段</td><td>${logs.price}</td></tr>
</c:forEach>
</table>
<br>
<br>
<form action="/tbtrade/mypage.jsp" method="post">
<input type="submit" value="マイページに戻る">
</form>

</body>
</html>