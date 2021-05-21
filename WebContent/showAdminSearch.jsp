<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>showAdminSearch</title>
</head>
<body>

<jsp:include page="/adminSearch.jsp" />
<hr>
<table border="1">
<tr><td>タイトル</td><td>${title}</td></table>

</body>
</html>