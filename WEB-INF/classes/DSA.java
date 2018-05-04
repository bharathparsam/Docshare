package DSA;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.Signature;
import java.security.*;
import java.security.spec.X509EncodedKeySpec;
import java.security.spec.*; 


public class  DSA
{
	
	byte[] privateKeyBytes;
	byte[] publicKeyBytes;
	public void keyGeneration(){

try{
KeyPairGenerator kpg = KeyPairGenerator.getInstance("DSA");
    kpg.initialize(1024);
    KeyPair keyPair = kpg.genKeyPair();

 privateKeyBytes =keyPair.getPrivate().getEncoded();

 publicKeyBytes =keyPair.getPublic().getEncoded();
}
catch(Exception e){
	
	e.printStackTrace();
	}
	
}

public byte[] getPublicKey(){

return publicKeyBytes;
}


public byte[] getPrivateKey(){

return privateKeyBytes;
}


public byte[] Sign(String filedata,byte[] privatekeey){

byte[] signature=null;
try{
KeyFactory kf = KeyFactory.getInstance("DSA"); 
PrivateKey privateKey = kf.generatePrivate(new PKCS8EncodedKeySpec(privatekeey));

    byte[] data = filedata.getBytes("UTF8");

    Signature sig = Signature.getInstance("SHA1WithDSA");

    sig.initSign(privateKey);

    sig.update(data);

    signature= sig.sign(); 
}catch(Exception e){
e.printStackTrace();
}

return signature;

}

public boolean Verify(String filedata,byte[] publickkey,byte[] signature){

boolean sts=false;
try{
KeyFactory kf = KeyFactory.getInstance("DSA"); 
PublicKey publicKey = kf.generatePublic(new X509EncodedKeySpec(publickkey));
 Signature sig = Signature.getInstance("SHA1WithDSA");
sig.initVerify(publicKey);
sig.update(filedata.getBytes());

 sts=sig.verify(signature);

}catch(Exception e){
e.printStackTrace();
}

return sts;

}


}
