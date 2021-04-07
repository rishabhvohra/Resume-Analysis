<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Seeking an Job Portal Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Seeking Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap-3.1.1.min.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!----font-Awesome----->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!----font-Awesome----->
</head>
<body>
<nav class="navbar navbar-default" role="navigation">
	<div class="container">
            <% 
     String name=(String)session.getAttribute("name");
          %>
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
	        </button>
                <a class="navbar-brand" href="home.jsp"><h1>JOB PORTAL</h1></a>
	    </div>
	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	         <ul class="nav navbar-nav">
		        <li class="dropdown">
		            <a href="thome.jsp" class="dropdown-toggle" >Home</a>
		        </li>
                         <li class="dropdown">
		        	<a href="tudetails.jsp" class="dropdown-toggle" >User Details</a>
		        </li>
                        <li class="dropdown">
		        	<a href="tuvacancy.jsp" class="dropdown-toggle" >Upload Vacancy</a>
		        </li>
                        <li class="dropdown">
		        	<a href="uptp.jsp" class="dropdown-toggle" >Upload Tutorial</a>
		        </li>
                        <li class="dropdown">
		        	<a href="tviewvac.jsp" class="dropdown-toggle" >View Vacancy</a>
		        </li>
                        <li class="dropdown">
		        	<a href="tchat.jsp" class="dropdown-toggle" >Chat</a>
		        </li>
<!--                        <li class="dropdown">
		        	<a href="tutoupload.jsp" class="dropdown-toggle" >Upload Tutorials</a>
		        </li>-->
<!--                        <li class="dropdown">
		        	<a href="atutoview.jsp" class="dropdown-toggle">View Tutorials</a>
		        </li>-->
<!--                         <li class="dropdown">
		            <a href="achat.jsp" class="dropdown-toggle" >Chat</a>
		        </li>-->
                        <li class="dropdown">
		        	<a href="tsts.jsp" class="dropdown-toggle">Status</a>
		        </li>
                        <li class="dropdown">
		        	<a href="login.html" class="dropdown-toggle" >Logout</a>
		        </li>
	        </ul>
		        </li>
	        </ul>
	    </div>
	    <div class="clearfix"> </div>
	  </div>
	    <!--/.navbar-collapse-->
	</nav>
<div class="banner">
	<div class="container">
		<div id="search_wrapper">
		 
		 <div id="city_1" class="clearfix">
			
	     </div>
       </div>
   </div> 
    <center><h1 style="color: red">Welcome <%=name%></h1></center>
    <!--<footer><h1><%=name%></h1></footer>-->
</div>	



</body>
</html>	