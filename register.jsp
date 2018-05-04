<%@ include file="mheader.jsp"%>

<div class="w3l-main-contact">
        <div class="container">
           
            <div class="col-md-9 agileinfo-contact-main-address">
                <h4 class="w3ls-inner-title">User Registration Page</h4>
                
<style type="text/css">

form.demoForm {
    margin: 2em 0 3em;
}

form.demoForm select {
    vertical-align: top;
    margin-right: 1em;
}

select#choices {
    min-width: 140px;
}

</style>
<% if(request.getParameter("exist")!=null){
	  out.println("<script>alert('User_Id or Email already exist')</script>");
}%>
               
                 <div class="agileits-main-right">
                    <h5>Fill in your details</h5>
                    <form action="reginsert.jsp" method="post" class="agile_form" id="demoForm" class="demoForm">
					 
                        <div class="w3ls-text sec-left">
                            <label class="contact-form-w3ls">Name<span>*</span></label>
                            <input  placeholder="" name="nm"  pattern="[A-Za-z]+" type="text" required="">
                        </div>	
                        <div class="w3ls-text sec-right">
                            <label class="contact-form-w3ls">User Name<span>*</span></label>
                            <input  placeholder="  " name="unm" type="text" required="">
                        </div>	
                        <div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                           <label class="contact-form-w3ls">Email<span>*</span></label>
                            <input  placeholder=" " name="eid"  required type="text" required="">
                        </div>
						 <div class="w3ls-text sec-right">
                            <label class="contact-form-w3ls">Password<span>*</span></label>
                            <input  placeholder=" " name="pwd" required type="Password" required="">
                        </div>	
                        <div class="clearfix"></div>
                        <div class="w3ls-text sec-left">
                           <label class="contact-form-w3ls">Mobile<span>*</span></label>
                            <input  placeholder=" " pattern="[0-9]{10,10}"name="cno" type="text" required="">
                        </div>
						  <div class="section_class_agileits sec-right">
                            <label class="contact-form-w3ls">Select Gender<span>*</span></label>
                            <select name="gen">
                                <option value="Male">Male </option>
                                <option value="FeMale">FeMale</option>
                            </select>
                        </div>	
                        <div class="clearfix"></div>
                        <div class="section_class_agileits sec-left">
                        <label class="contact-form-w3ls">Course<span>*</span></label>
                        <select name="course" required>
                            <option value="">Select Courses</option>
							<option value="MCA">M.C.A</option>
                           <option value="BTECH">B.Tech</option>
							<option value="MTECH">M.Tech</option>
						
						
                    </select>
                    </div>
						 <div class="section_class_agileits sec-right">
                        <label class="contact-form-w3ls">Branch<span>*</span></label>
                        <select name="branch" required>
						<option value="">Select Branch</option>
                           <option value="CSE">CSE</option>
							<option value="ECE">ECE</option>
							<option value="EEE">EEE</option> 
							<option value="ME">ME</option>
							<option value="IT">IT</option>
							<option value="VLSI">VLSI</option>
						</select>
                    </div>	
                        <div class="clearfix"></div>
                        <div class="section_class_agileits sec-left">
                        <label class="contact-form-w3ls">Year<span>*</span></label>
                        <select name="year" id="choices">
						<option value="">Select Year</option>
                           <option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option> 
							<option value="4">4</option>
						</select>
                    </div>

                        <div class="section_class_agileits sec-right">
                            <label class="contact-form-w3ls">Job Role<span>*</span></label>
                            <select name="job" required>
							<option value="">Select JobRole</option>
                            <option value="HOD">HOD</option>
							<option value="Faculty">Faculty</option>
							<option value="Student">Student</option>
							
						</select>
                        </div>
                        <div class="clearfix"></div>
                        <br>
                        <input type="submit" value="Register">
                        <p><span>*</span>marked fields are mandatory</p>

                    </form>
		        </div>
		        <div class="clearfix">	</div>
	        </div>		
         </div>
        <div class="clearfix"></div>
        </div>
		




	<%@ include file="footer.jsp"%>	