import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;
public class JobSeekerRegister extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
        String fname=request.getParameter("fname");
            String lname=request.getParameter("lname");
            String pwd=request.getParameter("pwd");
            String mob=request.getParameter("mob");
            String sex=request.getParameter("gen");
            String dob=request.getParameter("dob");
            String email=request.getParameter("email");
            String country=request.getParameter("country");
            String exp=request.getParameter("exp");
            String edu=request.getParameter("edu");
            String subjects=request.getParameter("sub");
             String de=request.getParameter("de");
            
            try
            {
              Class.forName("com.mysql.jdbc.Driver");  
Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/job","root","root");
              PreparedStatement ps=con.prepareStatement("insert into register (fname,lname,pwd,mob,gen,dob,mail,country,Experience,Education,subject,de) values (?, ?, ?, ?, ?,?,?,?,?,?,?,?)");

 ps.setString(1, fname);
 ps.setString(2, lname);
 ps.setString(3, pwd);
 ps.setString(4, mob);
 ps.setString(5, sex);
 ps.setString(6, dob);
 ps.setString(7, email);
 ps.setString(8,country);
 ps.setString(9, exp);
 ps.setString(10, edu);
 ps.setString(11, subjects);
 ps.setString(12, de);
 int x=ps.executeUpdate();
 if (x!=0)
 {
     
     JOptionPane.showMessageDialog(null, "registration successfully");
     RequestDispatcher rd=request.getRequestDispatcher("login.html");
     rd.forward(request, response);
     
    
 }
  else
 {
     
     
     JOptionPane.showMessageDialog(null, "registration failed");
     RequestDispatcher rd=request.getRequestDispatcher("register.html");
     rd.forward(request, response);
     
     
     
     
 }
 }

            catch(Exception e){
                 JOptionPane.showMessageDialog(null,e);
                
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
