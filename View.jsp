  <%@ include file="uheader.jsp"%>
 
<%@ page import="java.io.*"%>
<%@ page import="databaseconnection.*"%>
<%@ page import="java.sql.*"%>
<%!String  thisLine = null;
StringBuffer sb1=null;
String filename=null,unm=null,fid=null,fnm=null;
int i=0;byte data[]=null;
%>
 <%
		
try{
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
unm=(String)session.getAttribute("uid");
fid=request.getParameter("id");
ResultSet r=st.executeQuery("select fname,filedata from cloudserver where fid="+fid+"  ");
if(r.next())
	{
	System.out.println("if");
	fnm=r.getString(1);
	data=r.getBytes(2);

}
}catch(Exception e11)
{
e11.printStackTrace();
}


%>
<br>
<div class="w3l-main-contact">
        <div class="container">
           
            <div class="col-md-9 agileinfo-contact-main-address">
                <h4 class="w3ls-inner-title">File Decrypting</h4>
                
        
     
		<div class="agileits-main-right">
                    
                    <form name="f1" action="getAA.jsp" method="post" class="agile_form">
					<div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">File Id<span>*</span></label>
                            <input  placeholder="" name="fid" value=<%=fid%> type="text" required="">
							
                        </div>	
						
                       	
						<div class="clearfix"></div>
						 <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">File Name<span>*</span></label>
                            <input  placeholder="  " name="fname" value=<%=fnm%>  readonly type="text">
                        </div>	
						<div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">FileData:<span>*</span></label>
                            <textarea  placeholder=" " name="file"  required type="text" required=""><%=new String(data)%></textarea>
                        </div>	
						<div class="clearfix"></div>
						 
                        <br>
                        <input type="submit" value="Get AA">
                       
                    </form>
		        </div>
		        <div class="clearfix">	</div>
	        </div>		
         </div>
        <div class="clearfix"></div>
        </div>
		
		<br>
<%@ include file="footer.jsp"%>