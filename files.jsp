<%@ include file="csheader.jsp"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<br><br><br><br>
<%@ page import="java.sql.*,databaseconnection.*"%>
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

<div class="col-md-9 agileinfo-contact-main-address">
                <h4 class="w3ls-inner-title">Storage Files </h4>
                
        
        </div>

<%@ page  import="java.sql.*" import="databaseconnection.*,java.util.*" import="javax.swing.JOptionPane"%>



<%! String name,username,pasword,gen,doj,branch,dept,subdept,eid,cno,adrs;
	int i=0,exp=0;
%>  

<%
try{
Connection con = databasecon.getconnection();

Statement st=con.createStatement();
%>
<center><table><tr><th>Fid</th><th>FileName</th><th>Owner</th><th>View</th></tr>
<%
ResultSet r=st.executeQuery("select *from cloudserver ");
while(r.next()){%>
<tr><td><strong><%=r.getInt(1)%></strong></td><td><strong><%=r.getString(2)%></td><td><strong><%=r.getString(7)%></td>

<td><a href="views.jsp?fid=<%=r.getInt(1)%>"><font color="blue">Show</a><!-- <a href="KGCNotAproved.jsp?id=<%=r.getInt(1)%>">NotApproved</a> --></td></tr>
<%}%>
<%}catch(Exception e){e.printStackTrace();}%>
</div ></table>
</body>
</html><br><br><br><br><br><br>
<%@ include file="footer.jsp"%>