<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Activate Premium Account</title>
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

 <center><br/><br/>
			<h3>Select your Premium Plan</h3><br/><br/>
			
            <button class = "btn" type = "button" id = "btn1" onclick = "loadData ('btn1') ">Individual</button>&nbsp;&nbsp;
            <button class = "btn" type = "button" id = "btn2" onclick = "loadData ('btn2') ">Duo</button>&nbsp;&nbsp;
            <button class = "btn" type = "button" id = "btn3" onclick = "loadData ('btn3') ">Family</button>&nbsp;&nbsp;
            <button class = "btn" type = "button" id = "btn4" onclick = "loadData ('btn4') ">Student</button><br/><br/>
<br/><br/>
            <p class = "text1" id = "method1">
                <div class = "hb">Ad-free music</div> 
                <div class = "hb"> Offline listening</div>
                <div class = "hb">With a plan of your choice</div><br/><br/>
            </p>

            <script>
            function loadData (name) {
                if (name == "btn1"){       
                document.getElementById("method1").innerHTML = '<form action ="insert" method="post" id="method1">'+
                '<input type="text" name="premiumPlan" placeholder="Individual" value="Individual" readonly><br/><br/>'+
                '<input type="text" name="uid" placeholder="UserID" required><br/><br/>'+
                '<input type="text" name="cname" placeholder="Card Holder\'s Name" required><br/><br/>'+
                '<input type="text" name="cardnum" placeholder="Card Number" pattern = "^[0-9]{16}" required><br><br/>'+

                '<input type="text" name="cvv" placeholder="CVV" pattern = "^[0-9]{3}" required><br/><br/>'+
                '<input type="date" name="expdate" required><br/><br/>'+
                '<input type="submit" value="Get Premium" name="submit" class="sb"></form>'+'<br/><br/>';
            }
                else if (name == "btn2"){       
                    document.getElementById ("method1").innerHTML = '<form action ="insert" method="post" id="method1">'+
                    '<input type="text" name="premiumPlan" placeholder="Duo" value="Duo" readonly><br/><br/>'+
                '<input type="text" name="uid" placeholder="UserID" required><br/><br/>'+
                '<input type="text" name="cname" placeholder="Card Holder\'s Name" required><br/><br/>'+
                '<input type="text" name="cardnum" placeholder="Card Number" pattern = "^[0-9]{16}" required><br><br/>'+

                '<input type="text" name="cvv" placeholder="CVV" pattern = "^[0-9]{3}" required><br/><br/>'+
                '<input type="date" name="expdate" required><br/><br/>'+
                '<input type="submit" value="Get Premium" name="submit" class="sb"></form>'+'<br/><br/>';
            }
                else if (name == "btn3") {    
                    document.getElementById ("method1").innerHTML = '<form action ="insert" method="post" id="method1">'+
                '<input type="text" name="premiumPlan" placeholder="Family" value="Family" readonly><br/><br/>'+
                '<input type="text" name="uid" placeholder="UserID" required><br/><br/>'+
                '<input type="text" name="cname" placeholder="Card Holder\'s Name" required><br/><br/>'+
                '<input type="text" name="cardnum" placeholder="Card Number" pattern = "^[0-9]{16}" required><br><br/>'+

                '<input type="text" name="cvv" placeholder="CVV" pattern = "^[0-9]{3}" required><br/><br/>'+
                '<input type="date" name="expdate" required><br/><br/>'+
                '<input type="submit" value="Get Premium" name="submit" class="sb"></form>'+'<br/><br/>';
            }
            else {    
                    document.getElementById ("method1").innerHTML = '<form action ="insert" method="post" id="method1">'+
                '<input type="text" name="premiumPlan" placeholder="Student" value="Student" readonly><br/><br/>'+
                '<input type="text" name="uid" placeholder="UserID" required><br/><br/>'+
                '<input type="text" name="cname" placeholder="Card Holder\'s Name" required><br/><br/>'+
                '<input type="text" name="cardnum" placeholder="Card Number" pattern = "^[0-9]{16}" required><br><br/>'+

                '<input type="text" name="cvv" placeholder="CVV" pattern = "^[0-9]{3}" required><br/><br/>'+
                '<input type="date" name="expdate" required><br/><br/>'+
                '<input type="submit" value="Get Premium" name="submit" class="sb"></form>'+'<br/><br/>';
            }
            }

</script><br/><br/>
                </center>

</body>
</html>