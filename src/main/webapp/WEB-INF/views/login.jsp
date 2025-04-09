<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:if test="${param.accountDeleted == 'true'}">
    <div style="color: green; font-weight: bold; margin-bottom: 10px;">
        Your account has been deleted successfully.
    </div>
</c:if>
    
<html>
<head><title>Login</title></head>
<body>
    <h2>Login</h2>
    <form action="login" method="post">
        <label>Username:</label>
        <input type="text" name="userName" required><br>
        <label>Password:</label>
        <input type="password" name="password" required><br>
        <input type="submit" value="Login">
    </form>
    <p>Not registered? <a href="register">Register here</a></p>
    <p style="color:red">${error}</p>
</body>
</html>
