import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class AnaysisResume extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String name = request.getParameter("n");
            String resume = request.getParameter("r");
            String array = null;
            String final_Result = null;
            try {

                //Stopword Removel
                stopword1 s = new stopword1();
                String result = s.spl(resume, name);

                System.out.println("Stop word result---> " + result);

                if (result.contains("Computer") || result.contains("JAVA") || result.contains("JSP") || result.contains("J2EE") || result.contains("MYSQL") || result.contains("Servlets") || result.contains("Struts") || result.contains("Spring")) {
                    final_Result = "CSE";
                    String tech = "JAVA,JSP,J2EE,MYSQL,Servlets,Struts,Spring";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job", "root", "root");
                    PreparedStatement ps = con.prepareStatement("update apply set stopword=?, dept=? ,tech=? where uname=?");
                    ps.setString(1, result.trim());
                    ps.setString(2, final_Result);
                    ps.setString(3, tech);
                    ps.setString(4, name);

                    int x = ps.executeUpdate();
                    if (x != 0) {

                        request.getRequestDispatcher("Skills.jsp").forward(request, response);

                    } else {
                        request.getRequestDispatcher("ahome.jsp").forward(request, response);
                    }
                } else if (result.contains("Electronics") || result.contains("JAVA") || result.contains("Embedded systems") || result.contains("J2EE") || result.contains("MYSQL") || result.contains("Arduino")) {
                    final_Result = "ECE";
                    String tech = "PCB design and EDA tools,JAVA,J2EE,MYSQL,Embedded systems,CCNA,Arduino ";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job", "root", "root");
                    PreparedStatement ps = con.prepareStatement("update apply set stopword=?, dept=?,tech=? where uname=?");
                    ps.setString(1, result.trim());
                    ps.setString(2, final_Result);
                    ps.setString(3, tech);
                    ps.setString(4, name);

                    int x = ps.executeUpdate();
                    if (x != 0) {

                        request.getRequestDispatcher("Skills.jsp").forward(request, response);

                    } else {
                        request.getRequestDispatcher("ahome.jsp").forward(request, response);
                    }
                } else if (result.contains("Electrical") || result.contains("JAVA") || result.contains("Eagle") || result.contains("PCB designing") || result.contains("PLC") || result.contains("AutoCAD/Microstation")) {
                    final_Result = "EEE";
                    String tech = "Eagle,JAVA,PCB designing,PLC,AutoCAD,Microstation ";

                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job", "root", "root");
                    PreparedStatement ps = con.prepareStatement("update apply set stopword=?, dept=?,tech=? where uname=?");
                    ps.setString(1, result.trim());
                    ps.setString(2, final_Result);
                    ps.setString(3, tech);
                    ps.setString(4, name);

                    int x = ps.executeUpdate();
                    if (x != 0) {

                        request.getRequestDispatcher("Skills.jsp").forward(request, response);

                    } else {
                        request.getRequestDispatcher("ahome.jsp").forward(request, response);
                    }

                } else if (result.contains("Mechanical")) {
                    final_Result = "Mech";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job", "root", "root");
                    PreparedStatement ps = con.prepareStatement("update apply set stopword=?, dept=? where uname=?");
                    ps.setString(1, result.trim());
                    ps.setString(2, final_Result);
                    ps.setString(3, name);

                    int x = ps.executeUpdate();
                    if (x != 0) {

                        request.getRequestDispatcher("Skills.jsp").forward(request, response);

                    } else {
                        request.getRequestDispatcher("ahome.jsp").forward(request, response);
                    }

                } else {
                    final_Result = "no match";
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job", "root", "root");
                    PreparedStatement ps = con.prepareStatement("update apply set stopword=?, dept=? where uname=?");
                    ps.setString(1, result.trim());
                    ps.setString(2, final_Result);
                    ps.setString(3, name);
                    int x = ps.executeUpdate();
                    if (x != 0) {

                        request.getRequestDispatcher("ahome.jsp").forward(request, response);

                    } else {
                        request.getRequestDispatcher("ahome.jsp").forward(request, response);
                    }
                }

            } catch (Exception e) {
                System.out.println("Exception-----> " + e);
            }

        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
