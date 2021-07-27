<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

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

</head>
<body>

 
<form:form  action="addDebtor" modelAttribute="debtor" method="post">
<div class="container">
  	<a href="viewForm">View All Records</a><br/>
    <h1>Add debtor Details</h1>
    

<table>
	 
	<tr>
		<td><form:label path="name">Debtor Name</form:label></td>
		<td><form:input path="name" /></td> 
		<td><form:errors path="name" cssClass="error"></form:errors></td>
	</tr>
	
	<tr>
	<td><form:label for="pwd" path="address1">AddressLine1</form:label></td>
   	<td><form:input path="address1" /></td> 
	</tr>
	<tr>
		<td><form:label path="email">Email</form:label></td>
		<td><form:input path="email" /></td> 
	</tr>
	 
	<tr>
	<td><form:label path="phone">PhoneNumber</form:label></td>
   	<td><form:input path="phone" /></td> 
	</tr>
	
	
	 <tr>
		<td colspan="2">
			<input class=btn type="submit" value="Add Debtor"/>
		</td>
	</tr>
	 		 
			 
		 
	</table>
	</div>
	 

</form:form>
</body>
</html>