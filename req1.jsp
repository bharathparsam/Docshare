<%@ include file="oheader.jsp"%>
<%@ page  import="java.sql.*" import="databaseconnection.*"%>

<%								

//String fid=request.getParameter("fid");
//int uid=unm;
//session.setAttribute("fid",fid);
String certuid=null;
Connection con=databasecon.getconnection();
Statement st1 = con.createStatement();

String fid=request.getParameter("fid");

String fnm=request.getParameter("fnm");

String file=request.getParameter("file");

String aa=request.getParameter("aa");
session.setAttribute("fid",fid);
session.setAttribute("fnm",fnm);
session.setAttribute("file",file);

Statement st=con.createStatement();
Statement st11=con.createStatement();
ResultSet  rst=st11.executeQuery("select uid from uregister where unm='"+session.getAttribute("uid")+"'");
if(rst.next()){
certuid=rst.getString(1);
}
st1.executeUpdate("delete from request");
st1.executeUpdate("insert into request(uid,status) values('"+session.getAttribute("uid")+"','request')");
st1.executeUpdate("delete from reqsk");
st1.executeUpdate("insert into reqsk(certuid,unm,aai,sts)values('"+certuid+"','"+session.getAttribute("uid")+"','"+aa+"','request')");
response.sendRedirect("req2.jsp?uid="+session.getAttribute("uid")+"&fid="+fid+"");
%>
