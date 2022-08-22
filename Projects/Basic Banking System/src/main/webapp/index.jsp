<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to AVS Bank</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Arvo&family=Merriweather:wght@700&family=Righteous&display=swap"
	rel="stylesheet">

<style>
.welcome {
	padding: 30px 10%;
	text-align: center;
	font-size: 50px;
	color: #a82c0d;
}

.bank_images {
	padding: 30px 10%;
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.bank_buttons {
	padding: 5px 10%;
	display: flex;
}

button {
	background-color: rgba(0, 136, 169, 1);
	border: none;
	border-radius: 50px;
	cursor: pointer;
	transition: all 0.3s ease 0s;
	font-family: 'Arvo', serif;
	font-weight: 500;
	font-size: 16px;
	color: whitesmoke;
	text-decoration: none;
	padding: 9px 25px;
}

button:hover {
	background-color: rgba(0, 136, 169, 0.8);
}

.a_button {
	font-weight: bold;
	font-size: 17px;
	color: black;
	text-decoration: none;
}
</style>
</head>
<body>
	<jsp:include page="header.html" />
	<div class="welcome">
		<pre style="font-family: 'Righteous', cursive;">WELCOME  TO  AVS  BANK</pre>
	</div>

	<div class="bank_images">
		<img src="images/user.jpg"> 
		<img src="images/transfer.jpg">
		<img src="images/history.jpg">
	</div>

	<div class="bank_buttons">
		<div>
			<button style="margin-left: 50px;">
				<a class="a_button" href="create_user.jsp">Create User</a>
			</button>
		</div>
		<div>
			<button style="margin-left: 315px;">
				<a class="a_button" href="TransferMoney.jsp">Make Transaction</a>
			</button>
		</div>
		<div>
			<button style="margin-left: 280px;">
				<a class="a_button" href="Transaction_history.jsp">Transaction History</a>
			</button>
		</div>
	</div>
</body>
</html>