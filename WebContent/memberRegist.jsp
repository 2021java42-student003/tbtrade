<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberRegist</title>
</head>
<body>

<h3>新規登録</h3>
<form action="/tbtrade/login.html" method="post">
<input type="submit" value="ログイン画面に戻る">
</form>
<br><br><br>

<form action="/tbtrade/MemberRegistServlet" method="post">

<%if(request.getAttribute("name") == null){ %>
氏名<input type="text" name="name"><br>
<%}else{ %>
氏名<input type="text" name="name" value=<%=request.getAttribute("name") %>><br>
<%} %>

<%if(request.getAttribute("postel") == null){ %>
郵便番号<input type="text" name="postel"><br>
<%}else{ %>
郵便番号<input type="text" name="postel" value=<%=request.getAttribute("postel") %>><br>
<%} %>

<%if(request.getAttribute("address") == null){ %>
住所<input type="text" name="address"><br>
<%}else{ %>
住所<input type="text" name="address" value=<%=request.getAttribute("address") %>><br>
<%} %>

<%if(request.getAttribute("tel") == null){ %>
電話番号<input type="text" name="tel"><br>
<%}else{ %>
電話番号<input type="text" name="tel" value=<%=request.getAttribute("tel") %>><br>
<%} %>

<%if(request.getAttribute("mail") == null){ %>
メールアドレス<input type="text" name="mail"><br>
<%}else{ %>
メールアドレス<input type="text" name="mail" value=<%=request.getAttribute("mail") %>><br>
<%} %>

<%if(request.getAttribute("password") == null){ %>
パスワード<input type="text" name="password"><br>
<%}else{ %>
パスワード<input type="text" name="password" value=<%=request.getAttribute("password") %>><br>
<%} %>


<input type="submit" value="確認する">

</form>


</body>
</html>