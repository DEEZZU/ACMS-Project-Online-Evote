/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package processing;
import java.sql.*;  
import java.util.logging.Level;
import java.util.logging.Logger;
//import java.math.BigInteger;

public class testVid {

public static String validate(voterID bean) throws SQLException{  
ResultSet rs = null;    
boolean records=false;
String phone;
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement("Select pno from basic where VID=?");  
  
ps.setString(1, bean.getVid());  

rs=ps.executeQuery();                
}
catch(Exception e){}  
if(rs!=null && rs.next()!=false)
{
    try {
            
            String pno;
          //  records=rs.next();
            pno=rs.getString(1);
           // phone= new BigInteger(pno);
            return pno;
        } 
        catch (SQLException ex) 
        {
                Logger.getLogger(testVid.class.getName()).log(Level.SEVERE, null, ex);
        }
    rs.close();    
    rs = null;
}
//return (new BigInteger("0"));
return "Not Found";
}
}
