<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.abhishek.Dao.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="com.abhishek.Model.View_All_Users"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>See All Users</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Arvo&family=Merriweather:wght@700&family=Righteous&display=swap"
	rel="stylesheet">

<style>
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
top: 30%;
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
	
	<%
	View_All_Users vau = new View_All_Users();
	List<User_Bean> list = vau.get_values();

	Iterator<User_Bean> it_list = list.iterator();
	%>

	<table border="1">

		<tr>
			<th>Account ID</th>
			<th>Full Name</th>
			<th>Email</th>
			<th>Gender</th>
			<th>Current Balance</th>
		</tr>

		<%
		while (it_list.hasNext()) {
			User_Bean ub = new User_Bean();
			ub = it_list.next();
		%>

		<tr>

			<td><%=ub.getId()%></td>
			<td><%=ub.getFull_name()%></td>
			<td><%=ub.getEmail()%></td>
			<td><%=ub.getGender()%></td>
			<td>Rs. <%=ub.getCurrent_balance()%> /-</td>

		</tr>

		<%
		}
		%>
	</table>
</body>
</html>