<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage</title>
</head>
<body>

<h3>マイページ</h3>
<c:forEach items="${member}" var="members">
<tr><td>氏名</td><td>${members.member_name}</td></tr>
<tr><td>郵便番号</td><td>${members.postal}</td></tr>
<tr><td>住所</td><td>${members.address}</td></tr>
<tr><td>電話番号</td><td>${members.tel}</td></tr>
<tr><td>メールアドレス</td><td>${members.mailaddress}</td></tr>
<tr><td>パスワード</td><td>${members.password}</td></tr>
</c:forEach>

<form action="/tbtrade/mylog.jsp" method="post">
<input type="submit" value="取引履歴を見る">
</form>

<form action="/tbtrade/editMypage.jsp" method="post">
<input type="submit" value="登録情報を変更する">
</form>

<form action="/tbtrade/showBuyCart.jsp" method="post">
<input type="submit" value="カートの中身を見る">
</form>

<form action="/tbtrade/SearchServlet.jsp" method="post">
<input type="submit" value="検索へ戻る">
</form>

</body>
</html>