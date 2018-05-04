package abe;

import java.io.File;

public class Example {
	public static void main(String[] args) {
		Server server = new Server();
		Client PKUClient = new Client(new String[]{"PKU", "Student"});
		Client THUClient = new Client(new String[]{"THU", "HOD"});
		Client TeacherClient = new Client(new String[]{"PKU", "Teacher"});

		String PKJSONString = server.getPublicKeyInString();
		//System.out.println(PKJSONString);
		PKUClient.setPK(PKJSONString);
		THUClient.setPK(PKJSONString);
		TeacherClient.setPK(PKJSONString);

		String SKJSONString = server.generateSecretKey(PKUClient.getAttrs());
		
		//System.out.println(SKJSONString);
		PKUClient.setSK(SKJSONString);
		
		SKJSONString = server.generateSecretKey(THUClient.getAttrs());
		THUClient.setSK(SKJSONString);
		//System.out.println(SKJSONString);
		SKJSONString = server.generateSecretKey(TeacherClient.getAttrs());
		TeacherClient.setSK(SKJSONString);
		
	
		String outputFileName = "CT_JAVA1.enc";
		
		File in = new File("CT_JAVA.txt");
		
		String policy = "Student OR Teacher";
		
		PKUClient.enc(in, policy, outputFileName);
		
		in = new File(outputFileName);
		
		//THUClient.dec(in);
		
		TeacherClient.dec(in);
	}
}
