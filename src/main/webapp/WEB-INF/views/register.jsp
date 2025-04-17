<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
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

        .register-container {
            background-color: rgba(255, 255, 255, 0.1);
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.2);
            width: 380px;
            text-align: center;
        }

        .register-container h2 {
            color: #2e5b9e; /* same as button color */
            font-size: 24px;
            margin-bottom: 20px;
        }

        .form-group {
            position: relative;
            margin-bottom: 18px;
        }

        .form-group input,
        .form-group select,
        .form-group textarea {
            width: 100%;
            padding: 12px 15px;
            border: none;
            border-radius: 5px;
            outline: none;
            font-size: 14px;
        }

        .form-group textarea {
            resize: vertical;
            height: 60px;
        }

        .checkbox-group {
            text-align: left;
            font-size: 12px;
            color: white;
            margin-top: 10px;
        }

        .checkbox-group input {
            margin-right: 6px;
        }

        .checkbox-group a {
            color: #fff;
            text-decoration: underline;
        }

        .register-btn {
            background-color: #2e5b9e;
            color: white;
            padding: 12px;
            border: none;
            width: 100%;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }

        .register-btn:hover {
            background-color: #234a82;
        }

        .login-link {
            margin-top: 15px;
            color: white;
            font-size: 12px;
        }

        .login-link a {
            color: #fff;
            text-decoration: underline;
            font-weight: bold;
        }

        .error-msg {
            color: red;
            margin-top: 10px;
        }

        @media screen and (max-height: 700px) {
            body {
                align-items: flex-start;
                padding-top: 20px;
            }
        }

        @media screen and (max-width: 400px) {
            .register-container {
                padding: 25px;
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <div class="register-container">
        <h2>USER REGISTRATION</h2>
        <form action="register" method="post">
            <div class="form-group">
                <input type="text" name="userName" placeholder="Enter your username" required>
            </div>

            <div class="form-group">
                <input type="email" name="email" placeholder="Enter your email" required>
            </div>

   

            <div class="form-group">
                <input type="password" name="password" placeholder="Enter your password" required>
            </div>

            <div class="form-group">
                <input type="password" name="confirmPassword" placeholder="Confirm your password" required>
            </div>

            <div class="form-group">
                <input type="text" name="firstName" placeholder="First Name" required>
            </div>

            <div class="form-group">
                <input type="text" name="lastName" placeholder="Last Name" required>
            </div>

            <div class="form-group">
                <input type="text" name="phoneNum" placeholder="Phone Number" required>
            </div>

            <div class="form-group">
                <input type="date" name="dob" required>
            </div>

            <div class="form-group">
                <textarea name="address" placeholder="Address" required></textarea>
            </div>

            

            <button type="submit" class="register-btn">Register Now</button>
        </form>

        <div class="login-link">
            Already registered? <a href="login">Login here</a>
        </div>
    </div>
</body>
</html>
