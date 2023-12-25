<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Albums</title>
<link rel = "stylesheet" type = "text/css" href="albums.css">
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
<div class="insidebody">
        <p>&ensp;&ensp;Picks for you</p> 
        
        <div class="responsive">
            <div class="gallery">
                <img src="daisy.png" class="icon">
                <div class="mid">
                    <div class="info">Nine<br/>Daisy</div>
                </div>
            </div>
          </div>
          
          <div class="responsive">
            <div class="gallery">
                <img src="7.jpg" class="icon">
                <div class="mid">
                    <div class="info">BTS<br/>Map of the Soul: 7</div>
                </div>
            </div>
          </div>
          
          <div class="responsive">
            <div class="gallery">
                <img src="yours_only2.2.jpg" class="icon">
                <div class="mid">
                    <div class="info">ONLYONEOF<br/>yours only 2.2</div>
                </div>
            </div>
          </div>
          
          <div class="responsive">
            <div class="gallery"> 
                <img src="waw.jpg" class="icon">
                <div class="mid">
                    <div class="info">MAMAMOO<br/>WAW</div>
                </div>
            </div>
          </div>
          <br/><br/><br/>
          <p>&ensp;&ensp;Recent plays</p> 
          <div class="responsive">
            <div class="gallery">
                <img src="squareup.jpg" class="icon">
                <div class="mid">
                    <div class="info">BLACKPINK<br/>SQUARE UP</div>
                </div>
            </div>
          </div>

          <div class="responsive">
            <div class="gallery">
                <img src="wantyouhere.jpg" class="icon">
                <div class="mid">
                    <div class="info">HIGHST<br/>Want You Here</div>
                </div>
            </div>
          </div>

          <div class="responsive">
            <div class="gallery">
                <img src="theeve.jpg" class="icon">
                <div class="mid">
                    <div class="info">EXO<br/>The War</div>
                </div>
            </div>
          </div>

          <div class="responsive">
            <div class="gallery">
                <img src="fml.jpg" class="icon">
                <div class="mid">
                    <div class="info">SEVENTEEN<br/>FML</div>
                </div>
            </div>
          </div>
          <br/><br/><br/>
          <p>&ensp;&ensp;Discover more</p> 
          <div class="responsive">
            <div class="gallery">
                <img src="chaoschap.jpg" class="icon">
                <div class="mid">
                    <div class="info">TOMORROW X TOGETHER<br/>THE CHAOS CHAPTER: FIGHT OR ESCAPE</div>
                </div>
            </div>
          </div>

          <div class="responsive">
            <div class="gallery">
                <img src="you.jpg" class="icon">
                <div class="mid">
                    <div class="info">Troye Sivan<br/>You</div>
                </div>
            </div>
          </div>

          <div class="responsive">
            <div class="gallery">
                <img src="rpm.jpg" class="icon">
                <div class="mid">
                    <div class="info">SF9<br/>RPM</div>
                </div>
            </div>
          </div>

          <div class="responsive">
            <div class="gallery">
                <img src="onmyway.jpg" class="icon">
              <div class="mid">
                <div class="info">Alan Walker<br/>On My Way</div>
              </div>
            </div>
          </div>
</body>
</html>