<%-- 
    Document   : viewhotel
    Created on : Apr 21, 2014, 10:22:00 AM
    Author     : Brijesh Admin
--%>



<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <title>View Hotels</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link href="style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script type="text/javascript" src="js/cufon-yui.js"></script>
        <script type="text/javascript" src="js/arial.js"></script>
        <script type="text/javascript" src="js/cuf_run.js"></script>
        <script type="text/javascript">
            
            function checkarea()
            {
        
                document.getElementById("errordest").innerHTML="";		
               						             
                var state=document.getElementById("state").value;    
                   
                if(state=="-1")
                {
                    document.getElementById("errordest").innerHTML="Enter Destination";
                    document.getElementById("errordest").style.color="red";
                    return false;
                }
                   
                return true;
                    
            }
     
           
            function fillarea()
            {
                var xmlhttp;
                
                var state=document.getElementById("state").value;    
                   
                if (state == -1)
                {
                    document.getElementById("errordest").innerHTML="enter destination";
                    return;
                }
                if (window.XMLHttpRequest)
                {// code for IE7+, Firefox, Chrome, Opera, Safari
                    xmlhttp=new XMLHttpRequest();
                }
                else
                {// code for IE6, IE5
                    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
                }
                xmlhttp.onreadystatechange=function()
                {
                    if (xmlhttp.readyState==4 && xmlhttp.status==200)
                    {
                        document.getElementById("area").innerHTML=xmlhttp.responseText;
                    }
                }
                xmlhttp.open("GET","FillArea?state="+state,true);
                xmlhttp.send();
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
                             <li class="active"><a href="SetProfileServlet">Profile</a></li>
                            <li><a href="DestinationServlet1">Hotel</a></li>
                            <li><a href="VSubmittedTripServlet">Trip</a></li>
                            <li><a href="VCInvServlet">Invoice</a></li>
                            <li><a href="LogOutServlet">Log out</a></li>
                        </ul>
                        <div class="clr"></div>
                    </div>
                    <div class="hbg"><img src="images/header_images.jpg" width="923" height="291" alt="" style="border-radius: 13px;"/></div>
                </div>
                <div class="content">
                    <div class="content_bg">
                        <div class="mainbar">
                            <div class="article">
                                <h2 align="left"><br>
                                    Hello... </h2>
                                <h3>  ${Status} </h3>

                                <c:remove scope="session" var="Status" />
                                <c:remove scope="session" var="Update" />
                                <div class="clr"></div>
                               
                                <div><br/><br/></div>
                                
                                <div class="clr" id="view">
                                    <form action="ViewOrDelete" method="get">

                                        <table width="100%"><tr>
                                                <th scope="row"><div align="left" class="style5">Destination </div></th>
                                        <td><select name="state" id="state" onChange="fillarea()" style="width: 130px">
                                                    <option value="-1">Select Destination</option>
                                                    <c:forEach items="${Destination}"  var="a">
                                                        <option value="${a.destId}">${a.destination}</option>
                                                    </c:forEach>
                                                </select>
                                                <div id="errordest" class="style1" style="font-size:12px"></div>
                                            </td>
                                            <th  scope="row"><div align="left" class="style5">Area </div></th>
                                            <td><select name="area" id="area"style="width: 130px">
                                                <option value="-1">Select Area</option>
                                                </select></td>
                                                
                                             <th scope="row"><div align="left" class="style5">Hotel Type</div></th>

                                <td><select name="htype" id="htype" style="width: 130px">
                                                    <option value="-1"> Select type</option>
                                                    <option value="1"> 1 Star </option>
                                                    <option value="2"> 2 Star </option>
                                                    <option value="3"> 3 Star </option>
                                                    <option value="4"> 4 Star </option>
                                                    <option value="5"> 5 Star </option>
                                                    <option value="7"> 7 Star </option>
                                                </select>
                                                

                                            </td>
                                            </tr>
                                            </table>
                                        &nbsp;<p class="style1"><input type="submit" value="Search" id="add3" onClick="return check();"/></p>

                                    </form>
                                </div>
                               <div> <form action="" method="get" name="">

                                       <table border="1" width="100%">
                                                <thead>
                                                    <tr>
                                                      <th>Select</th>
                                                        <th>Name</th>
                                                        <th>Area</th>  
                                                        
                                                        <th>Type</th>
                                                        <th>Ph No.</th>
                                                        <th>Email</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${Hotel}" var="h">
                                                        <tr>
                                                            <td align="center"><input type="radio" name="hotel"value="${h.no}"/></td>
                                                             <td align="center">${h.name}</td>
                                                            <td align="center">${h.area}</td>
                                                            <td align="center">${h.type}</td>
                                                            <td align="center">${h.phno}</td>
                                                            <td align="center">${h.hemail}</td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                            </table><br/>
                                       
                                    <input type="submit" name="button" value="View"/>
                                    <input type="submit" name="button" value="Delete"/>
                                </form>
                                   </div>
                                    
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
                                    <li><a href="DestinationServlet1">Add</a></li>
                                    <li class="active"><a href="DestinationServlet2">View</a></li>
                                    <li><a href="">Delete</a></li>


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
