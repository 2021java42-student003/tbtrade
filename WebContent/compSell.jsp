<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>compsell</title>
</head>
<body>

	<h3 style="text-align: center">
		売却ありがとうございました。<br> ただいま審査いたしますのでしばらくお待ちください。
	</h3>

	<form action="/tbtrade/bookSearch.jsp" method="post">
		<input type="submit" value="検索画面に戻る">
	</form>

	<form action="/tbtrade/login.jsp" method="post">
		<input type="submit" value="ログアウト">
	</form>

</body>
</html>