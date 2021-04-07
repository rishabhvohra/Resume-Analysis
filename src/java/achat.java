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
public class achat extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String ch=request.getParameter("ch");
            String name=request.getParameter("name");
      
            
            try
            {
              Class.forName("com.mysql.jdbc.Driver");  
Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/job","root","root");
              PreparedStatement ps=con.prepareStatement("insert into chat (chat,name) values (?, ?)");

 ps.setString(1, ch);
 ps.setString(2, name);
 
 
 int x=ps.executeUpdate();
 if (x!=0)
 {
     
     JOptionPane.showMessageDialog(null, "Send successfully");
     RequestDispatcher rd=request.getRequestDispatcher("achat.jsp");
     rd.forward(request, response);
     
    
 }
  else
 {
     
     
     JOptionPane.showMessageDialog(null, " failed");
     RequestDispatcher rd=request.getRequestDispatcher("achat.jsp");
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
