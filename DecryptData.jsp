  <%@ include file="uheader.jsp"%>
 
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*,cp_abe.*"%>
<%@ page import="java.sql.*"%>
<%! String aKey=null;
boolean status;%>
<% String fid=request.getParameter("fid");
Connection con1=databasecon.getconnection();Statement st2=con1.createStatement();
%>


<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,b,d,sd,exp,unm=null,fid=null,fnm=null,skey=null,akey=null,aces=null,pkey=null,symkey;
int i=0;byte data[]=null,sky[]=null;
%>
 <%
		

Connection con=databasecon.getconnection();
Statement st=con.createStatement();Statement st1=con.createStatement();

fid=request.getParameter("fid");
String symkey=request.getParameter("symkey");
String fnm=request.getParameter("fname");
PreparedStatement p=con.prepareStatement("select AES_DECRYPT(filedata,'"+symkey+"') from cloudserver where fid="+fid+" ");
ResultSet rr=p.executeQuery();
if(rr.next()){
	
	data=rr.getBytes(1);
	status=false;
}
%>

<br>
<div class="w3l-main-contact">
        <div class="container">
           
            <div class="col-md-9 agileinfo-contact-main-address">
                <h4 class="w3ls-inner-title">FileDownload</h4>
                
        
      
		<div class="agileits-main-right">
                    
                    <form action="finaldownload.jsp" method="post" class="agile_form">
                       <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">File Id<span>*</span></label>
                            <input  placeholder=""  name="fid" value=<%=fid%> type="text" required="">
							
                        </div>	
						<div class="clearfix"></div>
						 <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">File Name<span>*</span></label>
                            <input  placeholder="  " name="fname" value=<%=fnm%> type="text" required="">
                        </div>	
							

                       
                        <div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">FileData ( M ):<span>*</span></label>
                            <textarea  placeholder=" " name="file"  required type="text" required=""><%=new String(data)%></textarea>
                        </div>	
                       
					
							
						 <div class="clearfix"></div>
                        <br>
                        <input type="submit" value="Download">
                        

                    </form>
		        </div>
		        <div class="clearfix">	</div>
	        </div>		
         </div>
        <div class="clearfix"></div>
        </div>
		
		<br>







<%@ include file="footer.jsp"%>