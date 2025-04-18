<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.example.SpringPaymentApp.Entity.BankAccounts" %>

<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f6f8;
        }

        .navbar {
            position: fixed;
            top: 0;
            width: 100%;
            background-color: #2c3e50;
            box-shadow: 0 2px 4px rgba(0,0,0,0.2);
            z-index: 1000;
        }

        .navbar a {
            float: left;
            display: block;
            color: white;
            text-align: center;
            padding: 16px 20px;
            text-decoration: none;
            font-weight: bold;
            transition: 0.3s ease;
        }

        .navbar a:hover {
            background-color: #ecf0f1;
            color: #2c3e50;
        }

        .content {
            margin-top: 70px;
            padding: 30px;
        }

        h2 {
            color: #34495e;
        }

        .form-container {
            display: none;
            margin-top: 30px;
            padding: 30px;
            width: 320px;
            border-radius: 20px;
            background-color: #ffffff;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.08);
            position: absolute;
            left: 50%;
            top: 140px;
            transform: translateX(-50%);
            text-align: center;
        }

        .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .form-group label {
            font-weight: 600;
            color: #333;
            margin-bottom: 6px;
            display: block;
        }

        .form-group input, .form-group select {
            width: 100%;
            padding: 10px 12px;
            border: 1px solid #dcdcdc;
            border-radius: 8px;
            font-size: 14px;
            background-color: #f9f9f9;
            transition: 0.3s;
        }

        .form-group input:focus, .form-group select:focus {
            border-color: #7a5cf0;
            background-color: #fff;
            outline: none;
        }

        button {
            padding: 12px 24px;
            background-color: #7a5cf0;
            color: white;
            border: none;
            border-radius: 12px;
            cursor: pointer;
            font-weight: 600;
            font-size: 15px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #6244d4;
        }

        .btn-container {
            margin-top: 20px;
        }

        .account {
            background-color: #ffffff;
            color: #2c3e50;
            display: inline-block;
            padding: 20px;
            margin: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.1);
            width: 300px;
            font-size: 15px;
            border: 1px solid #ccc;
        }

        .account table {
            width: 100%;
        }

        .account th {
            text-align: left;
            color: #34495e;
            padding-bottom: 6px;
        }

        .account td {
            padding: 4px 0;
        }
    </style>
</head>
<body>

<!-- Fixed Navbar -->
<div class="navbar">
    <a href="profile">Profile</a>
    <a href="sendmoneypage">Send Money</a>
    <a href="transactionpage">Transaction History</a>
    <a href="bankStatement">Bank Statement</a>
    <a href="addmoney">Add Money</a>
    <a href="logout">Logout</a>
</div>

<!-- Page Content -->
<div class="content">
    <h2>Welcome User</h2>

    <div class="btn-container">
        <button onclick="showForm()">➕ Add Account</button>
    </div>

    <%
        ArrayList<BankAccounts> accounts = (ArrayList<BankAccounts>) request.getAttribute("bankaccounts");
        if (accounts != null) {
            for (BankAccounts acc : accounts) {
    %>
        <div class="account">
            <table>
                <tr><th>Bank Name</th><td><%= acc.getBankName() %></td></tr>
                <tr><th>Account Number</th><td><%= acc.getAccountNumber() %></td></tr>
                <tr><th>Name</th><td><%= session.getAttribute("userName") %></td></tr>
            </table>
        </div>
    <%
            }
        } else {
    %>
        <p>No bank accounts found.</p>
    <%
        }
    %>

    <div id="accountForm" class="form-container">
        <form action="addBankAccount">
            <div class="form-group">
                <label for="accountNumber">Account Number</label>
                <input type="text" id="accountNumber" name="accountNumber" required>
            </div>

            <div class="form-group">
                <label for="ifsc">IFSC Code</label>
                <input type="text" id="ifsc" name="ifsc" required>
            </div>

            <div class="form-group">
                <label for="bankName">Bank Name</label>
                <input type="text" id="bankName" name="bankName" required>
            </div>

            <div class="form-group">
                <label for="branch">Branch Location</label>
                <input type="text" id="branch" name="branch" required>
            </div>

            <div class="form-group">
                <label for="isActive">Is Active</label>
                <select id="isActive" name="isActive" required>
                    <option value="">Select</option>
                    <option value="true">Yes</option>
                    <option value="false">No</option>
                </select>
            </div>

            <button type="submit">Submit</button>
        </form>
    </div>
</div>

<!-- Show Alert Box from Backend Message -->
<script>
    <% 
        String msg = (String) request.getAttribute("msg");
        if (msg != null) { 
    %>
        alert("<%= msg.replace("\"", "\\\"") %>");
    <% 
        } 
    %>

    function showForm() {
        const form = document.getElementById('accountForm');
        form.style.display = form.style.display === 'block' ? 'none' : 'block';
    }
</script>

</body>
</html>
