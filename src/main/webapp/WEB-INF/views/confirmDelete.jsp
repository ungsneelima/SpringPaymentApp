<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Confirm Deletion</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f8f8f8;
            display: flex;
            justify-content: center;
            padding-top: 100px;
        }
        .box {
            text-align: center;
            padding: 30px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.15);
        }
        .btn {
            padding: 10px 20px;
            margin: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .yes {
            background-color: #dc3545;
            color: white;
        }
        .no {
            background-color: #6c757d;
            color: white;
        }
    </style>
</head>
<body>
<div class="box">
    <h2>Are you sure you want to delete your account, ${user.userName}?</h2>
    
    <form action="deleteAccount" method="post" style="display:inline;">
        <input type="hidden" name="userId" value="${user.userId}" />
        <button type="submit" class="btn yes">Yes, Delete</button>
    </form>

    <form action="profile" method="get" style="display:inline;">
        <button type="submit" class="btn no">Cancel</button>
    </form>
</div>
</body>
</html>
