<%@ include file="caheader.jsp"%>
<%@ page import="java.io.*,java.text.DateFormat,java.util.Date"%>
<%@ page import="databaseconnection.*,java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*,DSA.*"%>

 
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null,Sj,aid,TS,T1,t1_t2,PK,MSK;
int i=0;
byte[] pkey=null,certificate=null,apk,sig;
Connection con;
%>
 <% 
try{
con=databasecon.getconnection();
Statement st=con.createStatement();
Statement st1=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();
Statement st5=con.createStatement();
ResultSet r2=st2.executeQuery("select *from audit");
st.executeUpdate("delete from trace");
while(r2.next())
	{

ResultSet r3=st3.executeQuery("select *from uregister where uid='"+r2.getString(1)+"'");
if(!r3.next())
		{

 t1_t2=r2.getString(1)+r2.getString(5);

ResultSet r5=st5.executeQuery("select apk from aareg where aid='"+r2.getString(2)+"'");
if(r5.next())
	{
apk=r5.getBytes(1);	
}

DSA dsa=new DSA();
boolean sts=dsa.Verify(t1_t2,apk,r2.getBytes(4));
if(sts){

PreparedStatement pst=con.prepareStatement("insert into trace values(?,?,?,?)");
pst.setString(1,r2.getString(1));
pst.setString(2,r2.getString(2));
pst.setString(3,r2.getString(3));
pst.setBytes(4,r2.getBytes(4));
pst.executeUpdate();
		}

		}	
	
	
	}

%><br><br><br>
<center><table class="table" ><tr><th>Uidj</th><th>Aid_i</th><th>S_j ( Attributes )</th><th>IntermediateKey</th></tr>
<%
ResultSet r=st1.executeQuery("select *from trace ");
while(r.next()){%>
<tr><td><%=r.getString(1)%></td><td><%=r.getString(2)%></td>
<td><%=r.getString(3)%></td><td><%=r.getBytes(4)%></td></tr>
<%}%>
<%}catch(Exception e){e.printStackTrace();}%>


</div ></table><br>
<br>
<a href="delete.jsp"><center><strong><font size="+2" color="0000ff">DELETE</font></strong></center><a>
</div></div>

		
		<br>
	<%@ include file="footer.jsp"%>	