<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.abhishek.Model.View_All_Users"%>
<%@page import="com.abhishek.Dao.User_Bean"%>
<%@page import="com.abhishek.Model.Edit_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Make a Transaction</title>
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

* {
	margin: 0;
	padding: 0;
	outline: 0;
}

table, td, th {
	border: 1px solid #ddd;
	text-align: left;
}

table {
	border-collapse: collapse;
	width: 60%;
	text-align: center;
	position: absolute;
	left: 20%;
}

th, td {
	padding: 15px;
}

th {
	font-family: 'Arvo', serif;
	background: yellowgreen;
	color: #fafafa;
	text-transform: uppercase;
}

td {
	font-family: 'Arvo', serif;
}

.bodyy {
	background-size: cover;
	align-items: center;
	justify-content: center;
	display: flex;
}

.container {
	position: relative;
	margin-top: 150px;
	width: 450px;
	height: auto;
	background: #dedede;
	border-radius: 5px;
}

.transaction_form {
	padding: 20px 40px;
}

#font {
	font-family: 'Arvo', serif;
	color: #130f40;
	margin: 5px 0;
}

.input_transaction_form {
	height: 40px;
	width: 350px;
	padding: 0 5px;
	outline: none;
	border: 1px solid silver;
}

#font2 {
	font-family: 'Arvo', serif;
	margin-top: 30px;
	color: #130f40;
}

#font3 {
	font-family: 'Arvo', serif;
	margin-top: 30px;
	color: #130f40;
}

#transfer_button {
	font-family: 'Arvo', serif;
	margin: 45px 0 30px 0;
	height: 45px;
	width: 365px;
	font-size: 20px;
	color: white;
	outline: none;
	cursor: pointer;
	font-weight: bold;
	background: #1A237E;
	border-radius: 3px;
	border: 1px solid #3949ab;
	transition: 0.5s;
}

#transfer_button:hover {
	background: #151c6a;
}
</style>
</head>
<body>
	<jsp:include page="header.html" />
	<div class="welcome">
		<pre style="font-family: 'Righteous', cursive;">Transaction</pre>
	</div>

	<%
	int id = Integer.parseInt(request.getParameter("id"));
	Edit_Values ev = new Edit_Values();
	User_Bean ub = ev.get_value_of_user(id);
	%>
	<table border="1">

		<tr>
			<th>Account ID</th>
			<th>Full Name</th>
			<th>Email</th>
			<th>Gender</th>
			<th>Current Balance</th>
		</tr>

		<tr>

			<td><%=ub.getId()%></td>
			<td><%=ub.getFull_name()%></td>
			<td><%=ub.getEmail()%></td>
			<td><%=ub.getGender()%></td>
			<td>Rs. <%=ub.getCurrent_balance()%> /-
			</td>

		</tr>
	</table>

	<div class="bodyy">
		<div class="container">
			<form class="transaction_form" name="transaction_form"
				action="controller/transaction_controller.jsp">
				<div id="font">Sender's Account ID :</div>
				<input class="input_transaction_form" type="text" name="sender" value="<%=ub.getId()%>">
				<div id="font2">Receiver's Account ID :</div>
				<input class="input_transaction_form" type="text" name="receiver">
				<div id="font3">Amount To Transfer :</div>
				<input class="input_transaction_form" type="text" name="amount">
				<button id="transfer_button" type="submit">Transfer</button>
			</form>
		</div>
	</div>
</body>
</html>