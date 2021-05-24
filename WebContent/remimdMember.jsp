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
<tr><td>氏名</td><td>郵便番号</td>
    <td>住所</td><td>電話番号</td><td>メールアドレス</td><td>パスワード</td></tr>

<c:forEach items="${member}" var="members">
<tr>

<td align="center">${members.member_name}</td>
	<td align="right">${members.postal}</td>
	<td align="right">${members.address}</td>
	<td align="right">${members.tel}</td>
	<td align="right">${members.mailaddress}</td>
	<td align="right">${members.password}</td>
</tr>
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