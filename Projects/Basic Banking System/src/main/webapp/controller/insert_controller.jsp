<%@page import="com.abhishek.Model.Create_User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String full_name = request.getParameter("full_name");
String email = request.getParameter("email");
String gender = request.getParameter("gender");
int current_balance = Integer.parseInt(request.getParameter("balance"));

Create_User cu = new Create_User();
cu.insert_values(full_name,email,gender,current_balance);
%>

<script type="text/javascript">
alert("User Created Successfully!!!");
window.location.href = "http://localhost:8080/Basic_Banking_System/create_user.jsp";
</script>
</body>
</html>