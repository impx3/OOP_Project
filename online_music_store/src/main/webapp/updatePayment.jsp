<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update details</title>
<link rel = "stylesheet" type = "text/css" href = "PremiumPay.css">
<link rel = "stylesheet" type = "text/css" href="header.css">
</head>
<body>

<%		
		String UserID = request.getParameter("UserID");
		String CardHolderName = request.getParameter("CardHolderName");
		String CardNumber = request.getParameter("CardNumber");
		String SecurityCode = request.getParameter("SecurityCode");
		String ExpDate = request.getParameter("ExpDate");
		String PremiumPlan = request.getParameter("PremiumPlan"); 
%>

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
<h3>Update your details</h3><br/><br/>

 <form action ="update" method="post" >
 <table width = "75%" id="update">
		
 	 <tr><td>Select a plan:</td>
 	 
 	<td><select name="prePlan" id = "select" value="<%=PremiumPlan%>">
 	  	<option value= "Duo">Duo</option>
 	  	<option value= "Individual">Individual</option>
 	  	<option value= "Family">Family</option>
 	  	<option value= "Student">Student</option></select></td></tr>
      
    <tr><td>User ID </td>
    <td><input type="text" name="uid" value="<%=UserID%>" readonly></td></tr>
   
      <tr><td>CardHolder Name</td>
    <td><input type="text" name="name" placeholder="Card Holder's Name"  value="<%=CardHolderName%>">
    </td></tr>
    
      <tr><td>Card Number</td>
    <td><input type="text" name="cnum" placeholder="Card Number" value="<%=CardNumber%>" pattern = "^[0-9]{16}">
      </td></tr>
      
      <tr><td>Security Code</td>
     <td><input type="text" name="cvvn" placeholder="CVV"  value="<%=SecurityCode%>" pattern = "^[0-9]{3}" >
     </td></tr>
     
      <tr><td>Date of Expiry</td>
    <td><input type="date" name="exdate" value="<%=ExpDate%>">
      </td></tr></table><br/>
      
      <input type="submit" value="Update details" name="submit" class="sb"></form><br/><br/>
      </center>
</body>
</html>