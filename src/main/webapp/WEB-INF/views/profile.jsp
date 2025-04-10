<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Profile</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            padding-top: 50px;
        }
        .container {
            width: 350px;
            padding: 20px;
            border: 1px solid #ccc;
            background-color: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 8px;
        }
        .field {
            margin-bottom: 15px;
        }
        .field label {
            font-weight: bold;
        }
        
        .button-group {
            display: flex;
            justify-content: space-between;
        }
        .edit-button {
            padding: 8px 16px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .edit-button:hover {
            background-color: #0056b3;
        }
        
        .delete-button {
            padding: 8px 16px;
            background-color: #dc3545;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .delete-button:hover {
            background-color: #c82333;
        }
        
    </style>
</head>
<body>

<div class="container">
    <h2>Welcome, ${user.userName}</h2>
    
    <div class="field">
        <label>User ID:</label> <span>${user.userId}</span>
    </div>

    <div class="field">
        <label>Username:</label> <span>${user.userName}</span>
    </div>

    <div class="field">
        <label>Phone:</label> <span>${user.phoneNum}</span>
    </div>

    <div class="field">
        <label>Email ID:</label> <span>${user.email}</span>
    </div>
    
    <div class="field">
        <label>Date of Birth:</label> <span>${user.dob}</span>
    </div>
    
    <div class="field">
        <label>Address:</label> <span>${user.address}</span>
    </div>

   <%--  <div class="field">
        <label>Accounts:</label> <span>${user.accountType}</span>
    </div>

    <div class="field">
        <label>Account Number:</label> <span>${user.accountNumber}</span>
    </div>  --%>

   <div class="button-group">
    <form action="editprofile" method="get">
        <button class="edit-button" type="submit">Edit Profile</button>
    </form>
    
    <form action="deleteAccount" method="post" onsubmit="return confirm('Are you sure you want to delete your account?');">
        <input type="hidden" name="userId" value="${user.userId}" />
        <button class="delete-button" type="submit">Delete Account</button>
    </form>
    <a href="index">Back to Home</a>
</div>

</div>

</body>
</html>
