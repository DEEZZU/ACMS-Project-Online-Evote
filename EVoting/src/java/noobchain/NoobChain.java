/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package noobchain;

import java.util.ArrayList;
import com.google.gson.GsonBuilder;

public class NoobChain {
	
	public static ArrayList<Block> blockchain = new ArrayList<Block>(); 

//	public static void main(String[] args) {	
//		//add our blocks to the blockchain ArrayList:
//		blockchain.add(new Block("Hi im the first block", "0"));		
//		blockchain.add(new Block("Yo im the second block",blockchain.get(blockchain.size()-1).hash)); 
//		blockchain.add(new Block("Hey im the third block",blockchain.get(blockchain.size()-1).hash));
//		
//		String blockchainJson = new GsonBuilder().setPrettyPrinting().create().toJson(blockchain);		
//		System.out.println(blockchainJson);
//	}

        public static void createChain(Block B)
        {
            if(blockchain.size()-1 >=0)
            {
               // B.setHash(blockchain.get(blockchain.size()-1).hash);
            }
            else
            {
                // B.setHash("0");
            }
            blockchain.add(B);	   
        }
        
        public static String printChain()
        {
            String blockchainJson = new GsonBuilder().setPrettyPrinting().create().toJson(blockchain);
            return blockchainJson;
        }
        
        public static Boolean isChainValid() {
	Block currentBlock; 
	Block previousBlock;
	
	//loop through blockchain to check hashes:
	for(int i=1; i < blockchain.size(); i++) {
		currentBlock = blockchain.get(i);
		previousBlock = blockchain.get(i-1);
		//compare registered hash and calculated hash:
		//if(!currentBlock.hash.equals(currentBlock.calculateHash()) ){
			System.out.println("Current Hashes not equal");			
			return false;
		}
		//compare previous hash and registered previous hash
	//	if(!previousBlock.hash.equals(currentBlock.previousHash) ) {
			System.out.println("Previous Hashes not equal");
			return false;
		}
	}
	//return true;
//}
//}