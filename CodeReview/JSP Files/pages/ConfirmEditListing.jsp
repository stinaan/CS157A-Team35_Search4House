<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ page import="java.sql.*"%>
    
<!DOCTYPE html>
<html>
<script src="basics.js"> </script>

  <link rel="stylesheet" href="style.css">
<head>
<meta charset="UTF-8">
<title>search4House</title>

<script>



</script>


<style>
#buttonColor {
background-color: #ff6363;
  color: white;
    width: 300px;
    height: 40px;
    font-size:16px;
}






</style>

</head>
<body>

<jsp:include page="navBar.jsp" />


 	    <form action="ConfirmedEdit.jsp" method="POST">
	<%
 


	 
 
 
 
 
 String db = "search4houses";
 String user;
 String addressID;
 try {
     
     java.sql.Connection con; 
 		Class.forName("com.mysql.jdbc.Driver"); 

 		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/" + db + "?verifyServerCertificate=false&useSSL=true", "root","newpassword");
     

     
 %>



	
	<%
    Statement stmt = con.createStatement();
	
    
   
    
    if (request.getParameter("listID") != "" ){
    	%> 
    	<div class="col-3" style="margin-left:40%; margin-right:5%; ">
    	<label class="addListTitle">Confirmation Page</label> <br>
    	
    	<% 
    	String listID = request.getParameter("listID");
        
        System.out.println(listID);

    

    
    %>
        <input type="hidden" name="listID" value="<%out.println(listID);%>">
    <b>Contact Info:</b> <br><%
        
    
    if (request.getParameter("contactName") != "" || request.getParameter("email")!="" || request.getParameter("phoneNum")!=""){
    	String contactName = request.getParameter("contactName");
	    String email = request.getParameter("email");
	    String phoneNum = request.getParameter("phoneNum");
	    
 	    out.println(contactName);
 	    %><br><%
	    out.println(email);
	    %><br><%
 	    out.println(phoneNum);
 	    %><br>
 	            <input type="hidden" name="contactName" value="<%out.println(contactName);%>">
 	            <input type="hidden" name="email" value="<%out.println(email);%>">
 	            <input type="hidden" name="phoneNum" value="<%out.println(phoneNum);%>">
 	    
 	    
 	    <%
	    

   
   
   } else {
	   
	    String userID = (String)session.getAttribute("userID");
 	    Statement stmt1 = con.createStatement();

 	     ResultSet rs1 = stmt1.executeQuery("SELECT name, AdditionalContacts.email, AdditionalContacts.phoneNum FROM search4houses.AdditionalContacts, search4houses.Accounts WHERE accID=contactAccID AND contactAccID="+userID+";");
 		if (rs1.next() == true){
 	    String  contactName = rs1.getString("name");
 	    out.println(contactName);
 	    %><br><%
 	   String  email = rs1.getString("email");
	    out.println(email);
	    %><br><%
 	  String  phoneNum = rs1.getString("phoneNum");
 	    out.println(phoneNum);
 	    %><br>
 	    <input type="hidden" name="contactName" value="<%out.println(contactName);%>">
 	            <input type="hidden" name="email" value="<%out.println(email);%>">
 	            <input type="hidden" name="phoneNum" value="<%out.println(phoneNum);%>">
 	    <%
 	    //System.out.println("hi"+contactName+email+phoneNum);
 		}
   }

	 		
    %><b>Address:</b> <br><%
    String  street = request.getParameter("streetAddress");
	    out.println(street);
	    %><br><%
	   String  city = request.getParameter("city");
    out.println(city);
    %><br><%
	  String  state = request.getParameter("state");
	    out.println(state);
	    %><br><%
		  String  zipcode = request.getParameter("zipcode");
	    out.println(zipcode);
	    %><br>
	    
				<input type="hidden" name="street" value="<%out.println(street);%>">
 	            <input type="hidden" name="city" value="<%out.println(city);%>">
 	            <input type="hidden" name="state" value="<%out.println(state);%>">
 	            <input type="hidden" name="zipcode" value="<%out.println(zipcode);%>">

	    
	    <%
	    
	    
    
    
    
    
    %><br><b>Pricing: </b><%
    String price = request.getParameter("price");
    out.println("$"+price +"/month");
    %><br><b>Bedroom(s):</b> <%
String bedrooms = request.getParameter("bedroomNum");
    out.println(bedrooms+" bedroom(s)");
    %><br><b>Bathroom(s):</b> <%
String bathrooms = request.getParameter("bathroomNum");
    out.println(bathrooms+" bathroom(s)");
    %><br><b>Lease(s):</b> <%
    String lease = request.getParameter("leaseLength");
    out.println(lease+" month(s)");

    %><br><b>Room Type:</b> <%
	String roomType = request.getParameter("roomType");
    out.println(roomType);
    
    %> 
   				<input type="hidden" name="price" value="<%out.println(price);%>">
 	            <input type="hidden" name="bedrooms" value="<%out.println(bedrooms);%>">
 	            <input type="hidden" name="bathrooms" value="<%out.println(bathrooms);%>">
 	            <input type="hidden" name="lease" value="<%out.println(lease);%>">
 	            <input type="hidden" name="roomType" value="<%out.println(roomType);%>">
    
    <%
    String info = request.getParameter("information");
    %><br><b>Additional Information:</b> <%
    out.println(info);
%>     <input type="hidden" name="info" value="<%out.println(info);%>"> <%



    
    
    
    
//out.println(confirmed);
%>
 
    <br><br>    
    <button type="submit" id="buttonColor" name="submitButton"  onclick="">Submit Listing</button>

    <br><br>
    <button type="button"  id="buttonColor" onclick="javascript:history.back()">Re-edit</button>

</div>

<%
    }
   
    stmt.close();
    con.close();
 
 } catch(SQLException e) {
	     out.println("SQLException caught: " + e.getMessage()); 
	 } %>
	 
        
   
</form>
     

</body>
</html>


