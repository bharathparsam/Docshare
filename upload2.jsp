<%@ include file="oheader.jsp"%>
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*,java.util.*"%>
<%@ page import="java.sql.*"%>
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null,pkey=null;
int i=0;
%>
<% 



	 unm=(String)session.getAttribute("unm");
	 String fid=request.getParameter("fid");
	 String fnm=request.getParameter("fname");
	 String filedata=request.getParameter("file");;
Connection con=databasecon.getconnection();
Statement st=con.createStatement();

Random rno=new Random();
int smmetrickey=rno.nextInt(1000000);

%>


<br>
<div class="w3l-main-contact">
        <div class="container">
           
            <div class="col-md-9 agileinfo-contact-main-address">
                <h4 class="w3ls-inner-title">File Upload</h4>
                
        
      
		<div class="agileits-main-right">
                    
                    <form action="encrypt.jsp" method="post" class="agile_form">
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
                            <label class="contact-form-w3ls">FileData:<span>*</span></label>
                            <textarea  placeholder=" " name="file"  required type="text" required=""><%=filedata%></textarea>
                        </div>	

                       
                        <div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Symmetrickey:<span>*</span></label>
                            <input  placeholder=" " type="text" name="symkey" readonly value=<%=smmetrickey%> readonly required="">
                        </div>
						<div class="clearfix"></div>
                        
						 
                        <br>
                        <input type="submit" value="Encrypt">
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