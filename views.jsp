<%@ include file="csheader.jsp"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%! String name,username,pasword,gen,doj,branch,dept,subdept,eid,cno,adrs;
	int i=0,exp=0;
%>

 <%  
  try{
  Connection con = databasecon.getconnection();

Statement st=con.createStatement();

ResultSet r=st.executeQuery("select *from cloudserver where fid='"+request.getParameter("fid")+"'  ");
if(r.next()){%>


<br>
<div class="w3l-main-contact">
        <div class="container">
           
            <div class="col-md-9 agileinfo-contact-main-address">
                <h4 class="w3ls-inner-title">File Details</h4>
                
        
     
		<div class="agileits-main-right">
                    
                    <form name="f1" action="upload2.jsp" method="post" class="agile_form">
                       	
						<div class="clearfix"></div>
						 <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">File Name<span>*</span></label>
                            <input  placeholder="  " name="nm" value=<%=r.getString("fname")%> readonly type="text" ="">
                        </div>	
						<div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">FileData:<span>*</span></label>
                            <textarea  placeholder=" " name="file" readonly required type="text" required=""><%=r.getString("filedata")%></textarea>
                        </div>	

                       
                        
						<div class="clearfix"></div>
                        
						 
                        <br>
                       
                    </form>
		        </div>
		        <div class="clearfix">	</div>
	        </div>		
         </div>
        <div class="clearfix"></div>
        </div>
		
		<br>
		<%}}catch(Exception e){
e.printStackTrace();}%>
	<%@ include file="footer.jsp"%>	