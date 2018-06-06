/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package processing;
import java.sql.*;  
import java.util.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author deeps
 */
public class fetchCandidates {
    
public static ArrayList<candidateBean> listCandidates() throws SQLException{  

    ArrayList<candidateBean> List=new ArrayList<candidateBean>();
    ResultSet rs = null;    
    boolean records=false;

    try{  
    Connection con=ConnectionProvider.getCon();  
    PreparedStatement ps=con.prepareStatement("Select cid, fname, lname from candidate");  
    rs=ps.executeQuery();                
    }
    
    catch(Exception e){}  
    if (rs != null) 
    {
             try {
                records=rs.next();

                do{
                    candidateBean bean=new candidateBean();
                    bean.setCid(rs.getInt(1));
                    bean.setFname(rs.getString(2));
                    bean.setLname(rs.getString(3));
                    List.add(bean);
                }while(rs.next());
            }
            catch (SQLException ex) { }
            rs.close();
    }
    rs = null; 

return List;
}
    
}
