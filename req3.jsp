<%@ include file="oheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>

<%								

String certuid=null;
Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();
String aid=request.getParameter("aid");

st1.executeUpdate("delete from request1");
st1.executeUpdate("insert into request1(aid,status) values('"+aid+"','request')");

response.sendRedirect("req4.jsp?aid="+aid+"");
%>
