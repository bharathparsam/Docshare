<%@ include file="caheader.jsp"%>
<%@ page import="java.io.*,java.text.DateFormat,java.util.Date"%>
<%@ page import="databaseconnection.*,java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*,DSA.*"%>

 
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null,Sj,aid,TS,T1,t1_t2,PK,MSK;
int i=0;
byte[] pkey=null,certificate=null,apk,sig;
Connection con;
%>
 <% 
try{
con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();

ResultSet r3=st.executeQuery("select *from trace");
while(r3.next())
		{
st1.executeUpdate("delete from audit where uid='"+r3.getString(1)+"'");
st1.executeUpdate("delete from aareg where aid='"+r3.getString(2)+"'");

		}

response.sendRedirect("audit.jsp?msg2=deleted");


}catch(Exception e){e.printStackTrace();}%>


	<%@ include file="footer.jsp"%>	