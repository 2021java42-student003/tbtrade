<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>注文確認</h3>

<jsp:include page="/showBuyCart.jsp"/>

<!-- includeでカート表示のほうがいいかも

<table border=1>
	<tr>
		<th>タイトル</th>
		<th>価格</th>
		<th>購入数</th>
		<th>小計</th>
	</tr>

	<tr>
		<th>タイトル学入門</th>
		<th>5千億兆円</th>
		<th>購入数プルダウン</th>
		<th></th>
	</tr>
</table>

<table border=1>
	<tr>
		<th>氏名</th>
		<th></th>
	</tr>
	<tr>
		<th>郵便番号</th>
		<th></th>
	</tr>
	<tr>
		<th>住所</th>
		<th></th>
	</tr>
</table>

合計金額<br>

-->

<form action="/tbtrade/BuyServlet" method="post">
			<input type="submit" value="注文確定">
			<input type="hidden" name="action" value="order">
</form>

</body>
</html>