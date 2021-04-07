import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;
public class Jobseekerlogin extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;

            String name = request.getParameter("uname");
            String pass = request.getParameter("pwd");
            HttpSession session = request.getSession();
            session.setAttribute("name", name);
            try {
                int a = 0;
                Class.forName("com.mysql.jdbc.Driver");
                con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/job", "root", "root");
                ps = con.prepareStatement("select * from register where mail=? and pwd=?");
                ps.setString(1, name);
                ps.setString(2, pass);

                rs = ps.executeQuery();
                while (rs.next()) {

                    a++;

                }
                if (a != 0) {

                    session.setAttribute("name", name);
//                    JOptionPane.showMessageDialog(null, "Login successfully");
                    RequestDispatcher rd = request.getRequestDispatcher("uhome.jsp");
                    rd.forward(request, response);

                } else {
//                    JOptionPane.showMessageDialog(null, "Login Failed");
                    RequestDispatcher rd = request.getRequestDispatcher("login.html");
                    rd.forward(request, response);
                }

            } catch (Exception e) {
                JOptionPane.showMessageDialog(null, e);
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
