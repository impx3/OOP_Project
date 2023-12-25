<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Details</title>
<link rel = "stylesheet" type = "text/css" href = "PremiumPay.css">
<link rel = "stylesheet" type = "text/css" href="header.css">
</head>
<body>
<!--header-->
<div class="tbl1">
<table border="0" width="100%">
    <tr>
        <td>
             <div class="img03"><a href="User_Details.jsp"><img src="user.png" width= "100px"/></a></div>
        </td>
        <td>
             <div class="welcome">
                  <h1>Welcome Back, Good evening!</h1>    
             </div><br />
             </td>
        <td>
             <img src="dirac.jpg"/>
        </td>
    </tr>
    <tr>
        <td colspan="2">
             <div class="navbar"></div>
                  <ul>
                      <li><a href="#">Home</a></li>
                      <li><a href="Search.jsp">Search</a></li>
                      <li><a href="payInsert.jsp">Activate Premium</a></li>
                      <li><a href="albums.jsp">Albums</a></li>
                            <li><a href="playlist.jsp">Create playlist</a></li>
                  </ul>
              </div>
         </td>
         <td>
              <a href="Logout.jsp"><button id="bttn2" style="margin-left: 550px; width: 100px;">Log out</button></a>
         </td>
     </tr>
</table>
</div>

<!--end of header-->
<br/><br/>
	<center>
	<h3>Enter your UserID and Premium plan to view account details</h3><br>
	
	<form action="display" method="post">
	
		User ID <br>
		<input type="text" name="userid" ><br><br>
		
		Premium Plan<br>
		<input type="text"  name="preplan" ><br><br>
		
		<input type="submit" name="submit" value="See my details"  class="submitbtn">
		
	</form></center>
<br><br>
</body>
</html>