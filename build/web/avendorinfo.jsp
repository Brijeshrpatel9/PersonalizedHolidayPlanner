<%-- 
    Document   : avendorinfo
    Created on : Apr 18, 2014, 8:04:12 PM
    Author     : Brijesh Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Vendor Information</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
        <style type="text/css">
            <!--
            .style1 {
                font-size: 16px;
                font-weight: bold;
            }
            .style5 {font-size: 12px}
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
                            <li><a href="SetProfileServlet">Profile</a></li>
                            <li class="active"><a href="avendor.jsp">User</a></li>

                            <li><a href="ainvoice.jsp">Invoice</a></li>
                            <li><a href="LogOutServlet">Log out</a></li>
                        </ul>
                        <div class="clr"></div>
                    </div>
                    <div class="hbg"><img src="images/header_images.jpg" width="923" height="291" alt="" style="border-radius: 13px;"/></div>
                </div>
                <div class="content" style="min-height: 500px">
                    <div class="content_bg">
                        <div class="mainbar">
                            <div class="article">
                                <h2 align="left">Vendor Information</h2>
                                <h3>  ${Status} </h3>
                                <c:remove scope="session" var="Status" />
                                <c:remove scope="session" var="Update" />

                                <div class="clr"></div>
                                <form action="VGetServlet" method="post">
                                    <table width="100%" height="229"  class="style5">
                                        <tr>
                                            <th width="25%" scope="row"><div align="left" class="style5">First Name </div></th>
                                        <td width="75%" class="style5">${P.fname}

                                        </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><div align="left" class="style5">Last Name </div></th>
                                <td class="style5">${P.lname}                                        </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><div align="left" class="style5">Gender</div></th>
                                        <td>${P.gender}</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><div align="left" class="style5">Address</div></th>
                                        <td>${P.street}</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><div align="left"><span class="style5"><span class="style5"></span></span></div></th>
                                        <td>${P.city} ${P.pincode}  </td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><div align="left"><span class="style5"><span class="style5"></span></span></div></th>
                                        <td>${P.state}</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><div align="left" class="style5">Phone No. </div></th>
                                        <td>${P.phno}</td>
                                        </tr>
                                        <tr>
                                            <th scope="row"><div align="left" class="style5">Email</div></th>
                                        <td>${P.email}</td>
                                        </tr>
                                        <tr></tr>
                                        <tr>
                                            <th scope="row"><div align="left" class="style5">Diposit Rs</div></th>
                                        <td>${dipamt}</td>
                                        </tr>
                                    </table>
                                </form>
                            </div>

                            <div class="article">
                                <h2><span></span> </h2>

                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                                <p>&nbsp;</p>
                            </div>
                        </div>
                        <div class="sidebar">
                            <div class="gadget">
                                <h2 class="star"><span>Menu</span></h2>
                                <div class="clr"></div>
                                <ul class="sb_menu">
                                    <li><a href="avendor.jsp">Add Vendor</a></li>
                                    <li class="active"><a href="AViewVendorServlet">View Vendor</a></li>
                                    <li><a href="ACustListServlet">View customer</a></li>


                                </ul>
                            </div>
                            <div class="gadget">
                                <h2 class="star">&nbsp;</h2>
                                <h2 class="star"><span></span></h2>
                            </div>
                            <div class="gadget">
                                <div class="clr"></div>
                                <div class="testi">

                                </div>
                            </div>
                        </div>
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


