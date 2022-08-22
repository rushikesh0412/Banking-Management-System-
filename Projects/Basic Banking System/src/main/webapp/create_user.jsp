<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create User</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Arvo&display=swap"
	rel="stylesheet">
<style>
* {
    padding: 0;
    margin: 0;
}

.bodyy {
    background-size: cover;
    align-items: center;
    justify-content: center;
    display: flex;
}
.container {
    position: relative;
    margin-top: 100px;
    width: 450px;
    height: auto;
    background: #dedede;
    border-radius: 5px;
}

.label {
    font-family: 'Arvo', serif;
    padding: 20px 130px;
    font-size: 32px;
    font-weight: bold;
    color: #130f40;
}

.create_user {
    padding: 20px 40px;
}

#font {
    font-family: 'Arvo', serif;
    font-size: 18px;
    color: #130f40;
    margin: 5px 0;
}

.input_create_user {
	margin-top: 5px;
    height: 40px;
    width: 350px;
    padding: 0 5px;
    font-size: 18px;
    outline: none;
    border: 1px solid silver;
}
#font2{
    font-family: 'Arvo', serif;
    margin-top: 30px;
    font-size: 18px;
    color: #130f40;
}

#font3{
    font-family: 'Arvo', serif;
    margin-top: 30px;
    font-size: 18px;
    color: #130f40;
}

#font4{
    font-family: 'Arvo', serif;
    margin-top: 30px;
    font-size: 18px;
    color: #130f40;
}

#submit_button{
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

#submit_button:hover {
    background: #151c6a;
}

#male_label, #female_label {
	font-family: 'Arvo', serif;
    font-size: 16px;
    color: #130f40;
}

</style>
</head>

<body>
<jsp:include page="header.html" />
	<div class="bodyy">
	<div class="container">
		<h1 class="label">Create User</h1>
		<form class="create_user" name="create_user" action="controller/insert_controller.jsp">
			<div id="font">Full Name :</div>
			<input class="input_create_user" type="text" name="full_name">
			<div id="font2">Email :</div>
			<input class="input_create_user" type="text" name="email">
			<div id="font3">Gender :</div>
			<input type="radio" id="male" name="gender" value="male"> 
			<label id="male_label" for="male">Male</label> 
			<input style="margin-left: 50px; margin-top: 10px;" type="radio" id="female" name="gender" value="female"> 
			<label id="female_label" for="female">Female</label>
			<div id="font4">Initial Balance :</div>
			<input class="input_create_user" type="text" name="balance">
			<button id="submit_button" type="submit">Submit</button>
		</form>
	</div>
	</div>
</body>
</html>