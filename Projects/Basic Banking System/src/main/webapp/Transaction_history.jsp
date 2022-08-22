<%@page import="java.util.Iterator"%>
<%@page import="com.abhishek.Dao.TransactionHistoryBean"%>
<%@page import="java.util.List"%>
<%@page import="com.abhishek.Model.Transaction_History"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction History</title>
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
	top: 40%;
	border-collapse: collapse;
	width: 60%;
	text-align: center;
	position: absolute;
	left: 20%;
}

th, td {
	padding: 15px;
	text-align: center;
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

tr:nth-child(odd) {
	background-color: #eeeeee;
}
</style>
</head>
<body>
	<jsp:include page="header.html" />
	<div class="welcome">
		<pre style="font-family: 'Righteous', cursive;">Transaction History</pre>
	</div>

	<%
	Transaction_History th = new Transaction_History();
	List<TransactionHistoryBean> list = th.get_values();

	Iterator<TransactionHistoryBean> it_list = list.iterator();
	%>

	<table border="1">

		<tr>
			<th>Transaction ID</th>
			<th>Sender</th>
			<th>Receiver</th>
			<th>Amount</th>
			<th>Date</th>
			<th>Time</th>
		</tr>

		<%
		while (it_list.hasNext()) {
			TransactionHistoryBean thb = new TransactionHistoryBean();
			thb = it_list.next();
		%>

		<tr>

			<td><%=thb.getTransaction_id()%></td>
			<td><%=thb.getSender()%></td>
			<td><%=thb.getReceiver()%></td>
			<td>Rs. <%=thb.getAmount()%> /-</td>
			<td><%=(thb.getDate_time()).substring(0,10)%></td>
			<td><%=(thb.getDate_time()).substring(11,19)%></td>

		</tr>

		<%
		}
		%>
	</table>
</body>
</html>