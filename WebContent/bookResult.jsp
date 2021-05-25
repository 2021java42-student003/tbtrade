<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show BookSearch Result</title>
</head>
<body>


件ヒットしました
<br>

<form action="/tbtrade/bookSearch.jsp" method="post">
<input type="submit" value="検索に戻る">
</form>

<!-- ここはサーブレットでfor文回すと思う -->

<table border=1>
	<tr>
		<th>タイトル</th>
		<th>著者</th>
		<th>価格</th>
		<th>購入</th>
	</tr>

	<c:forEach items="${books}" var="book">
		<tr><td>${book.book_name}</td><td>${book.author}</td><td>${book.price}</td><td><input type="submit" value="商品ページ"></td></tr>
	</c:forEach>

	<!-- <tr>
		<th>タイトル学入門</th>
		<th>著者太郎</th>
		<th>5千億兆円</th>
		<th>
			<form action="/tbtrade/BookContentsServlet" method="post">
			<input type="submit" value="商品ページ">
			<input type="hidden" name="action" value="detail">
			</form>
		</th>
	</tr> -->
</table>



</body>
</html>