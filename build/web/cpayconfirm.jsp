<%-- 
    Document   : cpayconfirm
    Created on : May 2, 2014, 1:03:09 PM
    Author     : Fenil Admin
--%>

<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Trip Invoices</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="style.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" media="screen, print, handheld" type="text/css" href="calendar.css" />
        <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
        <script type="text/javascript" src="calendar.js"> </script>

        <script type="text/javascript">
            function autoClick () {
               
                document.getElementById("frm").setAttribute("hidden", "hidden");
               
                document.forms["paypalForm"].submit();
               
            }
            window.onload = autoClick;
        </script>

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
                            <li><a href="trip.jsp">Trip</a></li>
                            <li class="active"><a href="AllInvoiceServlet">Invoice</a></li>
                            <li><a href="LogOutServlet">Log Out</a></li>
                        </ul>
                        <div class="clr"></div>
                    </div>
                    <div class="hbg"><img src="images/header_images.jpg" width="923" height="291" alt="" style="border-radius: 13px;"/></div>
                </div>
                <div class="content" style="min-height: 500px" >
                    <div class="content_bg">
                        <div class="mainbar">
                            <div class="article">

                                <div class="clr"></div>
                                <h2>Loading...</h2>
                                <form action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="post" name="paypalForm" id="frm">
                                    <h3>If the page is loading, please wait. Otherwise click on confirm and wait. </h3>
                                    <input type="hidden" name="cmd" value="_xclick" />
                                    <input type="hidden" name="business" value="${vaccid}" />
                                    <!-- <input type="hidden" name="password" value="API password" /
                                     <input type="hidden" name="custom" value="1123" />-->
                                    <table>
                                        <tr><td>
                                                Trip Name</td>
                                            <td><input type="text" name="item_name" value="Trip name: ${tname}" readonly="readonly"/></td></tr>
                                        <tr><td>
                                                Amount</td><td>
                                                <input type="text" name="amount" value="${amt}" readonly="readonly"/></td></tr>
                                        <!--<input type="hidden" name="rm" value="1" />-->

                                    </table>

                                    <input type="hidden" name="return" value="http://localhost:8084/HolidayPlanner/CPayReturnServlet" />
                                    <input type="hidden" name="cancel_return" value="http://localhost:8084/HolidayPlanner/AllInvoiceServlet" />
                                    <!-- <input type="hidden" name="cert_id" value="API Singature" />-->



                                    <p><%-- <input type="submit" value="Get Info" name="st"/> --%>
                                        <input type="submit" value="Confirm" name="st"/>
                                    </p>  

                                </form>

                                <ul class="sb_menu">
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                    <li></li>
                                </ul>
                            </div>
                        </div>

                        <div class="sidebar">
                            <div class="gadget">
                                <h2 class="star"><span>Menu</span></h2>
                                <div class="clr"></div>
                                <ul class="sb_menu">

                                </ul>
                            </div>
                            <div class="gadget"></div>
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

