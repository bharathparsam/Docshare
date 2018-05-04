<%@ page import="java.sql.*"%>
<%@ page  import="java.sql.*,abe.*" import="databaseconnection.*,cpabe.*,it.unisa.dia.gas.jpbc.Element"%>

<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String name,username,pasword,gen,doj,branch,dept,subdept,eid,cno,adrs,etype;
	int i=0,exp=0,q=0;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

String uid=request.getParameter("uid");
String pk=request.getParameter("PK");
String msk=request.getParameter("MSK");
String atrbt=request.getParameter("atrbt");
String[] attrs=atrbt.split(",");
CPABE e=new CPABE();
Element SK=e.keygen(pk,msk,attrs);
st.executeUpdate("update uregister set sk='"+SK.toString()+"' where uid='"+uid+"' ");
st.executeUpdate("update audit set sts='finish' where uid='"+uid+"' ");
st.executeUpdate("update request set status='finish' where uid=(select unm from uregister where uid='"+uid+"') ");
st.executeUpdate("delete from reqsk where certuid='"+uid+"' ");	
	response.sendRedirect("aareqsk.jsp?msg1=key_generated");
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
