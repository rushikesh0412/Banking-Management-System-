<%@page import="com.abhishek.Dao.User_Bean"%>
<%@page import="com.abhishek.Model.Transaction_History"%>
<%@page import="com.abhishek.Model.Edit_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transaction Controller</title>
</head>
<body>
<%
int sender_id = Integer.parseInt(request.getParameter("sender"));
int receiver_id = Integer.parseInt(request.getParameter("receiver"));
int amount = Integer.parseInt(request.getParameter("amount"));

Edit_Values ev = new Edit_Values();
ev.update_balance(sender_id, receiver_id, amount);

User_Bean sender_details = ev.get_value_of_user(sender_id);
User_Bean receiver_details = ev.get_value_of_user(receiver_id);

Transaction_History th = new Transaction_History();
th.insert_values(sender_details.getFull_name(), receiver_details.getFull_name(), amount);
%>
<script type="text/javascript">
alert("Amount Transferred Successfully!!!");
window.location.href = "http://localhost:8080/Basic_Banking_System/Transaction_history.jsp";
</script>
</body>
</html>