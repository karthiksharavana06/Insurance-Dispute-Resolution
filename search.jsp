
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Road Accident  & Service Flat Bootstrap Responsive website Template | Home :: w3layouts</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Water Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="css/bootstrap.min.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- navigation -->
    <link href="css/nav.css" type="text/css" rel="stylesheet" media="all">
    <!-- banner slider -->
    <link href="css/css_slider.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
<%
        String msg = (String) session.getAttribute("msg");
        if (msg != null) {
    %>
    <script>
        var msg = '<%=msg%>';
        alert(msg);
    </script>
         <%
            session.removeAttribute("msg");
        }
    %>
    
</head>

<body>
    <!-- header -->
    <header>
        <div class="container">
            <div class="header d-lg-flex justify-content-between align-items-center">
                <div class="header-agile">
                    <h1>
                        <a class="navbar-brand editContent logo" href="index.html">
                            <span class="fa fa-tint" aria-hidden="true"></span>ROAD ACCIDENT
                        </a>
                    </h1>
                </div>
                <div class="nav_w3ls">
                    <nav>
                        <input class="menu-btn" type="checkbox" id="menu-btn" />
                        <label class="menu-icon" for="menu-btn"><span class="navicon"></span></label>
                         <ul class="menu">
                            <li class="nav-item "><a class="nav-link" href="User_Home.jsp">Home</a></li>
                            <li class="nav-item active"><a class="nav-link" href="search.jsp">Police</a></li>
                           
                            <li class="nav-item "><a class="nav-link" href="request2.jsp">Doctor</a></li>
                            <li class="nav-item "><a class="nav-link" href="viewreport.jsp">View</a></li>
                            <li class="nav-item "><a class="nav-link" href="insurance_claim.jsp">Police Report</a></li>
                            <li class="nav-item "><a class="nav-link" href="vehicle.jsp">Doctor Report</a></li>
                            <li class="nav-item "><a class="nav-link" href="amount.jsp">Approval</a></li>
                            <li class="nav-item"><a class="nav-link" href="Logout.jsp">Logout</a></li>

                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- //header -->
    <!-- banner -->
    <div class="banner_w3lspvt">
        <div class="csslider infinity" id="slider1">
            <input type="radio" name="slides" id="slides_1" />
            <input type="radio" name="slides"  id="slides_2" />
            <input type="radio" name="slides" id="slides_3" />
            <ul class="banner_slide_bg">
                <li>
                    <div class="container">
                        <div class="w3ls_banner_txt ml-0 text-left">
                            <h3 class="w3ls_pvt-title text-white">On the spot (Realtime) Accident </h3>
                            <p class="text-white">information & Insurance dispute resolution</p>
                        </div>
                    </div>
                </li>
                <li>
                    <div class="container">
                        <div class="w3ls_banner_txt">
                            
                        </div>
                    </div>
                </li>
                <li>
                    <div class="container">
                        <div class="w3ls_banner_txt ml-0 text-left">
                            
                        </div>
                    </div>
                </li>
            </ul>
            <div class="navigation">
                <div>
                    <label for="slides_1"></label>
                    <label for="slides_2"></label>
                    <label for="slides_3"></label>
                </div>
            </div>
        </div>
    </div>
    <!-- //banner -->       
    <!-- about-->
    <section class="wthree-row py-md-5" id="about">
       <form method="post" action="search1.jsp" >  
            <center>
            <font face="Algerian" color="blue" size="6px"><center><b>  REQUEST POLICE REPORT</b></center></font>
           <br> <p><font face="Algerian" color="black" size="5px"><b>AADHAR ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b></font>&nbsp;&nbsp;<input type="text" name="aadhar" value="" maxlength="12"style="font-weight: bold; height: 45px; width: 25%; border: 2px solid blue; font-family: Georgia; font-size: 19px; text-align: center; color:blue" required=""/></p>
          
           <br> <p><font face="Algerian" color="black" size="5px"><b>USER NAME&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:</b></font>&nbsp;&nbsp;<input type="text" name="search" value="" style="font-weight: bold; height: 45px; width: 25%; border: 2px solid blue; font-family: Georgia; font-size: 19px; text-align: center; color:blue" required=""/></p>
       
