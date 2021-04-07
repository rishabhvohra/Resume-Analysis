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
        <%
            String name = (String) session.getAttribute("name");
        %>
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
                            <a href="stopword.jsp" class="dropdown-toggle" >Stop Word Removed Content</a>
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

                        <table border="4" style="border: #080808;font-size: 25px;color: #080808;width: 1000px;">

                            <%
                                try {
                                    Class.forName("com.mysql.jdbc.Driver");
                                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job", "root", "root");
                                    Statement st = con.createStatement();
                                    String username = "Select * from register where mail='" + name + "'";
                                    ResultSet rs = st.executeQuery(username);
                                    while (rs.next()) {
                                        String id = rs.getString(1);
                                        String fname = rs.getString(2);
                                        String lname = rs.getString(3);
        //                 String ge=rs.getString(7);
                                        String mbl = rs.getString(5);
                                        String gen = rs.getString(6);
                                        String dob = rs.getString(7);
                                        String mail = rs.getString(8);
                                        String country = rs.getString(9);
                                        String education = rs.getString(11);
                                        String ex = rs.getString("Experience");
                                        String de = rs.getString("de");
        //String website =rs.getString(10);
%>  
                            <tr ><td>ID</td><td style="color: darkblue"><%=id%></td></tr><tr><td>FIRST NAME</td><td style="color: darkblue"><%=fname%></td></tr><tr><td>LAST NAME</td><td style="color: darkblue"><%=lname%></td></tr><tr><td>MOBILE</td><td style="color: darkblue"><%=mbl%></td></tr><tr><td>GENDER</td><td style="color: darkblue"><%=gen%></td></tr><tr><td>DATE OF BIRTH</td><td style="color: darkblue"><%=dob%></td></tr><tr><td>EMAIL</td><td style="color: darkblue"><%=mail%></td></tr><tr><td>COUNTRY</td><td style="color: darkblue"><%=country%></td></tr><tr><td>EDUCTION</td><td style="color: darkblue"><%=education%></td></tr><tr><td>DEGREE</td><td style="color: darkblue"><%=de%></td></tr></tr>
                            <!--<tr ></tr>-->
<!--                            <center>
                                <h1><form method="post" action="rec.jsp">
                                        <input type="hidden" name="ex" value="<%=ex%>">
                                        <input type="hidden" name="ed" value="<%=education%>">
                                        <input type="submit" value="Recommentation jobs">
                                        <input type="hidden" name="" value="<%=ex%>">
                                        <input type="hidden" name="" value="<%=ex%>">
                                    </form></h1></center>-->
                                    <%
                                                session.setAttribute("uid", id);
                                            }
                                        } finally {

                }%> 
                        </table></center> 






                    <div class="clearfix"> </div>
                </div>
            </div>


    </body>
</html>	