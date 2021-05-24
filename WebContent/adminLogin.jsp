<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setAttribute("err", "");
    session.setAttribute("err", "");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminLogin</title>
</head>
<body>

<h3>管理者ログイン画面</h3>


<%if(request.getAttribute("err") != null) { %>
<%= request.getAttribute("err")%>
<%} %>

<form action="/tbtrade/AdminLoginServlet" method="post">
ログインID<br>
<input type="text" name="mail">
<br><br>
パスワード<br>
<input type="text" name="password">
<br><br>
<input type="submit" value="ログインする">

</form>



<br><br><br><br>

<form action="/tbtrade/login.html" method="post">
<input type="submit" value="ログイン画面に戻る">
</form>

</body>
</html>