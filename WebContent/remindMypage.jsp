<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>remindMypage</title>
</head>
<body>

<h3>マイページ変更確認画面</h3>
<c:forEach items="${member}" var="members">
<tr><td>氏名</td><td>${members.member_name}</td></tr>
<tr><td>郵便番号</td><td>${members.postal}</td></tr>
<tr><td>住所</td><td>${members.address}</td></tr>
<tr><td>電話番号</td><td>${members.tel}</td></tr>
<tr><td>メールアドレス</td><td>${members.mailaddress}</td></tr>
<tr><td>パスワード</td><td>${members.password}</td></tr>
</c:forEach>

<form action="/tbtrade/editMypage.jsp" method="post">
<input type="submit" value="入力画面に戻る">
</form>

<form action="/tbtrade/EditMypageServlet?action=edit" method="post">
<input type="submit" value="変更する">
</form>

</body>
</html>