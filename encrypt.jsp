<%@ include file="oheader.jsp"%>
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*,java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%! int rno=0;
String s=null;StringBuffer filedata=null;%>
<%

 unm=(String)session.getAttribute("unm");
	 String fid=request.getParameter("fid");
	 String fnm=request.getParameter("fnm");
	 String symkey=request.getParameter("symkey");
	 filedata=(StringBuffer)session.getAttribute("data");;
	 session.setAttribute("symkey",symkey);
 Connection con1=databasecon.getconnection();
 PreparedStatement p=con1.prepareStatement("insert into cloudserver(fid,fname,filedata,aeskey,owner) values(?,?,AES_ENCRYPT(?,'"+symkey+"'),?,'"+unm+"')");
p.setInt(1,Integer.parseInt(fid));
p.setString(2,fnm);
p.setBytes(3,new String(filedata).getBytes());
p.setString(4,symkey);

p.executeUpdate();
 %>
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null,pkey=null;
int i=0;
byte data[]=null;
%>
<% 
	
Connection con=databasecon.getconnection();
Statement st=con.createStatement();Statement st1=con.createStatement();

ResultSet r1=st.executeQuery("select filedata from cloudserver where fid="+fid+" ");
if(r1.next())
	{
data=r1.getBytes(1);
	}
%>

<br>
<div class="w3l-main-contact">
        <div class="container">
           
            <div class="col-md-9 agileinfo-contact-main-address">
                <h4 class="w3ls-inner-title">FileEncrypting</h4>
                
        
      
		<div class="agileits-main-right">
                    
                    <form name="f1" method="post" action="getPublicKey.jsp" class="agile_form">
                       <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">File Id<span>*</span></label>
                            <input  placeholder="" name="fid" value=<%=fid%> type="text" required="">
							
                        </div>	
						<div class="clearfix"></div>
						 <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">File Name<span>*</span></label>
                            <input  placeholder="  " name="fnm" value=<%=fnm%> type="text" required="">
                        </div>	
						<div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Encrypted Data:<span>*</span></label>
                            <textarea  placeholder=" " name="file"  required type="text" required=""><%=new String(data)%></textarea>
                        </div>	

                       
                        <div class="clearfix"></div>
                       
                        
						 
                        <br>
                        <input type="submit" value="Get Public Key">
                        <p><span>*</span>marked fields are mandatory</p>

                    </form>
		        </div>
		        <div class="clearfix">	</div>
	        </div>		
         </div>
        <div class="clearfix"></div>
        </div>
		
		<br>
	<%@ include file="footer.jsp"%>	