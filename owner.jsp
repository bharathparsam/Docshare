<%@ include file="mheader.jsp"%>

<div class="w3l-main-contact">
        <div class="container">
	  <% if(request.getParameter("msg")!=null){
	  out.println("<script>alert('Account is not yet Activated')</script>");
}%>


 <% if(request.getParameter("msg1")!=null){
	  out.println("<script>alert('Incorrect Username or Password')</script>");
}%>
<% if(request.getParameter("reg")!=null){
	  out.println("<script>alert('Registered Successfully')</script>");
}%>
           
            <div class="col-md-9 agileinfo-contact-main-address">
                <h4 class="w3ls-inner-title">Owner Login </h4>
              
                <div class="agileits-main-right">
                    <h5>Fill in your details</h5>
                    <form action="oCheck.jsp" method="post" class="agile_form">
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