  <%@ include file="aheader.jsp"%>
  <%@page import="java.util.Date,java.util.*"%>
  <%@ page import="databaseconnection.*,java.text.SimpleDateFormat,java.text.DateFormat"%>
<%@ page import="java.sql.*,DSA.*"%>
  <head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>CP-ABE</title>
 
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%!String  thisLine = null;
StringBuffer sb1=null,filedata;
String filename=null,unm=null,fid=null,fnm=null,pkey,aid,Sj;
int i=0;
byte[] ask,ic;
%>
<% 

Connection con=databasecon.getconnection();
int no=0;
Statement st=con.createStatement();
Statement st1=con.createStatement();

Random random=new Random();
int uid=random.nextInt(100000);

Statement st3=con.createStatement();
ResultSet r3=st3.executeQuery("select ask,aid from aareg where uname='"+session.getAttribute("aa")+"'");
if(r3.next())
	{
ask=r3.getBytes(1);
aid=r3.getString(2);
	}
DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
Date date = new Date();
String TS=dateFormat.format(date);

ArrayList al1=new ArrayList();
al1.add("MCA");
al1.add("BTECH");
al1.add("MTECH");

String c=al1.get(random.nextInt(al1.size())).toString();


ArrayList al2=new ArrayList();
al2.add("CSE");
al2.add("ECE");
al2.add("EEE");
al2.add("ME");
al2.add("IT");
al2.add("VLSI");

String b=al2.get(random.nextInt(al2.size())).toString();



ArrayList al3=new ArrayList();
al3.add("1");
al3.add("2");
al3.add("3");
al3.add("4");
String y=al3.get(random.nextInt(al3.size())).toString();


ArrayList al4=new ArrayList();
al4.add("HOD");
al4.add("Faculty");
al4.add("Student");
String j=al4.get(random.nextInt(al4.size())).toString();

String Sj=c+","+b+","+y+","+j;


DSA dsa=new DSA();

String t1_t2=new Integer(uid).toString()+TS;

byte[] ic=dsa.Sign(t1_t2,ask);

PreparedStatement pt=con.prepareStatement("select *from audit where uid='"+uid+"'");
	
	ResultSet rst=pt.executeQuery();
	if(rst.next()){
PreparedStatement pt1=con.prepareStatement("update audit set aid=?,sj=?,ic=?,ts=?,sts=? where uid=?"); 
	 pt1.setString(1,aid);
	 pt1.setString(2,Sj);
	 pt1.setBytes(3,ic);
	 pt1.setString(4,TS);
	 pt1.setString(5,"finish");
	 pt1.setString(6,new Integer(uid).toString());
	 pt1.executeUpdate();
}
else{

	 PreparedStatement pst=con.prepareStatement("insert into audit values(?,?,?,?,?,'finish')");
	 pst.setString(1,new Integer(uid).toString());
	 pst.setString(2,aid);
	 pst.setString(3,Sj);
	 pst.setBytes(4,ic);
	 pst.setString(5,TS);
	 int v=pst.executeUpdate();
}





%>

<div class="w3l-main-contact">
        <div class="container">
           
            <div class="col-md-9 agileinfo-contact-main-address">
                <h4 class="w3ls-inner-title">Gen SecretKey for Malicious User </h4>




<form name="f1" action="attakrkeygen.jsp?msg=Verified" method="post" class="agile_form">
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
                            <textarea  placeholder=" " name="attrbt"  required type="text" required=""><%=Sj%></textarea>
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
                        <input type="submit" value="gen SK">
                        <p><span>*</span>marked fields are mandatory</p>

                    </form>
		        </div>
		        <div class="clearfix">	</div>
	        </div>		
         </div>
        <div class="clearfix"></div>
        </div>
		
		<%@ include file="footer.jsp"%>