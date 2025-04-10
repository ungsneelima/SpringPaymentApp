<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background-color: #f0f4f8;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            padding-top: 60px; /* Space for the fixed navbar */
        }

        /* Fixed Navbar Styling */
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

        /* Content Section Styling */
        .content {
            padding: 20px;
            text-align: center;
        }

        /* Success Message Styling */
        .success-message {
            background-color: #28a745;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            margin-bottom: 20px;
            font-weight: bold;
        }

        /* Button Styling */
        button {
            background-color: #007bff;
            color: #fff;
            padding: 12px 24px;
            font-size: 16px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }

        button:hover {
            background-color: #0056b3;
        }

        /* Form Container Styling */
        .form-container {
            display: none;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
            padding: 40px;
            margin: 20px auto;
            transition: transform 0.3s ease, opacity 0.3s ease;
        }

        /* Show Form Transition */
        .form-container.show {
            display: block;
            opacity: 1;
            transform: translateY(0);
        }

    </style>
</head>
<body>

<!-- Fixed Navbar -->
<div class="navbar">
    <a href="profile">Profile</a>
    <a href="sendMoney">Send Money</a>
    <a href="addMoney">Add Money</a>
    <a href="viewTransactions">View Transactions</a>
    <a href="logout">Logout</a>
</div>

<!-- Page Content -->
<div class="content">
    <h2>Welcome</h2>
    <p>This is your home page.</p>

    <!-- Success Message -->
    <c:if test="${not empty successMessage}">
        <div class="success-message">${successMessage}</div>
    </c:if>

    <!-- Button to show the form -->
    <button onclick="showForm()">Add Account</button>
</div>

<!-- Form Container -->
<div id="accountForm" class="form-container">
    <h2>Add Bank Account</h2>
    <form action="addBankAccount" method="post">
        <div class="form-group">
            <label for="accountNumber">Account Number</label>
            <input type="text" id="accountNumber" name="accountNumber" required>
        </div>

        <div class="form-group">
            <label for="ifscCode">IFSC Code</label>
            <input type="text" id="ifscCode" name="ifscCode" required>
        </div>

        <div class="form-group">
            <label for="bankName">Bank Name</label>
            <input type="text" id="bankName" name="bankName" required>
        </div>

        <div class="form-group">
            <label for="branchLocation">Branch Location</label>
            <input type="text" id="branchLocation" name="branchLocation" required>
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

<script>
    // Function to show the form with animation
    function showForm() {
        const form = document.getElementById('accountForm');
        form.classList.add('show');
    }
</script>

</body>
</html>