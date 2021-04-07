<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Seeking an Job Portal Category Flat Bootstrap Responsive Website Template | Login :: w3layouts</title>
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
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
	        </button>
                <a class="navbar-brand" href="home.jsp"><h1>JOB PORTAL</H1></a>
	    </div>
	    <!--/.navbar-header-->
	    <div class="navbar-collapse collapse" id="bs-example-navbar-collapse-1" style="height: 1px;">
	        <ul class="nav navbar-nav">
		        <li class="dropdown">
		            <a href="ahome.jsp" class="dropdown-toggle" >Home</a>

		        </li>
                         <li class="dropdown">
		        	<a href="audetails.jsp" class="dropdown-toggle" >User Details</a>
		        </li>
                        <li class="dropdown">
		        	<a href="uvacancy.jsp" class="dropdown-toggle" >Upload Vacancy</a>
		        </li>
                        <li class="dropdown">
		        	<a href="aviewvac.jsp" class="dropdown-toggle" >View Vacancy</a>
		        </li>
                        <li class="dropdown">
		        	<a href="tutoupload.jsp" class="dropdown-toggle" >Upload Tutorials</a>
		        </li>
                        <li class="dropdown">
		        	<a href="atutoview.jsp" class="dropdown-toggle" >View Tutorials</a>
		        </li>
                        <li class="dropdown">
		        	<a href="asts.jsp" class="dropdown-toggle" >Status</a>
		        </li>
                        <li class="dropdown">
		        	<a href="login.html" class="dropdown-toggle" >Logout</a>
		        </li>
		        
	        </ul>
	    </div>
	    <div class="clearfix"> </div>
	  </div>
	    <!--/.navbar-collapse-->
	</nav>
<div class="banner_1">
	<div class="container">
		<div id="search_wrapper1">
		   
		</div>
   </div> 
</div>	
<div class="container">
    <div class="single">  
       
        <div style="width: 500px;height: 50px;">
	 	   
                
                    
  <table border="4" style="border: #080808;font-size: 15px;color: #080808;width: 1000px;">
      <tr><br><td>DOMAIN</td><td>LANGUAGE</td><td>CONCEPT</td><td>KEY WORDS</td><td>DESCRIPTION</td><td>FILE</td></tr>
                    <% 
                        
//                         String conc=(String)session.getAttribute("concept");
                        String conc=request.getParameter("concept");
               try{ 
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/job","root","root");
                Statement st=con.createStatement();
         String username="Select * from tutorial where concept='"+conc+"'"; 
           ResultSet rs=st.executeQuery(username);
             while(rs.next()){
                 String domain=rs.getString(1);
                 String language=rs.getString(2);
                 String concept=rs.getString(3);

                 String keywords=rs.getString(4); 
                 String discription=rs.getString(5);
                 String fi=rs.getString(6);
//                 String mail=rs.getString(8);
//                 String country=rs.getString(9); 
//                  String education=rs.getString(11); 
//String website =rs.getString(10);
            %>   
  <tr style="color: darkblue"><td><%=domain%></td><td><%=language%></td><td><%=concept%></td><td><%=keywords%></td><td><%=discription%></td><TD><a href="download?fi=<%=rs.getString(6)%>" ><%=fi%></a></TD></tr>
            
             
            <%
             session.setAttribute("concept",concept);
             } }  finally {
            
        }%> 
         </table>
                    
					
		           
               
        
      
  <div class="clearfix"> </div>
 </div>
</div>


</body>
</html>	