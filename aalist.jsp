<%@ include file="caheader.jsp"%>
<br>
<%@ page import="java.sql.*,databaseconnection.*"%>
<head>
    <div class="col-md-9 agileinfo-contact-main-address"><br><br>
                <h4 class="w3ls-inner-title">Attribute Authority List</h4>
         
        
        </div>
		
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



<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String name,username,pasword,gen,doj,branch,dept,subdept,eid,cno,adrs;
	int i=0,exp=0;
%>  
<% if(request.getParameter("msg")!=null){
	  out.println("<script>alert('Registration is Approved by CA')</script>");
}%>
<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
%>

<center><table class="table"><tr><th>UserName</th><th>Email</th><th>Approved</th></tr>

<%
ResultSet r=st.executeQuery("select *from aareg where certificate='None' ");
while(r.next()){%>

<tr><td><%=r.getString(3)%></td> <td align="center"><%=r.getString(5)%></td>

<td><a href="CAAproved1.jsp?uname=<%=r.getString(3)%>"><font size="" color="#3366ff">Approved</font></a></td></tr>
<%}%>
<%}catch(Exception e){e.printStackTrace();}%>
</div ></table></div></div>
</body>
</html><br><br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>