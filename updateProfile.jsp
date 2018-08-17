<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script language="javascript">
function selectSecurityQuestionPressed(){
	{
		document.getElementById('securityQuestion').style.visibility='visible';
	}	
}
function selectCustomerNamePressed(){
	{
		
		document.getElementById('customerName').style.visibility='visible';
	}	
}
function selectSecurityQuestionPressed(){
	{
		document.getElementById('securityQuestion').style.visibility='visible';
	}	
}
function selectSecurityAnswerPressed(){
	{
		document.getElementById('securityAnswer').style.visibility='visible';
	}	
}
function selectCardNumberPressed(){
	{	
	 document.getElementById('cardNumber').style.visibility='visible';
	}	
}
</script>
</head>
<body>
<center>
<h1>Update Profile</h1>

<form >
<table>
<tr>
<td><h3>Your Email:${customer.email}</h3></td></tr>
<tr><td><h3>Your Phone Number:${customer.phoneNumber}</h3></td></tr>
<tr>
<td><h3>Your Name:${customer.customerName}</h3></td>
<td><input type="button"  value="edit" onclick="javascript:selectCustomerNamePressed();" id="Pressed"/></td>
<td><div style="visibility:hidden" id="customerName">
Change Customer Name To: 
<input type="text" name="customerName" />
</div></td>
</tr>
<tr>
<td><h3>Existed Security Question: ${customer.securityQuestion}</h3></td> 
<td><input type="button"  value="edit" onclick="javascript:selectSecurityQuestionPressed();" id="Pressed"/></td>
<td><div style="visibility:hidden" id="securityQuestion">
Change Security Question To: 
<input type="text" name="securityQuestion" />
</div></td></tr>
<tr>
<td><h3>Existed Security Answer: ${customer.securityAnswer}</h3></td> 
<td><input type="button"  value="edit" onclick="javascript:selectSecurityAnswerPressed();" id="Pressed"/></td>
<td><div style="visibility:hidden" id="securityAnswer">
Change Security Answer To: 
<input type="text" name="securityAnswer" />
</div></td>
</tr>
<tr>
<td><h3>Existed Card Number: ${customer.cardNumber}</h3></td> 
<td><input type="button"  value="edit" onclick="javascript:selectCardNumberPressed();" id="Pressed"/></td>
<td><div style="visibility:hidden" id="cardNumber">
Change Card NumberTo: 
<input type="text" name="cardNumber" />
</div></td></tr>
</table>
</br>
<input type="submit" value="submit Changes">
</form>

</center>
</body>
</html>