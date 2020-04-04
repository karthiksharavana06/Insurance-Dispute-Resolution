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
    <style>
* {
  box-sizing: border-box;
}

/* Create two equal columns that floats next to each other */
.column {
  float: left;
  width: 50%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
</style>
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
                            <li class="nav-item "><a class="nav-link" href="police_Home.jsp">Home</a></li>
                            <li class="nav-item "><a class="nav-link" href="location.jsp">Death Update</a></li>
                            <li class="nav-item active"><a class="nav-link" href="accident_information.jsp">Accident Info</a></li>
                       <li class="nav-item "><a class="nav-link" href="accident_update.jsp">Accident Update</a></li>
                        <li class="nav-item "><a class="nav-link" href="response2.jsp">Response</a></li>           
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
        <form method="post" action="accident_info" >
            <center>
            <font face="Algerian" color="blue" size="6px"><center><b> VEHICLE ACCIDENT INFORMATION</b></center></font>
         <font face="Algerian" color="purple" size="5px"><center><b> PATIENT INFORMATION</b></center></font>
         <div class="row">
  <div class="column" style="background-color:white;">
    <br> <p><font face="Algerian" color="black" size="5px"><b>PATIENT NAME    &nbsp;:</b></font>&nbsp;&nbsp;<input type="text" name="patientname" style="font-weight: bold; height: 45px; width: 35%; border: 2px solid blue; font-family: Georgia; font-size: 19px; text-align: center; color:green" required="" /></p>
    <br> <p><font face="Algerian" color="black" size="5px"><b>DATE OF ACCIDENT&nbsp;:</b></font>&nbsp;&nbsp;<input type="date" name="date" style="font-weight: bold; height: 45px; width: 35%; border: 2px solid blue; font-family: Georgia; font-size: 19px; text-align: center; color:green" required="" /></p>
          
  </div>
  <div class="column" style="background-color:white;">
      <br> <p><font face="Algerian" color="black" size="5px"><b>TIME OF ACCIDENT&nbsp;:</b></font>&nbsp;&nbsp;<input type="text" name="time" style="font-weight: bold; height: 45px; width: 25%; border: 2px solid blue; font-family: Georgia; font-size: 19px; text-align: center; color:blue" required=""/>&nbsp;&nbsp;<select name="am" style="font-weight: bold; height: 45px; width: 15%; border: 2px solid blue; font-family: Georgia; font-size: 19px; text-align: center; color:blue" required=""/>
  <option value="AM">AM</option>
  <option value="PM">PM</option>
</select></p>
<br> <p><font face="Algerian" color="black" size="5px"><b>HOW MANY PEOPLE WERE IN THE ACCIDENT VEHICLE??&nbsp;:</b></font>&nbsp;&nbsp;<input type="text" name="people" style="font-weight: bold; height: 45px; width: 25%; border: 2px solid blue; font-family: Georgia; font-size: 19px; text-align: center; color:green" required="" /></p>
</div>
</div> 
     <div class="row">
  <div class="column" style="background-color:white;">
    <font face="Algerian" color="#0C6E69" size="6px"><center><b> ACCIDENT SITE</b></center></font>
    <br> <p><font face="Algerian" color="black" size="5px"><b>ROAD/STREET NAME    &nbsp;:</b></font>&nbsp;&nbsp;<input type="text" name="street" style="font-weight: bold; height: 45px; width: 35%; border: 2px solid blue; font-family: Georgia; font-size: 19px; text-align: center; color:green" required="" /></p>
    <br> <p><font face="Algerian" color="black" size="5px"><b>CITY/STATE&nbsp;:</b></font>&nbsp;&nbsp;<input type="text" name="city" style="font-weight: bold; height: 45px; width: 35%; border: 2px solid blue; font-family: Georgia; font-size: 19px; text-align: center; color:green" required="" /></p>
    <br> <p><font face="Algerian" color="black" size="5px"><b> DRIVING CONDITION&nbsp;:</b></font>&nbsp;&nbsp;
<select name="cond" style="font-weight: bold; height: 45px; width: 15%; border: 2px solid blue; font-family: Georgia; font-size: 19px; text-align: center; color:green" required=""/>
  <option value="DRY">Dry</option>
  <option value="WET">Wet</option>
<option value="ICY">Icy</option>
  </select></p>
  <br> <p><font face="Algerian" color="black" size="5px"><b>SPEED VICTIM WERE TRAVELLING?? &nbsp;:</b></font>&nbsp;&nbsp;<input type="text" name="travel" style="font-weight: bold; height: 45px; width: 35%; border: 2px solid blue; font-family: Georgia; font-size: 19px; text-align: center; color:green" required="" /></p>
</p>
  </div>
  <div class="column" style="background-color:white;">
<font face="Algerian" color="#0C6E69" size="6px"><center><b> OTHER VEHICLE</b></center></font>
     <br> <p><font face="Algerian" color="black" size="5px"><b> MAKE AND MODEL OF VEHICLE YOU<BR> WERE IN ??&nbsp;:</b></font>&nbsp;&nbsp;<input type="text" name="vehicle" style="font-weight: bold; height: 45px; width: 35%; border: 2px solid blue; font-family: Georgia; font-size: 19px; text-align: center; color:green" required="" />
      <br> <p><font face="Algerian" color="black" size="5px"><b> MAKE AND MODEL OF OTHER <BR>VEHICLE  ??&nbsp;:</b></font>&nbsp;&nbsp;<input type="text" name="other" style="font-weight: bold; height: 45px; width: 35%; border: 2px solid blue; font-family: Georgia; font-size: 19px; text-align: center; color:green" required="" />
   <br> <p><font face="Algerian" color="black" size="5px"><b>SPEED OTHER VEHICLE WAS TRAVELLING?? &nbsp;:</b></font>&nbsp;&nbsp;<input type="text" name="speed" style="font-weight: bold; height: 45px; width: 35%; border: 2px solid blue; font-family: Georgia; font-size: 19px; text-align: center; color:green" required="" /></p>
   <br> <p><font face="Algerian" color="black" size="5px"><b>IMAGE &nbsp;:</b></font>&nbsp;&nbsp;<input type="file" name="image" style="width: 45%; height: 45px; font-size: 20px; border-color: blue; background-color: skyblue; font-family: georgia; color:purple; font-weight: bolder" required="" /></p>

      </div>
</div>    

           <br>  <br>  <br>  <br>  <br>  <br> <br><input type="submit" value="SUBMIT" style="width: 15% ; height:45px ;font-family: georgia; font-size: 19px; font-weight: bold; background-color: skyblue; border-color: blue">
      
           </center>  
      
        </form>
    </section>
  
   <BR>
           
                  
    
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