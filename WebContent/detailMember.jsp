<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理者用会員情報詳細画面</title>
</head>
<body>

<h3>会員情報詳細</h3>
<table border="1">
<c:forEach items="${member}" var="members">
<tr><td>氏名</td><td>${members.member_name}</td></tr>
<tr><td>郵便番号</td><td>${members.postal}</td></tr>
<tr><td>住所</td><td>${members.address}</td></tr>
<tr><td>電話番号</td><td>${members.tel}</td></tr>
<tr><td>メールアドレス</td><td>${members.mailaddress}</td></tr>
<tr><td>パスワード</td><td>${members.password}</td></tr>
</c:forEach>
</table>

<h3>取引履歴</h3>
<table border="1">
<c:forEach items="${log}" var="logs">
<tr><td>売買判別</td><td>${logs.is_sell}</td></tr>
<tr><td>取引日</td><td>${logs.datetime}</td></tr>
<tr><td>タイトル</td><td>${logs.title}</td></tr>
<tr><td>冊数</td><td>${logs.quantity}</td></tr>
<tr><td>値段</td><td>${logs.price}</td></tr>
</c:forEach>
</table>

</body>
</html>