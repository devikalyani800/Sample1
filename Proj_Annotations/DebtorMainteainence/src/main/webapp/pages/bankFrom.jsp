<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
 <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
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




a {
  color:lightblue;
  text-decoration:none;
}


</style> 
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form  action="addBankForm" modelAttribute="bank" method="post">
<div class="container">
  	<a href="viewForm1">View All Records</a><br/>
    <h1>Add Bank Details</h1>
    

<table >
	 
	<tr>
		<td><form:label for="psw" path="accountnumber">Account Number</form:label></td>
		<td><form:input path="accountnumber" id="psw" requried/></td>
		<td><form:errors path="accountnumber" id="psw" cssClass="error"></form:errors></td>
	</tr>
	
	<tr>
	<td><form:label for="psw-repeat" path="bankname">Bank Name</form:label></td>
   	<td><form:input path="bankname"  id="psw-repeat" requried/></td> 
	</tr>
	<tr>
		<td><form:label for="psw-repeat" path="address">Address</form:label></td>
		<td><form:input path="address" id="psw-repeat" requried /></td> 
	</tr>
	 <tr>
		<td colspan="2">
		 <input type="hidden" name="action" value="add"/>
			<input class="btn" type="submit" value="AddBank"/>
		</td>
	</tr>
	 		 
			 
		 
	</table>
	</div>
	 

</form:form>

</body>
</html>