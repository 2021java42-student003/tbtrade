<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EditBook</title>
</head>
<body>

<form action="/tbtrade/EditBookServlet" method="post">
タイトル<input type="text" name="title"><br>
著者名<input type="text" name="author"><br>
出版年<input type="text" name="publication_date"><br>
出版社<input type="text" name="publisher"><br>
値段<input type="text" name="price"><br>
冊数<input type="text" name="stock"><br>
<input type="submit" value="確認する">
</form>


</body>
</html>