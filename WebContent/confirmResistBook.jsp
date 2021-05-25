<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>confirmResistBook</title>
</head>
<body>
<h3>新規商品入力確認画面</h3>
<table border="1">
<tr><td>商品名</td><td>著者名</td>
    <td>出版社</td><td>出版年</td><td>在庫数</td><td>削除</td></tr>

<tr>
	<td align="center">${name}</td>
	<td align="right">${author}</td>
	<td align="right">${datetime }</td>
	<td align="right">${publisher}</td>
	<td align="right">${stock}</td>
<td>
<form action="/tbtrade/RegistBookServlet?action=delete" method="post">
	<input type="hidden" name="action" value="delete">
	<input type="submit" value="削除">
</form>
</td>
</tr>
</table>
</body>
</html>