<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理者用会員検索ページ</title>
</head>
<body>

<form action="/tbtrade/adminTop.jsp" method="post">
<input type="submit" value="管理者トップ">
</form>

<br>
<br>
会員ID:
<form action="/tbtrade/SearchMemberServlet?action=search" method="post">
<input type="text" name="member_name"><br>
</form>
会員名：
<form action="/tbtrade/SearchMemberServlet?action=search" method="post">
<input type="text" name="member_name"><br>
</form>
査定中あり
<input type="radio" name="radiobutton" value="under_assesing">

<br>
<br>
<form action="/tbtrade/SearchMemberServlet?action=search
" method="post">
<input type="submit" value="検索する">
</form>

</body>
</html>