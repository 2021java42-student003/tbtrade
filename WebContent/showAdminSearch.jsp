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

<br>
<table border="1">
<tr><td>タイトル</td><td>${title}</td><td><form action="/tbtrade/EditBookServlet?book_id=書籍番号" method="post">
<input type="submit" value="本の詳細を見る">
</form>
</td></tr>
</table>


</body>
</html>