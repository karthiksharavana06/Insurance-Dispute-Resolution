<!--Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
                            <li class="nav-item "><a class="nav-link" href="insurance_home.jsp">HOMEPAGE</a></li>
                            <li class="nav-item active"><a class="nav-link" href="record.jsp">VIEW PATIENT RECORD</a></li>
 <li class="nav-item"><a class="nav-link" href="Logout.jsp">LOGOUT</a></li>

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
            <center>
                <font face="Algerian" color="blue" size="6px"><center><b> VIEW POLICE REPORT</b></center></font>
             <BR><table align="center" BORDER="1" CELLPADDING="10" CELLSPACING="12" bgcolor="" >
        <tr>
           </tr>

         
<section class="wrapper">
           <%
            
             try
             { 
                                  String uname=request.getParameter("p_name");

                    Connection connection = null;
                    Statement statement = null;
                    ResultSet resultSet1;
                    Class.forName("com.mysql.jdbc.Driver");
                    connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/road_accident", "root","admin");
                    String sql = "select * from accident_info where p_name='"+uname+"'";
                    statement = connection.createStatement();
                    resultSet1 = statement.executeQuery(sql);
                    System.out.println(resultSet1);
            
                   while(resultSet1.next())
                {
                   
                                        
      %>  
           <tr><tr><td align="center"><font face="Algerian" color="black" size="5px"><b>S.NO</b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="5px"><b><%=resultSet1.getString("sno")%> </td></tr>
            <tr> <td align="center"><font face="Algerian" color="black" size="5px"><b>PATIENT NAME</b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="5px"><b><%=resultSet1.getString("p_name")%></td></tr>
            <tr><td align="center"><font face="Algerian" color="black" size="5px"><b>DATE OF ACCIDENT</b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="5px"><b><%=resultSet1.getString("date")%></td></tr>
            <tr><td align="center"><font face="Algerian" color="black" size="5px"><b>TIME OF ACCIDENT </b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="5px"><b><%=resultSet1.getString("time")%>&nbsp;<%=resultSet1.getString("am")%></td></tr>
            <tr><td align="center"><font face="Algerian" color="black" size="5px"><b>HOW MANY PEOPLE WERE IN THE ACCIDENT VEHICLE??</b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="5px"><b><%=resultSet1.getString("people")%></td></tr>
             <tr><td align="center"><font face="Algerian" color="black" size="5px"><b>ROAD/STREET NAME</b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="5px"><b><%=resultSet1.getString("street")%></td></tr>
            <tr><td align="center"><font face="Algerian" color="black" size="5px"><b>CITY/STATE</b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="5px"><b><%=resultSet1.getString("city")%></td></tr>
            <tr> <td align="center"><font face="Algerian" color="black" size="5px"><b>DRIVING CONDITION </b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="5px"><b><%=resultSet1.getString("cond")%></td></tr>
            <tr> <td align="center"><font face="Algerian" color="black" size="5px"><b>SPEED VICTIM WERE TRAVELLING??  </b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="5px"><b><%=resultSet1.getString("travel")%>&nbsp;Km/Hr</td></tr>
            <tr> <td align="center"><font face="Algerian" color="black" size="5px"><b>MAKE AND MODEL OF VEHICLE YOU<BR> WERE IN ??</b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="5px"><b><%=resultSet1.getString("vehicle")%></td></tr>
            <tr> <td align="center"><font face="Algerian" color="black" size="5px"><b> MAKE AND MODEL OF OTHER <BR>VEHICLE  ?? </b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="5px"><b><%=resultSet1.getString("other")%></td></tr>
            <tr> <td align="center"><font face="Algerian" color="black" size="5px"><b>SPEED OTHER VEHICLE WAS TRAVELLING?? </b></font></td><td align="center"><font face="georgia" color="#0C6E69" size="5px"><b><%=resultSet1.getString("speed")%>&nbsp;Km/Hr</td></tr>
            <table><br><br><tr align="bottom"> <a href="record.jsp"><center><button style="width: 30%; height: 50px; bottom:  45px; font-family: georgia; font-size: 20px; font-weight: bold">BACK</button></center></a></tr>
</table>

            <%
    
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

              </center>
        </form>
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