<br><input type="submit" value="REQUEST" style="width: 15% ; height:45px ;font-family: georgia; font-size: 19px; font-weight: bold; background-color: skyblue; border-color: blue">
       
            
            </center>
        </form>
        <br>
        <br>
        <br>
<section class="wrapper">
           <%
            
             try
             { 
                 //String uname=(String)session.getAttribute("uname");
                    String loc = request.getParameter("id1");
                    System.out.println("loc"+loc);
                    if(loc!=null)
                    {
                        String location = request.getParameter("search");
                        System.out.println("loc"+location);
                    Connection connection = null;
                    Statement statement = null;
                    ResultSet resultSet1;
                    Class.forName("com.mysql.jdbc.Driver");
                    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/road_accident", "root","admin");
                    String sql = "select * from road_location where loc='"+location+"'";
                    statement = connection.createStatement();
                    resultSet1 = statement.executeQuery(sql);
                    System.out.println(resultSet1);
            
                   while(resultSet1.next())
                {
                   
                                        
      %>  
           <tr><td align="center"><font face="Algerian" color="black" size="5px"><b>S.NO</b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="3px"><b><%=resultSet1.getString("sno")%> </td></tr>
            <tr> <td align="center"><font face="Algerian" color="black" size="5px"><b>PATIENT NAME</b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="3px"><b><%=resultSet1.getString("loc")%></td></tr>
            <tr><td align="center"><font face="Algerian" color="black" size="5px"><b>MOVEMENT OF CLIENT ON IMPACT</b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="3px"><b><%=resultSet1.getString("lat")%></td></tr>
            <tr><td align="center"><font face="Algerian" color="black" size="5px"><b>IMMEDIATE SYMPTOMS </b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="3px"><b><%=resultSet1.getString("lon")%></td></tr>
            <tr><td align="center"><font face="Algerian" color="black" size="5px"><b>CHRONOLOGICAL PROGRESSION OF PHYSICAL SYMPTOMS</b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="3px"><b><%=resultSet1.getString("phy_symp")%></td></tr>
             <tr><td align="center"><font face="Algerian" color="black" size="5px"><b>CHRONOLOGICAL PROGRESSION OF PSYCHOLOGICAL SYMPTOMS</b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="3px"><b><%=resultSet1.getString("phsy_symp")%></td></tr>
            <tr><td align="center"><font face="Algerian" color="black" size="5px"><b>CURRENT SYMPTOMS AND TREATMENT</b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="3px"><b><%=resultSet1.getString("treatment")%></td></tr>
           <tr> <td align="center"><font face="Algerian" color="black" size="5px"><b>LOSS CONSEQUENTIAL TO INJURY </b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="3px"><b><%=resultSet1.getString("injury")%></td></tr>

</td>
            
    </tr>             <table><br><br><tr align="bottom"> <a href="sendtoinsurance1.jsp?patient_name=<%=resultSet1.getString("p_name")%>"><center><button style="width: 30%; height: 50px; bottom:  45px; font-family: georgia; font-size: 20px; font-weight: bold">SEND TO INSURANCE</button></center></a></tr>
</table>

                  
      
      
      
      
      <%
    
    }
                    }
              %>
                  
            <%    
             }
           catch (Exception e)
           {
       out.println(e);
          }    
             %>
