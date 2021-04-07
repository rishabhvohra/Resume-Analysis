


<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>

<h4><a href="ujobvacancy.jsp">back / Home</a></h4>


<%

    String v1 = request.getParameter("cse");
//    v1 = v1.replaceAll("[\\[\\]\\(\\)]", "");
    String v2 = request.getParameter("ece");
//    v2 = v2.replaceAll("[\\[\\]\\(\\)]", "");

    String v3 = request.getParameter("eee");

    String v4 = request.getParameter("mech");
//    v1 = v1.replaceAll("[\\[\\]\\(\\)]", "");
//    String v4 = request.getParameter("v4");
//    v2 = v2.replaceAll("[\\[\\]\\(\\)]", "");

    String a = v1.replaceAll("\\s", "");
    String b = v2.replaceAll("\\s", "");
    String c = v3.replaceAll("\\s", "");
    String d = v4.replaceAll("\\s", "");
//String d = v4.replaceAll("\\s", "");

    int i = Integer.parseInt(a);
    int j = Integer.parseInt(b);
    int k = Integer.parseInt(c);
    int l = Integer.parseInt(d);

    Gson gsonObj = new Gson();
    Map<Object, Object> map = null;
    List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();

    map = new HashMap<Object, Object>();
    map.put("label", "CSE %");
    map.put("y", i);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "ECE %");
    map.put("y", j);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "EEE %");
    map.put("y", k);
    list.add(map);
    map = new HashMap<Object, Object>();
    map.put("label", "MECH %");
    map.put("y", l);
    list.add(map);

    String dataPoints = gsonObj.toJson(list);
%>

<!DOCTYPE HTML>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript">
            window.onload = function () {

                var chart = new CanvasJS.Chart("chartContainer", {
                    animationEnabled: true,
                    theme: "light2", // "light1", "dark1", "dark2"
                    title: {
                        text: "Current Job Vacancies"
                    },
                    subtitles: [{
                            text: "Word's count",
                            fontSize: 16
                        }],
                    axisY: {
                        scaleBreaks: {
                            type: "wavy",
                            autoCalculate: true
                        }
                    },
                    data: [{
                            type: "column",
                            indexLabel: "{y}",
                            dataPoints: <%out.print(dataPoints);%>
                        }]
                });
                chart.render();

            }
        </script>
    </head>
    <body>
        <div id="chartContainer" style="height: 370px; width: 100%;"></div>
        <!--<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>-->
        <script src="js/canvasjs.min.js" type="text/javascript"></script>

        <!--<center> <button onclick="myFunction()">Print this page</button></center>-->

        <script>
            function myFunction() {
                window.print();
            }
        </script>
    </body>
</html>   