<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>showAdminSearch</title>
</head>
<body>

<jsp:include page="/adminSearch.jsp" />
<br>
<br>

<h4>${search.quantity}件ヒットしました</h4>

<!-- 可能なら本のタイトルからリンクで詳細に飛べるようにする -->
検索結果
（本のタイトルから書籍詳細に飛べます）
<br>
<table border="1">
<c:forEach items="${adminBooks}" var="adminBook">
<tr><td>タイトル</td><td><a href= "${adminBook.book_name}" >${adminBook.book_name}</a></td><td></tr>
<tr><td>著者名</td><td>${adminBook.author}</td><td></tr>
<tr><td>値段</td><td>${adminBook.price}</td><td></tr>
</c:forEach>
</table>


</body>
</html>