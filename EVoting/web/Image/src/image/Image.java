/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package image;

/**
 *
 * @author Eva
 */
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
public class Image {
    
   public static void main(String[] args) throws SQLException {
        Image imageTest = new Image();
        imageTest.insertImage();
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
 
    public void insertImage() {
        Connection connection = null;
        PreparedStatement statement = null;
        FileInputStream inputStream = null;
 
        try {
            File image = new File("C:/lotus.jpg");
            inputStream = new FileInputStream(image);
 
            connection = getConnection();
            statement = connection.prepareStatement("insert into trn_imgs(img_title, img_data) " + "values(?,?)");
            statement.setString(1, "LOTUS");
            statement.setBinaryStream(2, (InputStream) inputStream, (int)(image.length()));
 
            statement.executeUpdate();
 
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

    /**
     * @param args the command line arguments
     */
   
