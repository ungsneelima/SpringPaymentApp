<!DOCTYPE html>
<html>
<head>
    <title>Send Money</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f4f7f8;
            display: flex;
            justify-content: center;
            align-items: center;
            padding-top: 40px;
        }

        .container {
            background-color: #fff;
            padding: 20px 25px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 320px;
        }

        h2 {
            text-align: center;
            color: #2c3e50;
            font-size: 20px;
            margin-bottom: 18px;
        }

        label {
            display: block;
            margin: 8px 0 4px;
            font-weight: 600;
            font-size: 14px;
        }

        input[type="text"],
        select {
            width: 100%;
            padding: 8px;
            margin-bottom: 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 13px;
        }

        .radio-group {
            margin-bottom: 12px;
        }

        .radio-label {
            display: block;
            margin-bottom: 6px;
            font-weight: 600;
            font-size: 13px;
            color: #333;
        }

        input[type="radio"] {
            margin-right: 4px;
        }

        button {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            background-color: #3498db;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #2980b9;
        }

        a {
            display: block;
            text-align: center;
            margin-top: 10px;
            font-size: 13px;
            color: #3498db;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>SEND MONEY</h2>
    <form>
        <label for="amount">Amount to Send:</label>
        <input type="text" id="amount" name="amount" required>

        <label for="from">From:</label>
        <select id="from" name="from" required onchange="updateOptions()">
            <option value="">-- Select --</option>
            <option value="bank">Bank Account</option>
            <option value="wallet">Wallet</option>
        </select>

        <div class="radio-group">
            <label class="radio-label">
                <input type="radio" name="destination" value="bank" onclick="toggleFields()">To Bank
            </label>
            <label class="radio-label">
                <input type="radio" name="destination" value="wallet" onclick="toggleFields()">To Wallet
            </label>
        </div>

        <label for="toAccount">To Account Number:</label>
        <input type="text" id="toAccount" name="toAccount">

        <label for="toWallet">To Wallet:</label>
        <input type="text" id="toWallet" name="toWallet">

        <button type="submit">SEND</button>
        <a href="index">Back to Home</a>
    </form>
</div>

<script>
    function toggleFields() {
        const from = document.getElementById("from").value;
        const destination = document.querySelector('input[name="destination"]:checked').value;

        const accountInput = document.getElementById("toAccount");
        const walletInput = document.getElementById("toWallet");

        if (destination === "bank") {
            accountInput.disabled = false;
            walletInput.disabled = true;
            walletInput.value = "";
            walletInput.placeholder = "Disabled";
        } else {
            walletInput.disabled = false;
            accountInput.disabled = true;
            accountInput.value = "";
            accountInput.placeholder = "Disabled";
        }
    }

    function updateOptions() {
        // Trigger re-check if radio button already selected
        if (document.querySelector('input[name="destination"]:checked')) {
            toggleFields();
        }
    }

    window.onload = function () {
        // Default values
        document.getElementById("from").value = "bank";
        document.querySelector('input[value="bank"]').checked = true;
        toggleFields();
    };
</script>

</body>
</html>
