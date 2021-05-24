<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理者用会員情報変更確認画面</title>
</head>
<body>

<h3>管理者用会員情報変更確認画面</h3>

<!-- ここではスコープに入れた変更情報を出力するだけになります。値の名前が違っていたら修正してください -->

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

<form action="/tbtrade/editMember.jsp" method="post">
<input type="submit" value="編集画面に戻る">
</form>

<form action="/tbtrade/EditMemberServlet?action=done" method="post">
<input type="submit" value="変更を確定する">
</form>

</body>
</html>