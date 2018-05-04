  <%@ include file="uheader.jsp"%>
<%@ page import="java.io.*,java.util.*"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null,sk,aeskey;
int i=0;byte data[]=null;
Statement st1;
%>
 <%
		
try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
 st1=con.createStatement();
fid=request.getParameter("fid");
unm=request.getParameter("unm");
ResultSet r=st.executeQuery("select fname,filedata,aeskey from cloudserver where fid="+fid+"  ");
if(r.next())
	{
	System.out.println("if");
	fnm=r.getString(1);
	data=r.getBytes(2);
	aeskey=r.getString(3);
}
}catch(Exception e11)
{
e11.printStackTrace();
}

ResultSet r1=st1.executeQuery("select sk from uregister where unm='"+unm+"' ");
while(r1.next()){
sk=r1.getString(1);
}


%>
<br>
<div class="w3l-main-contact">
        <div class="container">
           
            <div class="col-md-9 agileinfo-contact-main-address">
                <h4 class="w3ls-inner-title">File Decrypting</h4>
                
        
     
		<div class="agileits-main-right">
                    
                    <form name="f1" action="decrypt.jsp" method="post" class="agile_form">
					<div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">File Id<span>*</span></label>
                            <input  placeholder="" name="fid" value=<%=fid%> type="text" required=""><input type="hidden" name="unm" value=<%=unm%>>
							
                        </div>	
						
                       	
						<div class="clearfix"></div>
						 <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">File Name<span>*</span></label>
                            <input  placeholder="  " name="fname" value=<%=fnm%>  readonly type="text">
                        </div>	
						<div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">FileData<span>*</span></label>
                            <textarea  placeholder=" " name="file"  required type="text" required=""><%=new String(data)%></textarea>
                        </div>	
						<div class="clearfix"></div>
						 <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Symmetrickey<span>*</span></label>
                            <input  name="aeskey" value=<%=aeskey%>  readonly type="text">
                        </div>	
						<div class="clearfix"></div>
						 <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">SecretKey<span>*</span></label>
                           <input  name="skey" type="text">
						   <label class="contact-form-w3ls"><span></span><%=sk%></label>
                        </div>
						<div class="clearfix"></div>
                        <br>
                        <input type="submit" value="Decrypt SymKey">
                       
                    </form>
		        </div>
		        <div class="clearfix">	</div>
	        </div>		
         </div>
        <div class="clearfix"></div>
        </div>
		
		<br>
<%@ include file="footer.jsp"%>