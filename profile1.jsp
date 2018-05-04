<%@ include file="uheader.jsp"%>
<%@ page import="java.sql.*,databaseconnection.*"%>
<%! String name,username,pasword,gen,doj,branch,dept,subdept,eid,cno,adrs;
	int i=0,exp=0;
%>
<% String unm=(String)session.getAttribute("uid");%>
<div class="w3l-main-contact">
        <div class="container">
            <div class="col-md-9 agileinfo-contact-main-address">
                <h4 class="w3ls-inner-title">Profile </h4>
                
               
				<%  
  try{
  Connection con = databasecon.getconnection();

Statement st=con.createStatement();
ResultSet r=st.executeQuery("select *from uregister where unm='"+unm+"'  ");
if(r.next()){%>
                <div class="agileits-main-right">
                    
                    <form  class="agile_form">
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Name<span>*</span></label>
                            <input  placeholder=" " value=<%=r.getString("name")%> name="unm" readonly type="text" required="">
                        </div>	
                       
						<div class="clearfix"></div>

						<div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">User Name<span>*</span></label>
                            <input  placeholder=" " value=<%=r.getString("unm")%> readonly name="unm" type="text" required="">
                        </div>	
                       
                        <div class="clearfix"></div>


                        <div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Email<span>*</span></label>
                            <input  placeholder=" " value=<%=r.getString("email")%> readonly name="pwd" type="text" required="">
                        </div>
                        
                        

						 <div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Mobile No<span>*</span></label>
                            <input  placeholder=" " name="pwd" value=<%=r.getString("mno")%> readonly type="text" required="">
                        </div>
						<div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Course<span>*</span></label>
                            <input  placeholder=" " name="course" value=<%=r.getString("course")%> readonly type="text" required="">
                        </div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Branch<span>*</span></label>
                            <input  placeholder=" " name="branch" value=<%=r.getString("branch")%> readonly type="text" required="">
                        </div>
                        
							<div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Year<span>*</span></label>
                            <input  placeholder=" " name="year" value=<%=r.getString("year")%> readonly type="text" required="">
                        </div>
						<div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Job Profile<span>*</span></label>
                            <input  placeholder=" " name="job" value=<%=r.getString("job")%> readonly type="text" required="">
                        </div>
                        <div class="clearfix"></div>
                        
                    </form>
		        </div>
		        <div class="clearfix">	</div>
	        </div>		
         </div>
        <div class="clearfix"></div>
        </div>
		<%}}catch(Exception e){
e.printStackTrace();}%>

<%@ include file="footer.jsp"%>
