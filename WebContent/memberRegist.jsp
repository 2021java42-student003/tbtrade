<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberRegist</title>
</head>
<body>

<h3>新規登録</h3>
<form action="/tbtrade/login.html" method="post">
<input type="submit" value="ログイン画面に戻る">
</form>
<br><br><br>

<form action="/tbtrade/MemberRegistServlet" method="post">
氏名<input type="text" name="name"><br>
郵便番号<input type="text" name="postel"><br>
住所<input type="text" name="address"><br>
電話番号<input type="text" name="tel"><br>
メールアドレス<input type="text" name="mail"><br>
パスワード<input type="text" name="password"><br>
<input type="submit" value="確認する">
</form>


</body>
</html>