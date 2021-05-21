<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>editMypage</title>
</head>
<body>

<h3>マイページ変更画面</h3>
    名前：<input type="text" name="member_name"><br>
    郵便番号：<input type="text" name="postal"><br>
    住所：<input type="text" name="address"><br>
    電話番号：<input type="text" name="tel"><br>
    メールアドレス：<input type="text" name="mailaddress"><br>
    パスワード：<input type="text" name="password"><br>

<form action="/tbtrade/mypage.jsp" method="post">
<input type="submit" value="マイページに戻る">
</form>

<form action="/tbtrade/EditMypageServlet?action=confirm" method="post">
<input type="submit" value="マイページ変更確認">
</form>


</body>
</html>