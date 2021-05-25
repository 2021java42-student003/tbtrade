<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>showBuyCart</title>
</head>
<body>

<!-- いえーい -->

<form action="/tbtrade/bookSearch.jsp" method="post">
<input type="submit" value="買い物を続ける">
</form>


<h3>現在のカートの中身</h3>

<c:if test="${empty cart.buybooks}"> <!-- データを作るのはモデル、セットするのはコントローラー -->
現在、カートは空です。
</c:if>

<c:if test="${not empty cart.buybooks}">
<table border="1">
<tr><td>商品名</td><td>著者名</td>
    <td>出版年</td><td>出版社</td>
    <td>購入数</td><td>削除</td>
</tr>

<c:forEach items="${cart.buybooks }" var="item">
<tr>
	<td align="center">${name}</td>
	<td align="right">${author}</td>
	<td align="right">${datetime }</td>
	<td align="right">${publisher}</td>
	<td>
	<input type="number" name="quantity">
	</td>
	<td>
		<form action="/tbtrade/BuyCartServlet?action=delete" method="post">
			<input type="hidden" name="action" value="delete">
			<input type="submit" value="削除">
</form>
	</td>
</tr>
</c:forEach>
</table>

<form action="/tbtrade/BuyServlet?action=confirm" method="post">
	<input type="submit" value="注文確認">
</form>
</c:if>



<!--
<table border=1>
	<tr>
		<th>タイトル</th>
		<th>価格</th>
		<th>購入数</th>
		<th></th>
	</tr>

	<tr>
		<th>タイトル学入門</th>
		<th>5千億兆円</th>
		<th>購入数プルダウンを入れよう</th>
		<th>
			<form action="/tbtrade/CartServlet" method="post">
			<input type="submit" value="削除">
			<input type="hidden" name="action" value="delete">
			</form>
		</th>
	</tr>
</table>

<form action="/tbtrade/BuyServlet" method="post">
<input type="submit" value="注文確定">
<input type="hidden" name="action" value="conform">
</form>
-->
</body>
</html>