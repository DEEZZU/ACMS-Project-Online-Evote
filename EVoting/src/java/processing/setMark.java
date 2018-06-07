/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package processing;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author deeps
 */
public class setMark {
    
    public static void mark(String v){
    try{  
            Connection con=ConnectionProvider.getCon();  
            PreparedStatement ps=con.prepareStatement("update basic set mark=1 where vid=?");
            ps.setString(1, v);
            ps.executeUpdate();               
            }
            catch(SQLException e){}  
    
}
    
    public static int obtainMark(String v){
    ResultSet rs = null;    
    boolean records=false;
    int m = 0;
    try{  
            Connection con=ConnectionProvider.getCon();  
            PreparedStatement ps=con.prepareStatement("select mark from basic where vid=?");
            ps.setString(1, v);
            rs=ps.executeQuery();               
            }
            catch(SQLException e){}  
    if (rs != null) 
    {
             try {
                records=rs.next();
                m=rs.getInt(1);
            }
            catch (SQLException ex) { }
            
    }
    rs = null; 

return m;
}
}

