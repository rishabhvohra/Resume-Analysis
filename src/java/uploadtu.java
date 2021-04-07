/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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

/**
 *
 * @author STIGMATA
 */
public class uploadtu extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @para m response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String domain = request.getParameter("domain");
            String language = request.getParameter("language");
            String concept = request.getParameter("concept");
            String keyword = request.getParameter("keywords");
            String discription = request.getParameter("dis");
            String fi = request.getParameter("fi");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/job", "root", "root");
                PreparedStatement ps = con.prepareStatement("insert into tutorial (domain,language,concept,keywords,discription,fi) values (?, ?, ?, ?, ?, ?)");

                ps.setString(1, domain);
                ps.setString(2, language);
                ps.setString(3, concept);
                ps.setString(4, keyword);
                ps.setString(5, discription);
                ps.setString(6, fi);

                int x = ps.executeUpdate();
                if (x != 0) {

                    JOptionPane.showMessageDialog(null, "Upload successfully");
                    RequestDispatcher rd = request.getRequestDispatcher("atutoview.jsp");
                    rd.forward(request, response);

                } else {

                    JOptionPane.showMessageDialog(null, "Upload failed");
                    RequestDispatcher rd = request.getRequestDispatcher("tutoupload.jsp");
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
