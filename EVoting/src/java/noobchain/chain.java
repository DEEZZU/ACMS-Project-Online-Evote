/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package noobchain;

import encryptDecrypt.RSA;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import processing.ConnectionProvider;

/**
 *
 * @author deeps
 */
public class chain {
    
    public static void insertInChain(String p, String m , ArrayList<byte[]> L){
        
            //ResultSet rs = null;   
            try{  
            Connection con=ConnectionProvider.getCon();  
            PreparedStatement ps=con.prepareStatement("insert into chain values(?,?,?,?,?,?,?)");
            ps.setString(1, p);
            ps.setString(2, m);
            ps.setBytes(3,L.get(0));
            ps.setBytes(4,L.get(1));
            ps.setBytes(5,L.get(2));
            ps.setBytes(6,L.get(3));
            ps.setBytes(7,L.get(4));
            ps.execute();               
            }
            catch(SQLException e){}  
            //return (new BigInteger("0"));     
    }
    
    public static ArrayList<Integer> retrieveChain() throws SQLException, Exception
    {
        ArrayList<Integer> list=new ArrayList<Integer>(100);
        for(int i=0;i<100;i++)
            list.add(0);
        ResultSet rs = null;
        try{  
            Connection con=ConnectionProvider.getCon();  
            PreparedStatement ps=con.prepareStatement("select * from chain");
            rs=ps.executeQuery();
            }
            catch(SQLException e){} 
        
        if(rs!=null)
        {
            while(rs.next())
            {
                Integer I = new Integer(0);
                I = Integer.parseInt(RSA.Decryption(rs.getBytes(3)));
                list.set(I,list.get(I)+1);
                I = Integer.parseInt(RSA.Decryption(rs.getBytes(4)));
                list.set(I,list.get(I)+1);
                I = Integer.parseInt(RSA.Decryption(rs.getBytes(5)));
                list.set(I,list.get(I)+1);
                I = Integer.parseInt(RSA.Decryption(rs.getBytes(6)));
                list.set(I,list.get(I)+1);
                I = Integer.parseInt(RSA.Decryption(rs.getBytes(7)));
                list.set(I,list.get(I)+1);
            }
            rs.close();
            
        }
        return list;
    }
}
