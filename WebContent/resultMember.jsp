<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理者用会員検索結果ページ</title>
</head>
<body>

管理者用会員検索結果ページ

<form action="/tbtrade/adminTop.jsp" method="post">
<input type="submit" value="管理者トップへ戻る">
</form>

<!-- サーブレットで検索結果をスコープに入れておく。ここではEL式で取り出すだけにする -->
<table border="1">
<c:forEach items="${members}" var="Member">
<tr><td>名前</td><td><a href= "${Member.member_name}" >${Member.member_name}</a></td></tr>
<tr><td>ID</td><td><a href= "${Member.member_id}" >${Member.member_id}</a></td></tr>

</c:forEach>
</table>

<br>
<br>
<form action="/tbtrade/searchMember.jsp" method="post">
<input type="submit" value="会員検索へ戻る">
</form>



</body>
</html>