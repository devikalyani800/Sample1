<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="com.pack.debtor.dao.BankDao,java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
<html>
<head>
<title>Select Operation</title>
</head>
 <style>
    #add{
    margin-left:550px;
    
    }
    </style>
  
 <body bgcolor=lightblue>

<form:form  action="viewForm1" modelAttribute="bank" method="post">
            <table border="1" width="40%" align="center">
                <caption>Bank List</caption>
                <tr>
                    <th style="color:white">ID</th>
                    <th style="color:white">Account Number</th>
                    <th style="color:white">Bank Name</th>  
                    <th style="color:white">Address</th>
                    
                    <th colspan="2">Action</th>
                </tr>
              <c:forEach var="row" items="${list}">   
                    <tr>
                        <td><c:out value="${row.did}"/></td>
                        <td><c:out value="${row.accountnumber}"/></td>
                          <td><c:out value="${row.bankname}"/></td>
                          <td><c:out value="${row.address}"/></td>
                           
                       <td><a href="editBan?did=<c:out value="${row.did}"/>">Update</a></td> 
                    <%--     <td><a href= "EmployeeServlet?id=<c:out value="${row.id}"/>&action=delete">Delete</a></td> --%>
                     <td><a href="deleteBank/${row.did}">Delete</a></td>      
                    </tr>
                </c:forEach>
            </table>
        </form:form>>
       <a id="add" href="addBankForm">Register New Bank</a>  
       <a href="/index2">Go Home</a>
    

</body>
</html>