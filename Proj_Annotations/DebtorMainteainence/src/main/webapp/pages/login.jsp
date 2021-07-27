<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-color:lightblue;
}

.nav {
  display: flex;
  align-items: center;
  margin-left:500px;
  margin-top:100px;
  width: 100%;
  min-height: 100%;
  padding: 20px;
}

#formContent {
  border-radius: 10px 10px 10px 10px;
  background: #fff;
  padding: 30px;
  width: 90%;
  max-width: 450px;
  position: relative;
  padding: 0px;
  text-align: center;
}

#formFooter {
  background-color: #f6f6f6;
  border-top: 1px solid #d4a9cd;
  padding: 25px;
  text-align: center;
  
}




input {
  background-color: #ddd;
  border: none;
  color: white;
  padding: 15px 80px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 13px;
  border-radius: 5px 5px 5px 5px;
  margin: 5px 20px 40px 20px;
}



input {
  background-color: #f6f6f6;
  border: none;
  color: #0d0d0d;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 5px;
  width: 85%;
  border: 2px solid #f6f6f6;
 
}

</style>
</head>
<body>
<div class="nav">
  <div id="formContent">
    <!-- Tabs Titles -->
    <h1 class="active">WELCOME</h1>
    <!-- Login Form -->
    <form method="get" action="Authentication" > 
<tr>  
<td>USERNAME:</td>
<td><input type=”text” placeholder="Enter Name" name="username"required ></td>
</tr>	
      
 <tr>  <br>
<br>
<td>PASSWORD:</td>
<td><input type=”text” placeholder="password" name="password" required ></td></tr>
<br>
<br>
      <button type="submit" class="btn btn-success">Login</button>
	<input type="hidden" name="action" value="add"/>
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a href="#">Forgot Password?</a>
    </div>

  </div>
</div>

</body>
</html>