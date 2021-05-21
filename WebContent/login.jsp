<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>

<h1>教科書売買サイト</h1>

<h3>ログイン画面</h3>

<%if(request.getAttribute("err") != null) { %>
<%= request.getAttribute("err")%>
<%} %>

<form action="/tbtrade/SearchServlet" method="post">
ログインID（メールアドレス）
<br>
<input type="text" name="mail">
<br><br>
パスワード
<br>
<input type="text" name="password">

<input type="submit" value="ログインする">
</form>


<form action="/tbtrade/memberRegist.jsp" method="post">
初めての方はこちら➡
<input type="submit" value="新規登録">
</form>

<br><br>

<form action="/tbtrade/adminLogin.jsp" method="post">
管理者の方はこちら➡
<input type="submit" value="管理者ログイン">
</form>



</body>
</html>