 <%@ include file="aheader.jsp"%>
<%@ page import="java.sql.*"%>
<%@ page  import="java.sql.*,abe.*" import="databaseconnection.*,cpabe.*,it.unisa.dia.gas.jpbc.Element"%>

<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>

<br><br><br><br><br><br><br><br>

<%! String pk,msk;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();Statement st1=con.createStatement();

String uid=request.getParameter("certuid");

String atrbt=request.getParameter("attrbt");
String[] attrs=atrbt.split(",");

ResultSet rst=st1.executeQuery("select *from setup");
if(rst.next()){

pk=rst.getString(1);
msk=rst.getString(2);
}

CPABE e=new CPABE();
Element SK=e.keygen(pk,msk,attrs);

%>

<center><font color="RED">Malicious User SK : <%=SK.toString()%></font></center>


<%}
catch(Exception e)
{
e.printStackTrace();
	}
%><br><br><br><br><br><br><br><br><br><br><br>
		<%@ include file="footer.jsp"%>