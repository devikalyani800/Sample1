<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form  action="index2" modelAttribute="bank" method="post">

<a href="addBankForm">Add User</a>
<a href="viewForm1">View Users</a>
</form:form>

</body>
</html>