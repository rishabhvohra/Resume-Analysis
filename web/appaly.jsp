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
                            <a href="uhome.jsp" class="dropdown-toggle" >Home</a>

                        </li>


                        <li class="dropdown">
                            <a href="profile.jsp" class="dropdown-toggle" >Profile</a>

                        </li>
                        <li class="dropdown">
                            <a href="ujobvacancy.jsp" class="dropdown-toggle" >Jobs</a>
                        </li>
                        <li class="dropdown">
                            <a href="ututorial.jsp" class="dropdown-toggle" >Tutorials</a>
                        </li>
                        <li class="dropdown">
                            <a href="ustatus.jsp" class="dropdown-toggle" >Status</a>
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

                    <center>       

                        <table border="4" style="border: #080808;font-size: 15px;color: #080808;width: 1100px;height: 300px;">

                            <%

                                String name = request.getParameter("name");
                                String tuto = request.getParameter("tuto");
                                String cmy = request.getParameter("cmy");
                                String posi = request.getParameter("posi");
                                String loca = request.getParameter("loca");
                                String quali = request.getParameter("quali");
                                String exp = request.getParameter("exp");
                                String des = request.getParameter("des");

        //                        String name=(String)session.getAttribute("name");
        //                         String tuto=(String)session.getAttribute("tuto");
        //                         String cmy=(String)session.getAttribute("cmy");
        //                         String posi=(String)session.getAttribute("posi");
        //                         String loca=(String)session.getAttribute("loca");
        //                         String quali=(String)session.getAttribute("quali");
        //                         String exp=(String)session.getAttribute("exp");
        //                         String des=(String)session.getAttribute("des");
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job", "root", "root");
                                    Statement st = con.createStatement();
                                    String username = "Select * from tutorial where language='" + tuto + "' ";
                                    ResultSet rs = st.executeQuery(username);
        //          
%>
                            <form method="post" action="apply">
                                <input type="hidden" name="name" value="<%=name%>">
                                <input type="hidden" name="tuto" value="<%=tuto%>">
                                <input type="hidden" name="cmy" value="<%=cmy%>">
                                <input type="hidden" name="posi" value="<%=posi%>">
                                <input type="hidden" name="loca" value="<%=loca%>">
                                <input type="hidden" name="quali" value="<%=quali%>">
                                <input type="hidden" name="exp" value="<%=exp%>">
                                <input type="hidden" name="des" value="<%=des%>">
                                <tr><td style="color: black;font-size:20px;width: 300px;">COMPANY NAME</td>
                                    <td style="color: darkblue;font-size:20px"><%=cmy%></td></tr>
                                <tr><td style="color: black;font-size:20px;width: 300px;">POSITION</td>
                                    <td style="color: darkblue;font-size:20px"><%=posi%></td></tr>
                                <tr><td style="color: black;font-size:20px;width: 300px;">LOCATION</td>
                                    <td style="color: darkblue;font-size:20px"><%=loca%></td></tr>
                                <tr><td style="color: black;font-size:20px;width: 300px;">QUALIFICATION</td>
                                    <td style="color: darkblue;font-size:20px"><%=quali%></td></tr>
                                <tr><td style="color: black;font-size:20px;width: 300px;">YEAR OF EXPERIENCE</td>
                                    <td style="color: darkblue;font-size:20px"><%=exp%><td></tr>
                                <tr ><td style="color: black;font-size:20px;width: 300px;">DESCRIPTION</td>
                                    <td style="color: darkblue;font-size:20px"><%=des%></td></tr>
                                <tr ><td style="color: black;font-size:20px;width: 300px;">RESUME</td>
                                    <td style="color: darkblue;font-size:20px">
                                        <input type="file" placeholder="upload Resume" name="resume"></td></tr>
                                <tr><td></td><td><input type="submit" value="Applay"></td></tr>
                            </form>

                            <%
                //             session.setAttribute("concept",concept);
                                } finally {

                }%> 
                        </table>
                    </center>   





                    <div class="clearfix"> </div>
                </div>
            </div>


    </body>
</html>	