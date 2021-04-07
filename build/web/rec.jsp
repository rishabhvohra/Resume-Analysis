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
                            <a href="chat.jsp" class="dropdown-toggle" >Chat</a>
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



                    <table border="4" style="border: #080808;font-size: 15px;color: #080808;width: 1100px;">
                        <tr><br><td>COMPANY NAME</td><td>POSITION</td><td>LOCATION</td><td>QUALIFICATION</td><td>YEAR OF EXPERIENCE</td><td>TUTORIALS</td><td>DESCRIPTION</td><td>APPLY</td></tr>
                        <%
                            String ex = request.getParameter("ex");
                            String ed = request.getParameter("ed");
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job", "root", "root");
                                Statement st = con.createStatement();
                                String username = "Select * from vacancy where qua='" + ed + "' or exp='" + ex + "'";
                                ResultSet rs = st.executeQuery(username);
                                while (rs.next()) {
                                    String cmy = rs.getString(1);
                                    String posi = rs.getString(2);
                                    String loca = rs.getString(3);

                                    String quali = rs.getString(4);
                                    String exp = rs.getString(5);
                                    String tuto = rs.getString(6);
                                    String des = rs.getString(7);
    //                 String country=rs.getString(9); 
    //                  String education=rs.getString(11); 
    //String website =rs.getString(10);
%>   
                        <tr style="color: darkblue"><td><%=cmy%></td><td><%=posi%></td><td><%=loca%><td><%=quali%><td><%=exp%><td><a href="ujobvacancy1.jsp"><%=tuto%></a></td><td><%=des%></td><td><a href="appaly.jsp">Submit</a></td></tr>


                        <% //
                                    session.setAttribute("tuto", tuto);
                                    session.setAttribute("cmy", cmy);
                                    session.setAttribute("posi", posi);
                                    session.setAttribute("loca", loca);
                                    session.setAttribute("quali", quali);
                                    session.setAttribute("exp", exp);
                                    session.setAttribute("des", des);
                                }
                            } finally {

                }%> 
                    </table>






                    <div class="clearfix"> </div>
                </div>
            </div>


    </body>
</html>	