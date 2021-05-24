<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- いえーい -->

<form action="/tbtrade/bookSearch.jsp" method="post">
<input type="submit" value="買い物を続ける">
</form>

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

</body>
</html>