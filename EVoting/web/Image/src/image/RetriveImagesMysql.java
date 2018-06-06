/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package image;
import java.sql.*;
import java.io.*;
 import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.ResultSet;
import java.io.FileOutputStream;
import java.io.OutputStream;

/**
 *
 * @author Eva
 */
public class RetriveImagesMysql {
   
		 public static void main(String[] args) throws SQLException {
                      RetriveImagesMysql imageTest = new RetriveImagesMysql();
                     // Image imageTest = new Image();
                      imageTest.retrieveImage();
       
    }
 
    public Connection getConnection() {
        Connection connection = null;
 
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/image", "root", "12345678");
        } catch (Exception e) {
            System.out.println("Error Occured While Getting the Connection: - " + e);
        }
        return connection;
    }

  
 public void retrieveImage() {
        Connection connection = null;
        PreparedStatement statement = null;
        //Statement stmt = null; 
        FileInputStream inputStream = null;
       // ResultSet rs = null;
        try {
            connection=getConnection();
         ResultSet  rs = connection.createStatement().executeQuery("select * from trn_imgs");
        //  ResultSet rs = stmt.executeQuery(“select image from image”);
int i = 0;
while (rs.next()) {
    //File file = new File("");
InputStream in = rs.getBinaryStream(1);
//OutputStream f = new FileOutputStream(new File("C:/lotus.jpg"));
i++;
int c = 0;
while ((c = in.read()) > -1) {
f.write(c);
}
f.close();
in.close();
}
        } catch (FileNotFoundException e) {
            System.out.println("FileNotFoundException: - " + e);
        } catch (SQLException e) {
            System.out.println("SQLException: - " + e);
        } finally {
 
            try {
                connection.close();
                statement.close();
            } catch (SQLException e) {
                System.out.println("SQLException Finally: - " + e);
            }
 
        }
 
}
}

