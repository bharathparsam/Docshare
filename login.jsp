<%@ include file="mheader.jsp"%>

<div class="w3l-main-contact">
        <div class="container">
		<% if(request.getParameter("msg")!=null){
	  out.println("<script>alert('Account is not yet Certified')</script>");
}%>


 <% if(request.getParameter("msg1")!=null){
	  out.println("<script>alert('Incorrect Username or Password')</script>");
}%>
<% if(request.getParameter("reg")!=null){
	  out.println("<script>alert('Registered Successfully')</script>");
}%>
           
            <div class="col-md-9 agileinfo-contact-main-address">
                <h4 class="w3ls-inner-title">User Login</h4>
                
               <!-- <div class="list_agileits_w3layouts">
                    <div class="section_class_agileits sec-left">
                        <label class="contact-form-w3ls">Select service type<span>*</span></label>
                        <select>
                            <option value="0"> Select </option>
                            <option value="1">Digital TV </option>
                            <option value="2">Broadband</option>   
                    </select>
                    </div>
                    <div class="section_class_agileits sec-right">
                        <label class="contact-form-w3ls">Select enquiry type<span>*</span></label>
                        <select>
                            <option value="0">Select </option>
                            <option value="1">Request</option>
                            <option value="3">Query</option>
                            <option value="2">Complaint</option>
                            <option value="1">Feedback</option>
				         </select>
                    </div>
                    <div class="clearfix"></div>
                </div>-->
                <div class="agileits-main-right">
                    <h5>Fill in your details</h5>
                    <form action="UserCheck.jsp" method="post" class="agile_form">
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">User Name<span>*</span></label>
                            <input  placeholder=" " name="unm" type="text" required="">
                        </div>	
                       
                        <div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Password<span>*</span></label>
                            <input  placeholder=" " name="pwd" type="Password" required="">
                        </div>
                        
                        <div class="clearfix"></div>
						 
                        <br>
                        <input type="submit" value="Login">
                        <p><span>*</span>marked fields are mandatory</p>

                    </form>
		        </div>
		        <div class="clearfix">	</div>
	        </div>		
         </div>
        <div class="clearfix"></div>
        </div>
		
	<%@ include file="footer.jsp"%>	