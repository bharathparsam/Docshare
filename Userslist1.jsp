<%@ include file="aheader.jsp"%>
<br><br><br>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<style>
table {
    border-collapse: collapse;
    width: 70%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>
<%@ page import="java.sql.*,databaseconnection.*"%>
<br>

	       
          
		<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String name,username,pasword,gen,doj,branch,dept,subdept,eid,cno,adrs;
	int i=0,exp=0;
%>  
<% if(request.getParameter("msg")!=null){
	  out.println("<script>alert('Registration is Approved by CA')</script>");
}
if(request.getParameter("keys")!=null){
	  out.println("<script>alert('Keys are generated Successfully')</script>");
}
if(request.getParameter("keys1")!=null){
	  out.println("<script>alert('Already , Keys are generated by You ( Authority)')</script>");
}
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
%>
<div class="container">
  <div class="table-responsive"> 
<center><table class="table"><tr><th>NO.</th><th>Name</th><th>Email</th><th>Generate</th></tr>
<%
ResultSet r=st.executeQuery("select *from uregister where sts !='None' ");
while(r.next()){%>
<tr><td><%=r.getInt(1)%></td><td><%=r.getString(2)%></td><td><%=r.getString(6)%></td>

<td><a href="Keysgen.jsp?id=<%=r.getInt(1)%>">&nbsp;&nbsp;<font size="" color="#3366ff">GenerateKeys</font></a><!-- <a href="KGCNotAproved.jsp?id=<%=r.getInt(1)%>">NotApproved</a> --></td></tr>
<%}%>
<%}catch(Exception e){e.printStackTrace();}%>
</table></div></div>
<br><br><br>
		<br><br><br><br><br><br><br>

	<%@ include file="footer.jsp"%>	