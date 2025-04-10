<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Money</title>
    <style>
        body {
            font-family: monospace;
            background-color: #fdfdfd;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            border: 2px solid maroon;
            padding: 20px 30px;
            border-radius: 5px;
            color: maroon;
        }

        .title {
            text-align: center;
            font-weight: bold;
            font-size: 20px;
            margin-bottom: 20px;
        }

        .info {
            text-align: center;
            margin-bottom: 20px;
        }

        .info span {
            margin: 0 10px;
            font-weight: bold;
        }

        .form-row {
            margin-bottom: 10px;
            display: flex;
            align-items: center;
        }

        .form-row label {
            margin-right: 10px;
            font-weight: bold;
        }

        .form-row input[type="text"] {
            border: 2px solid green;
            padding: 5px 10px;
            font-family: monospace;
            font-weight: bold;
        }

        .submit-button {
            margin-left: 90px;
            margin-top: 10px;
            border: 2px solid green;
            background-color: #fff;
            padding: 5px 15px;
            cursor: pointer;
            font-weight: bold;
            font-family: monospace;
        }

        .submit-button:hover {
            background-color: #e6ffe6;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="title">ADD &nbsp; Money</div>

        <div class="info">
            <span>Acct No: ${userAccount.accNo}</span> |
            <span>IFSC Code: ${userAccount.ifscCode}</span> |
            <span>CURR BAL: ${userAccount.currBalance}</span>
        </div>

        <form action="addMoney" method="post">
            <div class="form-row">
                <label>Amount</label> :
                <input type="text" name="amount" required />
            </div>
            <button type="submit" class="submit-button">Deposit</button>
            <a href="index">Back to Home</a>
        </form>
    </div>
</body>
</html>
