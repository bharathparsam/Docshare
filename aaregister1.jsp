<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String name,username,pasword,gen,loc,degree,spl,eid,cno,adrs,etype;
	int i=0,exp=0;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

name=request.getParameter("nm");
username=request.getParameter("unm");
pasword=request.getParameter("pwd");
eid=request.getParameter("eid");
cno=request.getParameter("cno");

%>
<%
Statement st1=con.createStatement();
Statement st2=con.createStatement();

ResultSet r2=st2.executeQuery("SELECT *FROM aareg where uname='"+username+"' or email='"+eid+"' ");
if(!r2.next()){



int q= st.executeUpdate("insert into aareg(name,uname,pass,email,mno,certificate)  values('"+name+"','"+username+"','"+pasword+"','"+eid+"', '"+cno+"','None')");

if(q>0)
{

	response.sendRedirect("aa.jsp?reg=succ");
}
else{
	response.sendRedirect("aa.jsp.jsp?reg=fail");

}
}else{

	response.sendRedirect("aaregister.jsp?exist=duplicate");
}
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
