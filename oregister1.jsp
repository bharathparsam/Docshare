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

ResultSet r2=st2.executeQuery("SELECT *FROM oregister where uname='"+username+"' or email='"+eid+"' ");
if(!r2.next()){


int q= st.executeUpdate("insert into oregister(name,uname,pass,email,mno,sts)  values('"+name+"','"+username+"','"+pasword+"','"+eid+"', '"+cno+"','None')");

if(q>0)
{

	response.sendRedirect("owner.jsp?reg=succ");
}
else{
	response.sendRedirect("owner.jsp?reg=fail");

}
}else{

	response.sendRedirect("oregister.jsp?exist=duplicate");
}
}
catch(Exception e)
{
e.printStackTrace();
	}
%>
