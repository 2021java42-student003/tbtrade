<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>showRegistInfo</title>
</head>
<body>

<h3>新規登録　＊入力確認画面＊</h3>

<form action="/tbtrade/memberRegist.jsp" method="post">
<input type="submit" value="入力画面に戻る">
</form>

<br><br>

氏名：
<br>
郵便番号：
<br>
住所：
<br>
電話番号：
<br>
メールアドレス（ログインID）：
<br>
パスワード：

<form action="/tbtrade/MemberRegistServlet" method="post">
<input type="submit" value="登録する">
</form>

</body>
</html>