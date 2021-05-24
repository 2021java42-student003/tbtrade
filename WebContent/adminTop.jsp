<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdminTop</title>
</head>
<body>

<h3>管理者TOP</h3>

<form action="/tbtrade/login.html" method="post">
<input type="submit" value="ログアウト">
</form>

<br><br><br>

<form action="/tbtrade/adminSearch.jsp" method="post">
<input type="submit" value="商品検索">・・・既存商品の検索、編集
</form>

<br><br><br>

<form action="/tbtrade/registBook.jsp" method="post">
<input type="submit" value="新規商品の登録">・・・新規商品の登録
</form>

<br><br><br>

<form action="/tbtrade/memberSearch.jsp" method="post">
<input type="submit" value="会員情報の検索、編集">・・・会員情報の検索、編集
</form>

<br><br><br>

</body>
</html>