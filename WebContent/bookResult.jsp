<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

件ヒットしました
<br>

<form action="/tbtrade/BookContentsServlet" method="post">
<input type="submit" value="検索に戻る">
<input type="hidden" name="action" value="back">
</form>

<!-- ここはサーブレットでfor文回すと思う -->
タイトル：
<br>
著者：
<br>
価格：
<br>

<form action="/tbtrade/BookContentsServlet" method="post">
<input type="submit" value="商品ページ">
<input type="hidden" name="action" value="detail">
</form>

</body>
</html>