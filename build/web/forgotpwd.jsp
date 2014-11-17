<%-- 
    Document   : login
    Created on : Mar 4, 2014, 5:21:16 PM
    Author     : Brijesh Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<title>Forgot Password</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 16px}
.style2 {font-size: 12px}
-->
</style>
</head>
<body>
<div class="main">
  <div class="main_resize">
    <div class="header">
      <div class="logo">
        <h1><a href="#"><span>Holiday</span>Planner<small>Customize Your Trip</small></a></h1>
      </div>
      <div class="search">
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.jsp">About Us</a></li>
		  <li><a href="plantrip.jsp">Plan Trip</a></li>
		  <li class="active"><a href="login.jsp">Log In</a></li>
          <li><a href="contact.jsp">Contact Us</a></li>
		          </ul>
        <div class="clr"></div>
      </div>
      <div class="hbg"><img src="images/header_images.jpg" width="923" height="291" alt="" style="border-radius: 13px;"/></div>
    </div>
    <div class="content" style="min-height: 500px">
      <div class="content_bg">
        <div class="mainbar">
          <div class="article">
            <h2><span>Enter your e-mail ID to reset password. </span> </h2>
            <div class="clr"></div>
            <form action="ForgotPwdServlet" method="post">
                <h3 style="color:red;"> ${Status}</h3>
                <br>
                <h3>Enter your email id here. You will receive an email from 'Holiday Planner' with information about further steps.</h3>
                <ol>
                <li>
                  <label for="name"><span class="style1">Username/Email*</span> </label>
                  <input id="name" name="name" class="text" autofocus="autofocus"/>
                </li>
                <li>
                  <label></label>
                </li>
			    <li>
                                <input type="submit" value="Reset" />
                            </li>
			
              </ol>
            </form>
          </div>
        </div>
     
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <div class="clr"></div>
      </div>
    </div>
  </div>
  <div class="fbg">
  <div class="fbg_resize">
      <div class="col c1">
        <h2><span>Image Gallery</span></h2>
		<br>
        <a href="#"><img src="images/1.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/2.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/3.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/4.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/5.jpg" width="58" height="58" alt="" /></a> <a href="#"><img src="images/6.jpg" width="58" height="58" alt="" /></a> </div>
      <div class="col c2">
        <h2><span>About Us</span></h2>
        <p><br />
            Personalized Holiday Planner is a paperless online system through which you can plan your customized trip/holiday from anywhere in the world. It provides facility to any customers to plan their customized Trip/Holidays with various predefined options including travel and accommodation. They will get all quotation online and based on it; customer can confirm one of the quotations online.</p>
      </div>
    <div class="col c3">
<iframe src="http://www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Fpages%2FICreateTechnologies%2F242090552585142%3Fref%3Dbr_tf&amp;width&amp;height=258&amp;colorscheme=light&amp;show_faces=true&amp;header=false&amp;stream=false&amp;show_border=false&amp;appId=440465316037205" scrolling="no" frameborder="0" style="border:none; overflow:hidden; height:258px;" allowTransparency="true"></iframe>
	
      </div>

      <div class="clr"></div>
    </div>
  </div>
</div>
<div class="footer">
  <div class="footer_resize">
    <p class="lf">&copy; Copyright Holiday Planner.</p>
    <p class="rf">Layout by Holiday Planner</p>
    <div class="clr"></div>
  </div>
</div>

</html>
