/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package encryptDecrypt;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.Cipher;

/**
 *
 * @author deeps
 */
public class RSA {
    
    private static final String ALGORITHM = "RSA";

    public static byte[] encrypt(byte[] publicKey, byte[] inputData) throws Exception {

        PublicKey key = KeyFactory.getInstance(ALGORITHM).generatePublic(new X509EncodedKeySpec(publicKey));
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        cipher.init(Cipher.PUBLIC_KEY, key);
        byte[] encryptedBytes = cipher.doFinal(inputData);
        return encryptedBytes;
    }

    public static byte[] decrypt(byte[] privateKey, byte[] inputData)throws Exception {

        PrivateKey key = KeyFactory.getInstance(ALGORITHM).generatePrivate(new PKCS8EncodedKeySpec(privateKey));
        Cipher cipher = Cipher.getInstance(ALGORITHM);
        cipher.init(Cipher.PRIVATE_KEY, key);
        byte[] decryptedBytes = cipher.doFinal(inputData);
        return decryptedBytes;
    }
    
     public static KeyPair generateKeyPair()throws NoSuchAlgorithmException, NoSuchProviderException {

        KeyPairGenerator keyGen = KeyPairGenerator.getInstance(ALGORITHM);
        SecureRandom random = SecureRandom.getInstance("SHA1PRNG", "SUN");
        // 512 is keysize
        keyGen.initialize(512, random);
        KeyPair generateKeyPair = keyGen.generateKeyPair();
        return generateKeyPair;
    }

    public static byte[] readBytesFromFile(File file) throws IOException {
        InputStream is = new FileInputStream(file);
        long length = file.length();
        if (length > Integer.MAX_VALUE) {
            throw new IOException("Could not completely read file " + file.getName() + " as it is too long (" + length + " bytes, max supported " + Integer.MAX_VALUE + ")");
        }
        byte[] bytes = new byte[(int)length];
        int offset = 0;
        int numRead = 0;
        while (offset < bytes.length && (numRead=is.read(bytes, offset, bytes.length-offset)) >= 0) {
          offset += numRead;
        }
        if (offset < bytes.length) {
        
            throw new IOException("Could not completely read file " + file.getName());
        }
        is.close();
        return bytes;
  }
    
     public static int Encryption(String s) throws Exception {
        
        File publicKeyFile = null;
        publicKeyFile = new File("/Users/deeps/Online-Evote_Backend/EVoting/src/java/encryptDecrypt/publicKeyFile");
//        byte[] privateKey = null;
        byte[] Key = readBytesFromFile(publicKeyFile);
        byte[] encryptedData = encrypt(Key,s.getBytes());
        int status=insertIntoDb.insert(encryptedData);
//        byte[] My = readBytesFromFile(privateKeyFile);
//        byte[] test = insertIntoDb.retrieve();
//        byte[] decryptedData = decrypt(My, encryptedData);
//        System.out.println(new String(decryptedData));
        return status;
    }
     
    public static String Decryption(byte[] s) throws Exception {
        
        File privateKeyFile = null;
        privateKeyFile = new File("/Users/deeps/Online-Evote_Backend/EVoting/src/java/encryptDecrypt/privateKeyFile");
        byte[] Key = readBytesFromFile(privateKeyFile);
        byte[] decryptedData = decrypt(Key, s);
        return(new String(decryptedData));
    }
}
