<%@ include file="caheader.jsp"%><%@ page  import="java.sql.*,it.unisa.dia.gas.jpbc.Element" import="databaseconnection.*,abe.CPABE,DSA.DSA"%>

<br><br>
<center><img src="img/rechten.png" width="297" height="210" border="0" alt=""></center><br><br><br>

<%

CPABE abe = new CPABE();
abe.setUp();
Element pk=abe.getPublicKey();
//System.out.println("Pk"+pk);
Element mk=abe.getMasterKey();

Connection con1=databasecon.getconnection();
 Statement st=con1.createStatement();
 ResultSet rst=st.executeQuery("select *from setup");

if(!rst.next()){
 PreparedStatement p=con1.prepareStatement("insert into setup values(?,?)");
p.setString(1,pk.toString());
p.setString(2,mk.toString());
int i=p.executeUpdate();
if(i>0){

DSA dsa=new DSA();
dsa.keyGeneration();

byte[] publicKey=dsa.getPublicKey();

byte[] privateKey=dsa.getPrivateKey();

PreparedStatement p1=con1.prepareStatement("insert into cakeys values(?,?)");
p1.setBytes(1,privateKey);
p1.setBytes(2,publicKey);
p1.executeUpdate();
%>
 <font color="green" size="+2">	<center><strong>PK , MSK are Generated.</center></strong><br>

	 <font color="green" size="+2">				<center><strong>&</strong></center><br>

	  <font color="green" size="+2"> <center><strong>skCA,vkCA are Generated.</strong></center>

<%} 
}else{%>
 <font color="RED" size="+2"> <center><strong>System Initialization already Done.</strong></center>

 <%
}
 


 
 %></div><br><br><br><br>
     <%@ include file="footer.jsp"%>