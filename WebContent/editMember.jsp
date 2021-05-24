<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理者用会員情報編集画面</title>
</head>
<body>

<h3>管理者用会員情報編集画面</h3>

<!-- サーブレットで元々の会員情報のをスコープに入れておき、ここではEL式で取り出し、入力フォームに予め表示させておく -->
<!-- value=〇〇の〇〇の部分が予めフォームに出力されている文字になる -->

<h3>会員情報詳細</h3>
会員情報を削除する
<input type="radio" name="radiobutton" value="delete_member">

<br>
氏名：<form action="/tbtrade/SearchServlet" method="post">
<input type="text" name="member_name" value=${member_name}>
</form>

郵便番号：<form action="/tbtrade/SearchServlet" method="post">
<input type="text" name="members_postal" value=${members_postal}>
</form>

住所：<form action="/tbtrade/SearchServlet" method="post">
<input type="text" name="members_address" value=${members_address}>
</form>

電話番号：<form action="/tbtrade/SearchServlet" method="post">
<input type="text" name="members_tel" value=${members_tel}>
</form>

メールアドレス：<form action="/tbtrade/SearchServlet" method="post">
<input type="text" name="members.mailaddress" value=${members.mailaddress}>
</form>

パスワード：<form action="/tbtrade/SearchServlet" method="post">
<input type="text" name="members.mailaddress" value=${members.mailaddress}>
</form>

<br>
<form action="/tbtrade/EditmemberServlet?action=confirm" method="post">
<input type="submit" value="入力内容を確認する">
</form>

</body>
</html>