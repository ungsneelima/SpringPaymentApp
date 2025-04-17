<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to bottom right, #a2c0e8, #6f8fc9);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-container {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            width: 350px;
            text-align: center;
        }

        .login-container h2 {
            color: #2e5b9e; /* Updated to match button */
            font-size: 24px;
            margin-bottom: 20px;
        }

        .input-group {
            position: relative;
            margin-bottom: 20px;
        }

        .input-group input {
            width: 100%;
            padding: 12px 40px 12px 40px;
            border: none;
            border-radius: 5px;
            outline: none;
            font-size: 14px;
        }

        .input-group::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 12px;
            transform: translateY(-50%);
            width: 20px;
            height: 20px;
            background-size: contain;
            background-repeat: no-repeat;
        }

        .input-group.username::before {
            background-image: url('https://cdn-icons-png.flaticon.com/512/1077/1077114.png');
        }

        .input-group.password::before {
            background-image: url('https://cdn-icons-png.flaticon.com/512/3064/3064155.png');
        }

        .options {
            display: flex;
            justify-content: space-between;
            align-items: center;
            font-size: 12px;
            margin-bottom: 20px;
            color: white;
        }

        .options input[type="checkbox"] {
            margin-right: 5px;
        }

        .login-btn {
            background-color: #2e5b9e;
            color: white;
            padding: 12px;
            border: none;
            width: 100%;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .login-btn:hover {
            background-color: #234a82;
        }

        .register-link {
            margin-top: 15px;
            color: white;
            font-size: 12px;
        }

        .error-msg {
            color: red;
            margin-top: 10px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>USER LOGIN</h2>
        <form action="login" method="post">
            <div class="input-group username">
                <input type="text" name="userName" placeholder="Username" required>
            </div>
            <div class="input-group password">
                <input type="password" name="password" placeholder="Password" required>
            </div>
            <input type="submit" class="login-btn" value="LOGIN">
        </form>
        <div class="register-link">
            Not registered? <a href="register" style="color: #fff; text-decoration: underline;">Register here</a>
        </div>
        <div class="error-msg">${error}</div>
    </div>
</body>
</html>
