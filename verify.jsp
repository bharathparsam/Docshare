<%@ include file="aheader.jsp"%>
<%@ page import="java.io.*,java.text.DateFormat,java.util.Date"%>
<%@ page import="databaseconnection.*,java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*,DSA.*"%>

 <script>  
function f1Submit() {  
alert('Request Sent to CA for SK ');  
alert('Wait until get Acceptancy from CA');  
document.f1.action="req3.jsp";  
document.f1.submit(); 
}
</script>
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null,Sj,aid;
int i=0;
byte[] pkey=null,certificate=null,ask;
%>
 <% 
try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
String uid=request.getParameter("certuid");
String aa=request.getParameter("aid");
Statement st1=con.createStatement();Statement st2=con.createStatement();
ResultSet r1=st1.executeQuery("select cavk from cakeys");
if(r1.next())
	{
pkey=r1.getBytes(1);
	}

ResultSet r2=st2.executeQuery("select certificate from uregister where uid='"+uid+"'");
if(r2.next())
	{
certificate=r2.getBytes(1);
	}

DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
Date date = new Date();
String TS=dateFormat.format(date);
Statement st3=con.createStatement();
ResultSet r3=st3.executeQuery("select ask,aid from aareg where uname='"+aa+"'");
if(r3.next())
	{
ask=r3.getBytes(1);
aid=r3.getString(2);
	}

DSA dsa=new DSA();

String t1_t2=uid+TS;

byte[] ic=dsa.Sign(t1_t2,ask);
System.out.println("ic="+ic);
Statement st4=con.createStatement();
ResultSet rs4=st4.executeQuery("select course,branch,year,job from uregister where uid='"+uid+"'");
if(rs4.next()){

Sj=rs4.getString(1)+", "+rs4.getString(2)+", "+rs4.getString(3)+", "+rs4.getString(4);
}

boolean sts=dsa.Verify(uid,pkey,certificate);


if(sts){

 PreparedStatement pt=con.prepareStatement("select *from audit where uid='"+uid+"'");
	
	ResultSet rst=pt.executeQuery();
	if(rst.next()){
PreparedStatement pt1=con.prepareStatement("update audit set aid=?,sj=?,ic=?,ts=?,sts=? where uid=?"); 
	 pt1.setString(1,aid);
	 pt1.setString(2,Sj);
	 pt1.setBytes(3,ic);
	 pt1.setString(4,TS);
	 pt1.setString(5,"request");
	 pt1.setString(6,uid);
	 pt1.executeUpdate();
	  out.println("<script>alert('Successfully Verified, Valid User.')</script>");
}
else{

	 PreparedStatement pst=con.prepareStatement("insert into audit values(?,?,?,?,?,'request')");
	 pst.setString(1,uid);
	 pst.setString(2,aid);
	 pst.setString(3,Sj);
	 pst.setBytes(4,ic);
	 pst.setString(5,TS);
	 int v=pst.executeUpdate();
	  if(v>0){
	   out.println("<script>alert('Successfully Verified, Valid User.')</script>");
	  }
}

%><br>
<div class="w3l-main-contact">
        <div class="container">
           
            <div class="col-md-9 agileinfo-contact-main-address">
                <h4 class="w3ls-inner-title">Gen Intermediate Key</h4>
                
        
     
		<div class="agileits-main-right">
                    
                    <form name="f1" action="reqlist.jsp?msg=Verified" method="post" class="agile_form">
                       <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Uid_j <span>*</span></label>
                            <input  placeholder="" name="certuid" value=<%=uid%> type="text" required="">
							
                        </div>	
						<div class="clearfix"></div>
						 <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Aid_i<span>*</span></label>
                            <input  placeholder="  " name="aid" value=<%=aid%> type="text" required="">
                        </div>	
						<div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Sj ( Attributes ):<span>*</span></label>
                            <textarea  placeholder=" " name="file"  required type="text" required=""><%=Sj%></textarea>
                        </div>	
						<div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">IC ( AIdi,Uidj ) Intermediate Key:<span>*</span></label>
                            <textarea  placeholder=" " name="file"  required type="text" required=""><%=ic%></textarea>
                        </div>	

                       
                        <div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls"> Time Stamp ( TS )<span>*</span></label>
                            <textarea  placeholder=" " name="TS"  required type="text" required=""><%=TS%></textarea>
                        </div>
						<div class="clearfix"></div>
                        
						 
                        <br>
                        <input type="submit" onclick="f1Submit()" value="Send">
                        <p><span>*</span>marked fields are mandatory</p>

                    </form>
		        </div>
		        <div class="clearfix">	</div>
	        </div>		
         </div>
        <div class="clearfix"></div>
        </div>

<%
}


}catch(Exception e11)
{
e11.printStackTrace();
}

%>



		
		<br>
	<%@ include file="footer.jsp"%>	