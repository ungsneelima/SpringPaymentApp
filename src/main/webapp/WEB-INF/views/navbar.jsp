<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Navbar</title>
    <style>
        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            background-color: #333;
            overflow: hidden;
            z-index: 1000;
        }
        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }
        .navbar a:hover {
            background-color: #ddd;
            color: black;
        }
        .content {
            margin-top: 50px; /* Prevent content hiding under navbar */
            padding: 20px;
        }
    </style>
</head>
<body>

<div class="navbar">
    <a href="profile.jsp">Profile</a>
    <a href="transactions.jsp">Transactions History</a>
    <a href="bankStatement.jsp">Bank Statement</a>
    <a href="logout.jsp">Logout</a>
</div>

</body>
</html>
