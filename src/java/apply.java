/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class apply extends HttpServlet {

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
            throws ServletException, IOException, Throwable {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String cmy = request.getParameter("cmy");
            String pos = request.getParameter("posi");
            String lo = request.getParameter("loca");
            String qa = request.getParameter("quali");
            String ex = request.getParameter("exp");
            String resume = request.getParameter("resume");
            String name = request.getParameter("name");

            HttpSession ss = request.getSession();
            String name1 = ss.getAttribute("name").toString();

            File f = new File("D:\\jobs\\ori\\" + cmy);
            if (!f.exists()) {
                if (f.mkdir()) {

                } else {

                }

            }

            deduplication dd = new deduplication();

            Random rd1 = new Random();
            int f2 = rd1.nextInt(100000000);
            String key = String.valueOf(f2);

            Random check = new Random();
            int cc = check.nextInt(100000000);
            String ch = String.valueOf(cc);

            if (dd.findd(name, resume, cmy)) {
                FileOutputStream op = null;
                try {
                    File file = new File("D:\\jobs\\ori\\" + resume);
                    InputStream ip = new FileInputStream(file);

                    BufferedReader br = new BufferedReader(new FileReader(file));

                    StringBuilder sb = new StringBuilder();
                    String line = br.readLine();

                    while (line != null) {
                        sb.append(line);
                        sb.append("\n");
                        line = br.readLine();
                        stopword1 s = new stopword1();
                        String stop = s.spl(line, resume);
                    }

//                    String content = IOUtils.toString(ip, "UTF-8");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/job", "root", "root");
                    PreparedStatement ps = con.prepareStatement("insert into apply (cmy,posi,laca,quali,exp,resume,uname,stopword,enkey,checksum1,checksum2) values (?,?, ?, ?, ?, ?,?,?,?,?,?)");

                    ps.setString(1, cmy);
                    ps.setString(2, pos);
                    ps.setString(3, lo);
                    ps.setString(4, qa);
                    ps.setString(5, ex);
                    ps.setString(6, resume);
                    ps.setString(7, name1);
                    ps.setAsciiStream(8, ip, (int) file.length());
                    ps.setString(9, key);
                    ps.setString(10, ch);
                    ps.setString(11, ch);

                    int x = ps.executeUpdate();

                    if (x != 0) {

//                        op = new FileOutputStream("D:\\jobs\\ori\\" + cmy + "\\" + resume);
//                        int c;
//                        while ((c = ip.read()) != -1) {
//                            op.write(c);
//                        }
                        File src = new File("D:\\jobs\\ori\\" + resume);
                        File dest = new File("D:\\jobs\\ori\\" + cmy + "\\" + resume);

                        InputStream is = null;
                        OutputStream os = null;
                        try {
                            is = new FileInputStream(src);
                            os = new FileOutputStream(dest);

                            // buffer size 1K
                            byte[] buf = new byte[1024];

                            int bytesRead;
                            while ((bytesRead = is.read(buf)) > 0) {
                                os.write(buf, 0, bytesRead);
                            }
                        } finally {
                            is.close();
                            os.close();
                        }

                        String path1 = "D:\\jobs\\ori\\" + resume;

                        //Personal encryption
                        //     Random key generation
//         File Encryption
                        Java_Encryption1 j = new Java_Encryption1();
                        j.fun(path1, resume, key);

                        JOptionPane.showMessageDialog(null, "Apply successfully");
                        RequestDispatcher rd = request.getRequestDispatcher("ustatus.jsp");
                        rd.forward(request, response);

                    } else {

                        JOptionPane.showMessageDialog(null, "Apply failed");
                        RequestDispatcher rd = request.getRequestDispatcher("appaly.jsp");
                        rd.forward(request, response);

                    }
                } catch (Exception e) {
                    JOptionPane.showMessageDialog(null, e);

                }
            } else {
                JOptionPane.showMessageDialog(null, "Already  Apllyed");
                RequestDispatcher rd = request.getRequestDispatcher("appaly.jsp");
                rd.forward(request, response);
            }
        }
    }

//
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
        try {
            processRequest(request, response);
        } catch (Throwable ex) {
            Logger.getLogger(apply.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (Throwable ex) {
            Logger.getLogger(apply.class.getName()).log(Level.SEVERE, null, ex);
        }
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
