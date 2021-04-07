/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

//import com.mysql.jdbc.*;
import java.io.File;
import java.sql.*;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.servlet.ServletContext;
import java.lang.UnsupportedOperationException;
import java.sql.DriverManager;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

/**
 *
 * @author jemi java
 */
public class Java_Encryption1 {

    public static void main(String[] args) {

    }

    public void fun(String patg, String nam, String k) throws Throwable {
        //ServletContext s1=setServletContext();
        //String path=(String)s1.getAttribute("FPath");
        //String name=(String)s1.getAttribute("FName");

        Statement st;
        try {

            String path = patg;
            String fname = nam;
            String key = k;

//Folder changes 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                           
//                        String out_put_path="C:/Cloud_Project/"+fname;
            String out_put_path = "D:/jobs/encrypt/" + fname;

            //MODIFICATION 1                    
//MODIFICATION 1
//Folder changes 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%                           
            //MODIFICATION 1...         
            //	String key = "squirrel123"; // needs to be at least 8 characters for DES
            FileInputStream fis1 = new FileInputStream(path);
            FileOutputStream fos1 = new FileOutputStream(out_put_path);
            encrypt(key, fis1, fos1);

        } catch (Exception e) {
            System.out.println(e);

        }
    }

    public static void encrypt(String key, InputStream is, OutputStream os) throws Throwable {
        encryptOrDecrypt(key, Cipher.ENCRYPT_MODE, is, os);
    }

    public static void decrypt(String key, InputStream is, OutputStream os) throws Throwable {
        encryptOrDecrypt(key, Cipher.DECRYPT_MODE, is, os);
    }

    public static void encryptOrDecrypt(String key, int mode, InputStream is, OutputStream os) throws Throwable {

        DESKeySpec dks = new DESKeySpec(key.getBytes());
        SecretKeyFactory skf = SecretKeyFactory.getInstance("DES");
        SecretKey desKey = skf.generateSecret(dks);
        Cipher cipher = Cipher.getInstance("DES"); // DES/ECB/PKCS5Padding for SunJCE

        if (mode == Cipher.ENCRYPT_MODE) {
            cipher.init(Cipher.ENCRYPT_MODE, desKey);
            CipherInputStream cis = new CipherInputStream(is, cipher);
            doCopy(cis, os);
        } else if (mode == Cipher.DECRYPT_MODE) {
            cipher.init(Cipher.DECRYPT_MODE, desKey);
            CipherOutputStream cos = new CipherOutputStream(os, cipher);
            doCopy(is, cos);
        }
    }

    public static void doCopy(InputStream is, OutputStream os) throws IOException {
        byte[] bytes = new byte[64];
        int numBytes;
        while ((numBytes = is.read(bytes)) != -1) {
            os.write(bytes, 0, numBytes);
        }
        os.flush();
        os.close();
        is.close();
    }

}
