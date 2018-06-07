/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package encryptDecrypt;
import java.sql.*;  
import java.util.ArrayList;
import processing.*;
import noobchain.*;
//import java.math.BigInteger;

public class insertIntoDb {

public static int insert(byte[] bean) throws SQLException, Exception{  
   
try{  
Connection con=ConnectionProvider.getCon();  
PreparedStatement ps=con.prepareStatement("insert into transaction(data) values(?)");  
ps.setBytes(1,bean);
ps.execute();
}
catch(Exception e){}  
int s = retrieve();
return s;
}

public static int retrieve() throws SQLException, Exception{  
ResultSet rs = null;   
boolean records=false;
int count=0;
ArrayList<byte[]> List= new ArrayList<byte[]>();
try{  
Connection con=ConnectionProvider.getCon();  
              
PreparedStatement ps=con.prepareStatement("select * from transaction");  
rs=ps.executeQuery();                
}
catch(Exception e){}  
//return (new BigInteger("0"));
if (rs!= null) 
    {
        
        while(rs.next()){
        byte[] bytes = null;
        count++;
        bytes = rs.getBytes(2);
        List.add(bytes);
        } 
        rs.close();
        rs = null; 
        
        if(count==5)
        {
            deleteTransactions();
            count=Block.createBlock(List);
        }
    } 
return count;
}

public static int deleteTransactions() throws SQLException
{
//    int rs = 0;  
    try{  
    Connection con=ConnectionProvider.getCon();  
    PreparedStatement ps=con.prepareStatement("delete from transaction");  
    ps.execute();                
    }
    catch(Exception e){}  
    return 1;
}
}

