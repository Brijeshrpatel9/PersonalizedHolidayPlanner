<%-- 
    Document   : vatinv
    Created on : Apr 24, 2014, 3:17:06 PM
    Author     : Fenil Admin
--%>




<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <title>Invoice Approved Trip</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="style.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" media="screen, print, handheld" type="text/css" href="calendar.css" />
        <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
        <script type="text/javascript" src="calendar.js"> </script>
        <script type="text/javascript" >
            function vali()
            {
                document.getElementById("err").innerHTML ="";
                
                var total, inv;
                total = document.getElementById("tot").value;
                inv = document.getElementById("amt").value;
                
                if( inv > total )
                {
                    document.getElementById("err").innerHTML = "Invoice amount can't be greater than Quotation given."
                    document.getElementById("err").style.color= "red";
                    return false;
                }
                return true;
            }
            
        </script>

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
                            <li><a href="vprofile.jsp">Profile</a></li>
                            <li><a href="DestinationServlet1">Hotel</a></li>
                            <li class="active"><a href="VSubmittedTripServlet">Trip</a></li>
                            <li><a href="VCInvServlet">Invoice</a></li>
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
                                <h2>Approved Trips </h2>
                                <div class="clr"></div>
                                <p> <p>
                                <form action="VGetInfoServlet" method="post" name="submiittedtrip">
                                    <h3>Generate Invoice for approved trip.</h3>
                                    <table class="style5" border="0" width="100%">
                                        <tr>
                                            <th width="30%" align="left">Trip Name</th>
                                            <td width="70%">${info.tname}</td>
                                        </tr>

                                    </table>
                                    <br>
                                    <table class="style5" border="0" width="100%">
                                       
                                        <tr>
                                            <th width="30%" align="left">Customer ID</th>
                                            <td width="70%">${info.cid}</td>
                                        </tr>
                                    </table>
                                    <br>
                                    <table class="style5" border="0" width="100%">
                                        <tr>
                                            <th width="30%" align="left">Quotation Amount</th>
                                            <td width="70%">${info.total}</td>
									  </tr>
											<tr>
                                            <th width="30%" align="left">Remaining</th>
                                            <td>${info.remaining}</td>
                                        </tr>
                                    </table>
                                    <br>

                                    <table class="style5" border="0" width="57%">
                                        <tr>
                                            <th align="left" colspan="2">Enter Invoice Detail.</th>

                                        </tr>
                                        <tr>
                                            <th align="left" width="53%">Amount*</th>
                                            <td width="47%"><input type="text" name="amt" id="amt" value="0" onkeypress='return event.charCode >= 48 && event.charCode <= 57' />
                                                <div id="err"></div>
                                          </td>
                                        </tr>
                                        <tr>
                                            <td><input type="text" name="tid" id="tid" value="${info.tid}" hidden="hidden"/></td>
                                            <td><input type="text" name="tot" id="tot" value="${info.total}" hidden="hidden"/> </td>
                                        </tr>

                                  </table>

                                    <p> 
                                        <input type="submit" value="Generate" name="vst" onClick="return vali();" />
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

                                    <li><a href="VSubmittedTripServlet">View Inquiry List</a></li>
                                    <li><a href="VQuotedTripServlet">View Quoted Trip</a></li>
                                    <li class="active"><a href="VApprovedTripServlet">View Approved Trip</a></li>
                                    <li><a href="VBookedTripServlet">View Booked Trip </a></li>

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

