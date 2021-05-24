<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>determineMypage</title>
</head>
<body>

<h2>登録情報を変更しました！</h2>

<form action="/tbtrade/mypage.jsp" method="post">
<input type="submit" value="マイページに戻る">
</form>

<form action="/tbtrade/SearchServlet.jsp" method="post">
<input type="submit" value="検索へ戻る">
</form>

</body>
</html>