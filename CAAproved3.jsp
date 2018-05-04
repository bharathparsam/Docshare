<%@ page import="java.sql.*"%>
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
	



Statement st1=con.createStatement();
int q= st.executeUpdate("update oregister set sts='Active' where uname='"+unm+"'  ");
if(q>0)
	{
	response.sendRedirect("ownerlist.jsp?msg=success");
	}
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
