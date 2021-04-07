/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.File;
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

/**
 *
 * @author STIGMATA
 */
public class uploadva extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String cmy = request.getParameter("cmy");
            String posi = request.getParameter("posi");
            String loca = request.getParameter("loca");
            String qua = request.getParameter("qua");
            String exp = request.getParameter("exp");
            String tuto = request.getParameter("tuto");
            String dis = request.getParameter("dis");
            String count = request.getParameter("count");
//            String discription=request.getParameter("tuto");
//      count

            HttpSession s = request.getSession();
            String name = s.getAttribute("name").toString();

            PreparedStatement ps = null;
            int xx = 0;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/job", "root", "root");
                ps = con.prepareStatement("insert into vacancy (cmy,posi,loca,qua,exp,tuto,dis,count1) values (?, ?, ?, ?, ?, ?, ?, ?)");

                ps.setString(1, cmy);
                ps.setString(2, posi);
                ps.setString(3, loca);
                ps.setString(4, qua);
                ps.setString(5, exp);
                ps.setString(6, tuto);
                ps.setString(7, dis);
                ps.setString(8, count);

                int x = ps.executeUpdate();
                if (x != 0) {

                    ps = con.prepareStatement("select * from vac_ana");
                    ResultSet rs = ps.executeQuery();
                    while (rs.next()) {
                        String cse = rs.getString("cse");
                        String ece = rs.getString("ece");
                        String eee = rs.getString("eee");
                        String mech = rs.getString("mech");

                        int cs = Integer.parseInt(cse);

                        int csee = cs + 1;

                        int ec = Integer.parseInt(ece);

                        int ecee = ec + 1;

                        int ee = Integer.parseInt(eee);

                        int eeee = ee + 1;

                        int me = Integer.parseInt(mech);

                        int mee = me + 1;

                        if (qua.contains("cse")) {
                            ps = con.prepareStatement("update vac_ana set cse=? where name=?");
                            ps.setInt(1, csee);
                            ps.setString(2, name);
                            xx = ps.executeUpdate();
                        } else if (qua.contains("ece")) {
                            ps = con.prepareStatement("update vac_ana set ece=? where name=?");
                            ps.setInt(1, ecee);
                            ps.setString(2, name);
                            xx = ps.executeUpdate();
                        } else if (qua.contains("eee")) {
                            ps = con.prepareStatement("update vac_ana set eee=? where name=?");
                            ps.setInt(1, eeee);
                            ps.setString(2, name);
                            xx = ps.executeUpdate();
                        } else if (qua.contains("mech")) {
                            ps = con.prepareStatement("update vac_ana set mech=? where name=?");
                            ps.setInt(1, mee);
                            ps.setString(2, name);
                            xx = ps.executeUpdate();
                        } else {
                            JOptionPane.showMessageDialog(null, "sorry");
                        }

                    }

                    String FOLDER = "D:\\jobs\\ori\\" + cmy;
                    File newFolder = new File(FOLDER);
                    newFolder.mkdir();
                    JOptionPane.showMessageDialog(null, "Upload successfully");
                    RequestDispatcher rd = request.getRequestDispatcher("atutoview.jsp");
                    rd.forward(request, response);

                } else {

                    JOptionPane.showMessageDialog(null, "Upload failed");
                    RequestDispatcher rd = request.getRequestDispatcher("aviewvac.jsp");
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
