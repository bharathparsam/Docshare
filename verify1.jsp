<%@ include file="caheader.jsp"%>
<%@ page import="java.io.*,java.text.DateFormat,java.util.Date"%>
<%@ page import="databaseconnection.*,java.text.SimpleDateFormat"%>
<%@ page import="java.sql.*,DSA.*"%>

 
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null,Sj,aid,TS,T1,T1_TS,PK,MSK;
int i=0;
byte[] pkey=null,certificate=null,apk,sig;
Connection con;
%>
 <% 
try{
con=databasecon.getconnection();
Statement st=con.createStatement();
String uid=request.getParameter("uid");
String aid=request.getParameter("aid");
Statement st1=con.createStatement();
Statement st2=con.createStatement();
Statement st3=con.createStatement();
Statement st5=con.createStatement();
ResultSet r2=st2.executeQuery("select ts,ic from audit where uid='"+uid+"' and aid='"+aid+"'");
if(r2.next())
	{
TS=r2.getString(1);
sig=r2.getBytes(2);
	}
DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
Date date = new Date();
String T1=dateFormat.format(date);

ResultSet rr=st1.executeQuery("SELECT TIMEDIFF('"+T1+"','"+TS+"')");
if(rr.next()){
T1_TS=rr.getString("TIMEDIFF('"+T1+"','"+TS+"')");
}

System.out.println(T1_TS);

String t[]=T1_TS.split(":");

if(Integer.parseInt(t[1])<=2){


 out.println("<script>alert('Verification done, Valid Time Interval')</script>");

PreparedStatement pt3=con.prepareStatement("update request1 set status='finish' where aid='"+aid+"' ");
pt3.executeUpdate();

st5.executeUpdate("update reqsk set sts='finish' where certuid='"+uid+"' ");


ResultSet r3=st3.executeQuery("select apk from aareg where aid='"+aid+"'");
if(r3.next())
	{
apk=r3.getBytes(1);	
}
DSA dsa=new DSA();

String t1_t2=uid+TS;

boolean sts=dsa.Verify(t1_t2,apk,sig);


if(sts){

PreparedStatement pst=con.prepareStatement("select course,branch,year,job from uregister where uid='"+uid+"'");
	ResultSet rs5=pst.executeQuery();
if(rs5.next()){

Sj=rs5.getString(1)+", "+rs5.getString(2)+", "+rs5.getString(3)+", "+rs5.getString(4);
}

PreparedStatement pst1=con.prepareStatement("select *from setup");
	ResultSet rs6=pst1.executeQuery();
if(rs6.next()){
PK=rs6.getString(1);
MSK=rs6.getString(2);
}

%>

<br>
<div class="w3l-main-contact">
        <div class="container">
           
            <div class="col-md-9 agileinfo-contact-main-address">
                <h4 class="w3ls-inner-title">Gen SecretKey</h4>
                
        
     
		<div class="agileits-main-right">
                    
                    <form name="f1" action="keygen.jsp" method="post" class="agile_form">
                       <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Uid_j <span>*</span></label>
                            <input  placeholder="" name="uid" value=<%=uid%> type="text" required="">
							
                        </div>	
						<div class="clearfix"></div>
						 <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">PK<span>*</span></label>
                            <input  placeholder="  " name="PK" value=<%=PK%> type="text" required="">
                        </div>	
						 <div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls"> MSK<span>*</span></label>
                            <input name="MSK" value=<%=MSK%> type="text" required="">
                        </div>

						<div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Sj ( Attributes ):<span>*</span></label>
                            <textarea  placeholder=" " name="atrbt"  required type="text" required=""><%=Sj%></textarea>
                        </div>		

						<div class="clearfix"></div>
                        
						 
                        <br>
                        <input type="submit"  value="Gen SecretKey">
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

}

else{

PreparedStatement pt=con.prepareStatement("delete from audit where uid='"+uid+"' and aid='"+aid+"'");
pt.executeUpdate();

PreparedStatement pt1=con.prepareStatement("update reqsk set sts='fail' where certuid='"+uid+"' ");
pt1.executeUpdate();

PreparedStatement pt2=con.prepareStatement("update request1 set status='finish' where aid='"+aid+"' ");
pt2.executeUpdate();

response.sendRedirect("aareqsk.jsp?msg=fail");
}

}
catch(Exception e11)
{
e11.printStackTrace();
}

%>



		
		<br>
	<%@ include file="footer.jsp"%>	