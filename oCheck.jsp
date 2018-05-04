<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>
<% String unm=request.getParameter("unm");
String pwd=request.getParameter("pwd");
System.out.println(unm);
System.out.println(pwd);
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();

Statement st1=con.createStatement();


ResultSet r=st.executeQuery("select sts from oregister where uname='"+unm+"' and pass='"+pwd+"' ");
if(r.next())
	{
	String sts=r.getString(1);
	if(sts.equals("Active")){
	session.setAttribute("unm",unm);
	response.sendRedirect("OHome.jsp");
	}else{
	response.sendRedirect("owner.jsp?msg=NotActivated");
	}
	
}
 else
	{
 response.sendRedirect("owner.jsp?msg1=fail");
	}
}catch(Exception e){e.printStackTrace();}

%>