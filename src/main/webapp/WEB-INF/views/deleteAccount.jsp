<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="deleteAccount" method="post">
    <input type="hidden" name="userId" value="${user.userId}" />
    <button class="delete-button" type="submit">Delete Account</button>
</form>


</body>
</html>