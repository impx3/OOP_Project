<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update payment details</title>
<link rel = "stylesheet" type = "text/css" href = "PremiumPay.css">
<link rel = "stylesheet" type = "text/css" href="header.css">

<style type="text/css">
#display {
  width: 50%;
  border: 3px solid #0c238b;
  background-color: gray;
}

 #display th, td {
  color: rgb(0, 0, 128);
  font-size: 20px;
  padding-top: 12px;
  padding-bottom: 12px;
}

#display tr:hover {
	cursor: pointer;
	background-color: rgb(180, 206, 207);}
		
</style>
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
	<h3>Your account details</h3><br><br>

<table id="display">
	<c:forEach var="u" items = "${paymentinfo}">
	
	 <c:set var="PaymentID" value = "${u.paymentID}"/>
	<c:set var="UserID" value = "${u.userID}"/>
	<c:set var="CardHolderName" value = "${u.cardHolderName}"/>
	<c:set var="CardNumber" value = "${u.cardNumber}"/>
	<c:set var="SecurityCode" value = "${u.securityCode}"/>
	<c:set var="ExpDate" value = "${u.expDate}"/>
	<c:set var="PremiumPlan" value = "${u.premiumPlan}"/>
	
<tr><td>Payment ID</td>
	<td>${u.paymentID}</td>
	</tr> 
	
	<tr><td>User ID</td>
	<td>${u.userID}</td>
	</tr>
	
	<tr><td>CardHolder Name</td>
	<td>${u.cardHolderName}</td>
	</tr>
	
	<tr><td>Card Number</td>
	<td>${u.cardNumber}</td>
	</tr>
	
	<tr><td>Security Code</td>
	<td>${u.securityCode}</td>
	</tr>
	
	<tr><td>Date of Expiry</td>
	<td>${u.expDate}</td>
	</tr>
	
	<tr><td>Premium Plan</td>
	<td>${u.premiumPlan}</td>
	</tr>

	</c:forEach>
	</table><br/><br/>
	
	<c:url value="updatePayment.jsp" var="payupdate">
	<c:param name="PaymentID" value="${PaymentID}"/>
	<c:param name="UserID" value="${UserID}"/>
	<c:param name="CardHolderName" value="${CardHolderName}"/>
	<c:param name="CardNumber" value="${CardNumber}"/>
	<c:param name="SecurityCode" value="${SecurityCode}"/>
	<c:param name="ExpDate" value="${ExpDate}"/>
	<c:param name="PremiumPlan" value="${PremiumPlan}"/>
	</c:url>

	<a href = "${payupdate}">
	<input type="button" name="update" value="Update Payment Info" class="submitbtn">
	</a>
	
	<br><br>
	<c:url value="deletePayment.jsp" var="paydelete">
	<c:param name="PaymentID" value="${PaymentID}"/>
	<c:param name="UserID"  value="${UserID}"/>
	<c:param name="CardHolderName"  value="${CardHolderName}"/>
	<c:param name="CardNumber"  value="${CardNumber}"/>
	<c:param name="SecurityCode"  value="${SecurityCode}"/>
	<c:param name="ExpDate"  value="${ExpDate}"/>
	<c:param name="PremiumPlan"  value="${PremiumPlan}"/>
	
	</c:url>
	
	<a href = "${paydelete}">
	<input type="button" name="delete" value="Delete Premium Account Details" class="submitbtn">
	</a>
	
	</center><br/><br/>
</body>
</html>