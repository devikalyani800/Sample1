<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ page import="com.pack.debtor.dao.DebtorDao,java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
 
<html>
    <head>
        <title>SELECT Operation</title>
        
    </head>
    <style>
    #add{
    margin-left:550px;
    
    }
    </style>
  
 <body bgcolor=lightblue>
        
        <form>
            <table border="1" width="40%" align="center">
                <caption>Debtor List</caption>
                <tr>
                    <th style="color:white">Debtor ID</th>
                    <th style="color:white">Debtor Name</th>  
                    <th style="color:white">Address1</th>
                    <th style="color:white">Email</th>
                    <th style="color:white">PhoneNumber</th>
                    <th colspan="2">Action</th>
                </tr>
              <c:forEach var="row" items="${list}">   
                    <tr>
                        <td><c:out value="${row.did}"/></td>
                        <td><c:out value="${row.name}"/></td>
                          <td><c:out value="${row.address1}"/></td>
                          <td><c:out value="${row.email}"/></td>
                            <td><c:out value="${row.phone}"/></td>
                      <td><a href="editDeb?did=<c:out value="${row.did}"/>">Update</a></td>
                   
                     <td><a href="deleteDebtor/${row.did}">Delete</a></td>      
                    </tr>
                </c:forEach>
            </table>
        </form>
       <a id="add" href="addDebtorForm">Register New Debtor</a>  
       <a   href="/">Go Home</a>
    
</body>
</html>