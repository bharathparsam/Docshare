<%@ page import="java.sql.*"%>


<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String name,username,pasword,gen,branch,job,category,email,cno,year,subdept,course;
	int i=0;
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

name=request.getParameter("nm");
username=request.getParameter("unm");
pasword=request.getParameter("pwd");
gen=request.getParameter("gen");
email=request.getParameter("eid");
cno=request.getParameter("cno");
branch=request.getParameter("branch");
course=request.getParameter("course");
year=request.getParameter("year");
job=request.getParameter("job");



//System.out.println(pwd);
%>
<%
Statement st1=con.createStatement();Statement st2=con.createStatement();

ResultSet r2=st2.executeQuery("SELECT *FROM uregister where unm='"+username+"' or email='"+email+"' ");
if(!r2.next()){


int q= st.executeUpdate("insert into uregister(name,unm,pwd,gen,email,mno,course,branch,year,job,certificate) values('"+name+"','"+username+"','"+pasword+"','"+gen+"','"+email+"', '"+cno+"','"+course+"','"+branch+"','"+year+"','"+job+"','None')");


if(q>0)
{

	response.sendRedirect("login.jsp?reg=succ");
}
else{
	response.sendRedirect("login.jsp?reg=fail");

}

}
else{
	response.sendRedirect("register.jsp?unm=duplicate");

}

}

catch(Exception e)
{
e.printStackTrace();
	}
%>
