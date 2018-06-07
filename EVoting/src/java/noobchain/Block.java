/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package noobchain;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import processing.ConnectionProvider;

public class Block {

	public static String merkleRoot;
	public static String previousHash;
	private static ArrayList<byte[]> data; //our data will be a simple message.

        
        public static void setHash() throws SQLException
        {
            //  previousHash = previousHash;
            //get from database 
            ResultSet rs = null;   
            boolean records=false;
            try{  
            Connection con=ConnectionProvider.getCon();  
            PreparedStatement ps=con.prepareStatement("select * from chain");  
            rs=ps.executeQuery();                
            }
            catch(Exception e){}  
            //return (new BigInteger("0"));
            if (rs!= null & rs.next()!=false ) 
                {
                    do
                    {
                        previousHash = rs.getString(2);//automatically the last
                    }
                    while(rs.next());
                    rs.close();
                    rs = null; 
                } 
            else
            {
                previousHash = StringUtil.applySha256("0");
            }
        }
        
        public static String calculateHash(ArrayList<byte[]> L) {
        String hash = null;
        int size;
        size=L.size();
        ArrayList<String> s= new ArrayList<String>();
        for(int i=0;i<size;i++)
        {
            s.add(new String(L.get(i)));
        }
        hash = StringUtil.applySha256(s.get(1)+s.get(2)+s.get(3)+s.get(4)+s.get(0));
        return hash;
        }
        
        public static int createBlock(ArrayList<byte[]> L) throws SQLException
        {
            merkleRoot=calculateHash(L);
            data=L;
            setHash();
            chain.insertInChain(previousHash,merkleRoot,data);
            return 1;
        }
        
}

