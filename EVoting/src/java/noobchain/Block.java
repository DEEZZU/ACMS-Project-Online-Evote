/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package noobchain;

import java.util.Date;

public class Block {

	public String hash;
	public String previousHash;
	private String data; //our data will be a simple message.
	private long timeStamp; //as number of milliseconds since 1/1/1970.

	//Block Constructor.
        public Block(String data)
        {
            this.data=data;
            this.timeStamp = new Date().getTime();
        }
        
        public String getBlockData()
        {
            return data;
        }
       
	public Block(String data,String previousHash ) {
		this.data = data;
		this.previousHash = previousHash;
		this.timeStamp = new Date().getTime();
                this.hash = calculateHash(); //Making sure we do this after we set the other values.
	}
        
        public void setHash(String previousHash)
        {
            this.previousHash = previousHash;
            this.hash = calculateHash();
        }
        public String calculateHash() {
	String calculatedhash = StringUtil.applySha256( 
			previousHash +
			Long.toString(timeStamp) +
			data 
			);
	return calculatedhash;
}
}
