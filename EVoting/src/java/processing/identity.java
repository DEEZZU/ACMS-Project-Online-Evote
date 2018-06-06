/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package processing;
import java.sql.*;  
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author deeps
 */
public class identity {
    
public static String identify(voterID bean) throws SQLException{  
ResultSet rs = null;    
boolean records=false;

try
{      
Connection con=ConnectionProvider.getCon();             
PreparedStatement ps=con.prepareStatement("Select * from admin where VID=?"); 
ps.setString(1, bean.getVid()); 
rs=ps.executeQuery();                
}
catch(Exception e){}

if(rs!=null && rs.next()!=false)
{
    return "A";
}

return "V";
}
    
    
}
