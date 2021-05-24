 <!-- 未完成 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>confirmsell</title>
</head>
<body>
<jsp:include page="/showSellCart.jsp"/>

<form action="/tbtrade/SellServlet?action=buy" method="post">
	<input type="submit" value="売却する">
</form>

<form action="/tbtrade/showSellCart.jsp" method="post">
	<input type="submit" value="売却リストに戻る">
</form>

</body>
</html>