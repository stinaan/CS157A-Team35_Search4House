<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<style>
		
	</style>
<head>
<meta charset="UTF-8">
<title>Search4House</title>

<script>


</script>


<style>

.link { 
text-decoration:none;
color: #4B4B4B; }
.link:hover { color: #FF94D5; }


</style>

</head>
<body>
<% String db = "search4houses"; %>
<jsp:include page="navBar.jsp" />


	
	<!-- here is where we put the profile picture (delete the comments -->
	<img src = "/html/images/test.png" alt = "Test Image" width = "100" height = "100" border  = "2"/> <br>
	<font size = "5">Username</font><br>
	<button type = "button">Edit Profile</button>
	
	<br>
	<br>
	<br>
	<div>
	<table>
	<table class = "center" border = "0" width  = "50%" style= "background-color:white">
		<thead>
			<tr>
				<td colspan  = "4">Contact Information</td>
			</tr>
		</thead>
		<tr> 
			<td>Name:</td><td>John Smith</td>
		</tr>
		<tr> 
			<td>Email:</td><td>someEmail@search4home.com</td>
		</tr>
		<tr>
			<td>Phone Number:</td><td>(123)456-7890</td>
		</tr>
	</table>
	</div>
	
	<br>
	<br>
	<br>
	
	<div class = "menuBottom" align  = "center" style = "position: fixed; bottom: 10%; left: 45%; text-decoration: none; color: white">
	<a href  = "index.jsp" style="text-decoration: none; color: white"><strong>Home</strong></a> |
	<a href = "FavoriteList.jsp" style="text-decoration: none; color: white"><strong>Favorites List</strong></a>
	</div>
	
	</body>
	
</html>