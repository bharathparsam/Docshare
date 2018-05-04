<%@ include file="caheader.jsp"%>

<%@ page import="java.sql.*,databaseconnection.*"%>
<head>
  <div class="col-md-9 agileinfo-contact-main-address"><br><br>
                <h4 class="w3ls-inner-title">Auditing & Tracing</h4>
         
        
        </div>
		
 
</head>
<style>
table {
    border-collapse: collapse;
    width: %;
}

th, td {
    text-align: left;
    padding: 0px;
}

tr:nth-child(even){background-color: #f2f2f2}
</style>

<br><br><br><br>
	       
          

<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String name,username,pasword,gen,doj,branch,dept,subdept,eid,cno,adrs;
	int i=0,exp=0;
%>  
<% if(request.getParameter("msg")!=null){
	  out.println("<script>alert('Invalid Time Interval')</script>");
}

if(request.getParameter("msg1")!=null){
	  out.println("<script>alert('Generated SK and Sent to User')</script>");
}
if(request.getParameter("msg2")!=null){
	  out.println("<script>alert('Deleted Malicious User & AA')</script>");
}
%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
String aa=(String)session.getAttribute("aa");
%>

<center><table class="table" ><tr><th>Uidj</th><th>Aid_i</th><th>S_j ( Attributes )</th><th>IntermediateKey</th><th>Time Stamp ( TS )</th></tr>
<%
ResultSet r=st.executeQuery("select *from audit where sts='finish' ");
while(r.next()){%>
<tr><td><%=r.getString(1)%></td><td><%=r.getString(2)%></td>
<td><%=r.getString(3)%></td><td><%=r.getBytes(4)%></td><td><%=r.getString(5)%></td>
</tr>
<%}%>
<%}catch(Exception e){e.printStackTrace();}%>
</div ></table><br><br><br>
<a href="tracing.jsp"><center><strong><font size="+2" color="0000ff">Tracing</font></strong></center><a>
</div></div>
<br><br><br><br><br><br>
<%@ include file="footer.jsp"%>