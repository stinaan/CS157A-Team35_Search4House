<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<script src="basics.js"> </script>

  <link rel="stylesheet" href="style.css">
  <style>
  #buttonColor {
background-color: #ff6363;
  color: white;
    width: 300px;
    height: 40px;
    font-size:16px;
}
  
  
  
  </style>
  
  <script>

  
  
  
  </script>
<head>
<meta charset="UTF-8">
<title>search4House</title>


</head>
<body>
<jsp:include page="navBar.jsp" />

 <%
 String db = "search4houses";
 String user;
 String addressID;
 try {
     
     java.sql.Connection con; 
 		Class.forName("com.mysql.jdbc.Driver"); 

 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","newpassword");
     
     Statement stmt = con.createStatement();
     
     
     
     
     %>
     <form name = "editProfile" action="ProfileEditSuccess.jsp" style="margin-left:5%; margin-right:5%" method="POST" onSubmit="" autocomplete="on">
	<div class="form-group" style="padding-right:20%; padding-left:20%;"><fieldset style="padding:15px;">
	
	<legend style ="font-size:24px;color: #ff6363; padding-top: 10px;">Profile Edit</legend>
		<b> Full name:</b> <br>
        <input type="text" class="form-control" name="name" id="name" size=50 placeholder="Full Name"/> <br>
      <b> Password:</b> <br>
        <input type="password" class="form-control" name="password" id="password" size=30 placeholder="Password"/> <br>
        <b> Email Address:</b> <br>
  		<input type="email" class="form-control" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+.[a-z]{2, 4}$"  id = A-z"email" size=60  placeholder="123@abc.com"/> <br>  
  		<b> Phone Number:</b> <br>
        <input type="tel" class="form-control" name="phoneNum" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" id="phoneNum" size=30 placeholder="123-456-7890"/> <br>
       
	
       
       
       
       
       
       <div style="position: relative; align: center;">
       <div class="col-6">
   <button type="submit" id="buttonColor" name="submitButton"  onclick="">Complete Edit</button>
    </div>
    
    
    </div>
	  </fieldset></div></form>
       <%
     
     
     stmt.close();
     con.close();
     } catch(SQLException e) {
     out.println("SQLException caught: " + e.getMessage()); 
 }
 %>



	<button onClick = "location.href='Profile.jsp'" type = button >Cancel</button>






</body>
</html> 