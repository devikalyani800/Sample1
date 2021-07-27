<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<meta name="viewport" content="width=device-width, initial-scale=1">


<style>
error{color:red}  
.container {
  padding: 16px;
  margin-left:550px;
  margin-top:150px;
  margin-right:500px;
  background-color: white;
  border:thick solid green;
}


input{
  
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background:lightblue;
}

.btn{
margin-left:150px;
}


</style> 


<form:form  action="editBank"  modelAttribute="editBankForm">
<div class="container">

	<table>
	<tr>
		 
		<td><form:hidden path="did" /></td> 
	</tr>
	<tr>
		<td><form:label path="accountnumber">Account Number</form:label></td>
		<td><form:input path="accountnumber" /></td> 
	</tr>

		<tr>
		<td><form:label path="bankname">Bank Name</form:label></td>
		<td><form:input path="bankname" /></td> 
	   </tr>
	   <tr>
		<td><form:label path="address">Address</form:label></td>
		<td><form:input path="address" /></td> 
	</tr>
	<tr>
		<td colspan="2">
			<input class="btn" type="submit" value="Edit Bank"/>
		</td>
	</table>
	</div>
	</form:form>

</body>
</html>