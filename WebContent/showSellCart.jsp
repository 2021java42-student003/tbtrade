
<!- 未完成です ->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome shopping!</title>
</head>
<body>

<jsp:include page="/menu.jsp" /><br>
<h3>現在のカートの中身</h3>

<c:if test="${empty cart.items}">
現在、カートは空です。
</c:if>

<c:if test="${not empty cart.items}">
<table border="1">
<tr><td>商品名</td><td>著者名</td>
    <td>出版社</td><td>出版年</td><td>削除</td></tr>

<c:forEach items="$" var="item">
<tr>
	<td align="center"></td>
	<td align="right"></td>
	<td align="right"></td>
	<td align="right"></td>
<td>
<form action="/shopping/SellCartServlet?action=delete" method="post">
	<input type="hidden" name="action" value="delete">
	<input type="submit" value="削除">
</form>
</td>
</tr>
</c:forEach>
</table>

<form action="/shopping/SellCartServlet?action=confirm" method="post">
	<input type="submit" value="売却確認">
</form>
</c:if>

</body>
</html>