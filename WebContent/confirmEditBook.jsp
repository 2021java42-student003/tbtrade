<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:include page="/editBook.jsp"/>

<form action="/tbtrade/EditBookServlet?action=confirm" method="post">
	<input type="submit" value="確認する">
</form>

<form action="/tbtrade/adminBookDetail.jsp" method="post">
	<input type="submit" value="商品詳細に戻る">
</form>


</body>
</html>