<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/tbtrade/bookSearch.jsp" method="post">
<input type="submit" value="検索に戻る">
</form>

<!-- ここはサーブレット内で記入だな -->
タイトル
<br>
著者：
<br>
出版年：
<br>
出版社：
<br>
値段：
<br>
在庫数：
<br>

<form action="/tbtrade/BookContentsServlet" method="post">
<input type="submit" value="カートに入れる">
<input type="hidden" name="action" value="into">
</form>

</body>
</html>