</table>
    </section>
  
   
           
                  
    <footer class="bg-theme1">
        <div class="container">
            <div class="cpy-right">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="wthree-social">
                            <ul>
                                <li>
                                    <a href="#">
                                        <span class="fa fa-facebook-f icon_facebook"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="fa fa-twitter icon_twitter"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="fa fa-dribbble icon_dribbble"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="fa fa-google-plus icon_g_plus"></span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 text-lg-right mt-lg-0 mt-4">
                       
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- popup-->
    <div id="gal1" class="pop-overlay animate">
        <div class="popup">
            <img src="images/2.jpg" alt="Popup Image" class="img-fluid" />
            <p class="mt-4">Nulla viverra pharetra se, eget pulvinar neque pharetra ac int. placerat placerat dolor.</p>
            <a class="close" href="#portfolio_wthree">&times;</a>
        </div>
    </div>
    <!-- //popup -->
    <!-- popup-->
    <div id="gal2" class="pop-overlay animate">
        <div class="popup">
            <img src="images/3.jpg" alt="Popup Image" class="img-fluid" />
            <p class="mt-4">Nulla viverra pharetra se, eget pulvinar neque pharetra ac int. placerat placerat dolor.</p>
            <a class="close" href="#portfolio_wthree">&times;</a>
        </div>
    </div>
    <!-- //popup -->
    <!-- popup-->
    <div id="gal3" class="pop-overlay animate">
        <div class="popup">
            <img src="images/4.jpg" alt="Popup Image" class="img-fluid" />
            <p class="mt-4">Nulla viverra pharetra se, eget pulvinar neque pharetra ac int. placerat placerat dolor.</p>
            <a class="close" href="#portfolio_wthree">&times;</a>
        </div>
    </div>
    <!-- //popup3 -->
    <!-- popup-->
    <div id="gal4" class="pop-overlay animate">
        <div class="popup">
            <img src="images/5.jpg" alt="Popup Image" class="img-fluid" />
            <p class="mt-4">Nulla viverra pharetra se, eget pulvinar neque pharetra ac int. placerat placerat dolor.</p>
            <a class="close" href="#portfolio_wthree">&times;</a>
        </div>
    </div>
    <!-- //popup -->
    <!-- popup-->
    <div id="gal5" class="pop-overlay animate">
        <div class="popup">
            <img src="images/6.jpg" alt="Popup Image" class="img-fluid" />
            <p class="mt-4">Nulla viverra pharetra se, eget pulvinar neque pharetra ac int. placerat placerat dolor.</p>
            <a class="close" href="#portfolio_wthree">&times;</a>
        </div>
    </div>
    <!-- //popup -->
    <!-- popup-->
    <div id="gal6" class="pop-overlay animate">
        <div class="popup">
            <img src="images/7.jpg" alt="Popup Image" class="img-fluid" />
            <p class="mt-4">Nulla viverra pharetra se, eget pulvinar neque pharetra ac int. placerat placerat dolor.</p>
            <a class="close" href="#portfolio_wthree">&times;</a>
        </div>
    </div>
    <!-- //popup -->
    <!-- popup-->
    <div id="gal7" class="pop-overlay animate">
        <div class="popup">
            <img src="images/1.jpg" alt="Popup Image" class="img-fluid" />
            <p class="mt-4">Nulla viverra pharetra se, eget pulvinar neque pharetra ac int. placerat placerat dolor.</p>
            <a class="close" href="#portfolio_wthree">&times;</a>
        </div>
    </div>
    <!-- //popup -->
    <!-- popup-->
    <div id="gal8" class="pop-overlay animate">
        <div class="popup">
            <img src="images/2.jpg" alt="Popup Image" class="img-fluid" />
            <p class="mt-4">Nulla viverra pharetra se, eget pulvinar neque pharetra ac int. placerat placerat dolor.</p>
            <a class="close" href="#portfolio_wthree">&times;</a>
        </div>
    </div>
    <!-- //popup -->
    <!-- popup-->
    <div id="gal9" class="pop-overlay animate">
        <div class="popup">
            <img src="images/3.jpg" alt="Popup Image" class="img-fluid" />
            <p class="mt-4">Nulla viverra pharetra se, eget pulvinar neque pharetra ac int. placerat placerat dolor.</p>
            <a class="close" href="#portfolio_wthree">&times;</a>
        </div>
    </div>
    <!-- //popup -->
</body>

</html>