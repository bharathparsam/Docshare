<%@ include file="oheader.jsp"%>
<% if(request.getParameter("upload")!=null){
	  out.println("<script>alert('File Uploaded Successfully')</script>");
}%>
      
<br>

	       
            <div class="col-md-9 agileinfo-contact-main-address">
               
        </div>
		<div class="w3l-main-contact">
        <div class="container">

           
            <div class="col-md-9 agileinfo-contact-main-address">
                <h4 class="w3ls-inner-title">File Upload</h4>
                
               
                <div class="agileits-main-right">
                    <h5></h5>
                    <form action="upload1.jsp" enctype="multipart/form-data" method="post" class="agile_form">
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Attach File<span>*</span></label>
                            <input  placeholder=" " type="file"  name="filename"   required >
                        </div>	
                       
                        
						 <div class="clearfix">	</div>
                        <br>
                        <input type="submit" value="Next">
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