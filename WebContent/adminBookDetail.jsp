<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/tbtrade/bookSearch.jsp" method="post">
<input type="submit" value="検索に戻る">
</form>

<!-- ここはサーブレット内で記入だな -->

<table border=1>
	<tr>
		<th>タイトル</th>
		<td>${book.book_name}</td>
	</tr>

	<tr>
		<th>著者</th>
		<td>${book.author}</td>
	</tr>

	<tr>
		<th>刊行日</th>
		<td>${book.publication_date}</td>
	</tr>

	<tr>
		<th>出版社名</th>
		<td>${book.publisher}</td>
	</tr>

	<tr>
		<th>価格</th>
		<td>${book.price}</td>
	</tr>

	<tr>
		<th>在庫数</th>
		<td>${book.stock}</td>
	</tr>
</table>

<input type="number" value="quantity">

冊

<form action="/tbtrade/EditBookServlet" method="post">
<input type="submit" value="編集する">
<input type="hidden" name="action" value="edit">
</form>

<form action="/tbtrade/BookContentsServlet" method="post">
<input type="submit" value="カートに入れる">
<input type="hidden" name="action" value="into">
</form>

</body>
</html>