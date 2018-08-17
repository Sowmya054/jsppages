<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Registration Page</title>
<style type="text/css">
function

 

goBack

 

()
{
window

 

.history


.back


();
}
.error {
	color: red;
	font-weight: bold;
}
</style>
</head>
<body>
	<div align="center">
		<h1>Sign Up Page</h1>
		<h2>Enter Your Details for Registration:</h2>
		<form action="Home" method="post">
			<table>
				<tr>
					<td>Name:</td>
					<td><input type="text" name="username" size="30"></td>
				</tr>
				<tr>
					<td>Mobile Number:</td>
					<td><input type="text" name="phonenumber" size="30"></input></td>

				</tr>

				<tr>
					<td>Email:</td>


					<td><input type="text" placeholder="example@gmail.com"
						size="30"></input></td>

				</tr>





				<tr>
					<td>Enter Password:</td>
					<td><input type=password size="30"></input></td>

				</tr>
				<tr>
					<td>Re-Enter Password:</td>
					<td><input type=password size="30"></input></td>

				</tr>
				<tr>
					<td>Security Question:</td>
					<td><input type=text size="50"></input></td>

				</tr>

				<tr>
					<td>Security Answer:</td>
					<td><input type=text size="30"></input></td>

				</tr>


			</table>
			<br> <input type="submit" value="SignUp">
		</form>
		<br>
	</div>
	<button onclick="goBack()">Go Back</button>
</body>
</html>