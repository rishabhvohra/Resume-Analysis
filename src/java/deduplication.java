
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;
import org.apache.commons.io.FileUtils;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Suresh
 */
public class deduplication {

    boolean findd(String username, String filename, String cmy) throws FileNotFoundException, IOException {
        boolean sta = false;
        int k = 0;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/job", "root", "root");
            Statement st = con.createStatement();

            String fname = "Select * from apply ";
//                     ps.setString(1, fname);
            ResultSet rs = st.executeQuery(fname);
            while (rs.next()) {

                String filedb = rs.getString("resume");
                File f1 = new File("D:\\jobs\\ori\\" + filename);
                File f2 = new File("D:\\jobs\\ori\\" + cmy + "\\" + filedb);
                boolean rsult;
                rsult = FileUtils.contentEquals(f1, f2);
                if (!rsult) {
                    System.out.println("Files content are not equal.");
                } else {
                    k++;
                }

            }

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
        if (k == 0) {
            sta = true;
        }
        return sta;
    }

}
