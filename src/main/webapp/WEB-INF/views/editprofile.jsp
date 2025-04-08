<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Profile</title>
    <style>
        body {
            font-family: Arial;
            background-color: #f9f9f9;
            display: flex;
            justify-content: center;
            padding-top: 50px;
        }
        .container {
            width: 400px;
            padding: 25px;
            border: 1px solid #ccc;
            background-color: white;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            border-radius: 8px;
        }
        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }
        input[type="text"],
        input[type="date"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        .submit-button {
            width: 100%;
            background-color: #007bff;
            color: white;
            padding: 10px;
            font-size: 15px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }
        .submit-button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Edit Profile</h2>

    <form:form action="${pageContext.request.contextPath}/updateProfile" method="post" modelAttribute="user">
        <form:hidden path="userId"/>

        <div class="form-group">
            <label>Username:</label>
            <form:input path="userName"/>
        </div>

        <div class="form-group">
            <label>Phone:</label>
            <form:input path="phoneNum"/>
        </div>

        <div class="form-group">
            <label>Email:</label>
            <form:input path="email"/>
        </div>

        <div class="form-group">
            <label>Date of Birth:</label>
            <form:input path="dob" type="date"/>
        </div>

        <div class="form-group">
            <label>Address:</label>
            <form:input path="address"/>
        </div>

        <input type="submit" value="Update Profile" class="submit-button"/>
    </form:form>
</div>

</body>
</html>
