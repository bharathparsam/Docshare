<%@ page import="java.sql.*"%>
<%@ include file="ex.jsp"%>
<%@ page  import="java.sql.*,it.unisa.dia.gas.jpbc.Element" import="databaseconnection.*,abe.CPABE,DSA.DSA"%>
<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane,java.math.BigInteger,java.security.*,java.security.spec.*,javax.crypto.KeyAgreement"
%>

<%! String name,username,pasword,gen,doj,branch,dept,subdept,unm,cno,adrs;
	int i=0,exp=0;
%>
<%
try{
Connection con = databasecon.getconnection();
Statement st=con.createStatement();

unm=request.getParameter("uname");
//System.out.println(pwd);
%>
<%

Random rr=new Random();
int  rno=rr.nextInt(1000);

CPABE abe = new CPABE();
abe.setUp();
Element SecretKey=abe.getPrivateKey();
Element PublicKey=abe.getAAPublicKey();
PreparedStatement p=con.prepareStatement("update aareg set certificate='Active',apk=?,ask=?,aid='"+rno+"' where uname='"+unm+"'");
	p.setBytes(1,Publickey);
p.setBytes(2,Secretkey);
int q= p.executeUpdate();
if(q>0)
	{
	response.sendRedirect("aalist.jsp?msg=success");
	}
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
