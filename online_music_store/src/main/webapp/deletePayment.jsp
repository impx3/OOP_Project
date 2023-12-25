<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Premium Account Details</title>
<link rel = "stylesheet" type = "text/css" href = "PremiumPay.css">
<link rel = "stylesheet" type = "text/css" href="header.css">
<style type="text/css">

 #delete th, td {
  border-bottom: 1px solid #ddd;
  border:3px;
  color: rgb(0, 0, 128);
  /* background-color:  rgb(192, 192, 192); */
  font-size: 20px;
}

#delete tr:hover {
	cursor: pointer;
	background-color: rgb(80, 243, 255);}
	
</style>
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
		<center><h3>Delete Premium Account</h3><br/><br/>
		<form action="delete" method="post">
		
		<table width = "75%" id="delete">
		<tr>
			<td>UserID</td>
			<td><input type="text" name="uid" value="<%= UserID %>" readonly></td>
		</tr>
		<tr>
			<td>CardHolderName</td>
			<td><input type="text" name="name" value="<%= CardHolderName %>" readonly></td>
		</tr>
		<tr>
			<td>CardNumber</td>
			<td><input type="text" name="cnum" value="<%= CardNumber %>" readonly></td>
		</tr>
		<tr>
			<td>SecurityCode</td>
			<td><input type="text" name="cvvn" value="<%= SecurityCode %>" readonly></td>
		</tr>
		<tr>
			<td>ExpDate</td>
			<td><input type="text" name="exdate" value="<%= ExpDate %>" readonly></td>
		</tr>
		<tr>
			<td>PremiumPlan</td>
			<td><input type="text" name="prePlan" value="<%= PremiumPlan %>" readonly></td>
		</tr>
		</table>
		
		<br>
		<input type="submit" name="submit" value="Delete Premium Account" class="submitbtn">
		</form></center><br/><br/>
</body>
</html>