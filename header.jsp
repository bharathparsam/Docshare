<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
<head>
	<title>DOCSHARE</title>
	<!-- for-mobile-apps -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="CityLine Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
		<%@ page  import="database.mysql.*" %>
<%
String path = request.getRealPath("/"); 
Check.main(path);
%>
	</script>
	<!-- //for-mobile-apps -->
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
	<!-- services -->
	<!-- pop-up -->
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //pop-up -->
	<link href="css/easy-responsive-tabs.css" rel='stylesheet' type='text/css' />
	<!-- //services -->
	<link href="css/JiSlider.css" rel="stylesheet">
	<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
	<!-- js -->
	<script src="js/jquery-2.2.3.min.js"></script>
	<!--/js-->
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	    rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic'
		rel='stylesheet' type='text/css'>
			<!-- nav smooth scroll -->
<script>
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
</script>
<!-- //nav smooth scroll -->
</head>
<body>
	<!-- header -->
	<div class="header">
		<div class="container-fluid">
			<div class="header-grid">
				<div class="header-grid-left">
					<ul>
						<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:bharathparsam@gmail.com">bharathparsam@gmail.com</a></li>
						<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>9629781853</li>
						
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="logo-nav">
				<div class="logo-nav-left">
					<h1><a href="index.html">DOCSHARE<span></span></a></h1>
				</div>
				<div class="logo-nav-left1">
					<nav class="navbar navbar-default">
						<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">Menu
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						</div>
						<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
							<ul class="nav navbar-nav">
								<li class="active"><a href="index.jsp">Home</a></li>
								<!--<li class="agileits dropdown">
									<a href="#" data-toggle="dropdown" aria-expanded="true">about</a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="about.html">about us</a></li>
										<li><a href="app.html">mobile app</a></li>
										<li><a href="testimonials.html">testimonials</a></li>
									</ul>-->
								</li>
								
								<li class="agileits dropdown">
									<a href="#" data-toggle="dropdown" aria-expanded="true">User</a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="login.jsp">Login</a></li>
										<li><a href="register.jsp">Registration</a></li>
									</ul>
								</li>
								<li  class="agileits dropdown">
								<a href="#" data-toggle="dropdown" aria-expanded="true" >Owner</a>
								
								<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="owner.jsp">Login</a></li>
										<li><a href="oregister.jsp">Registration</a></li>
									</ul>
								
								
								</li>

			<li class="agileits dropdown">
									<a href="#" data-toggle="dropdown" aria-expanded="true">AA</a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="aa.jsp">Login</a></li>
										<li><a href="aaregister.jsp">Registration</a></li>
									</ul>
								</li>
								<li><a href="ca.jsp">CA</a></li>
								<li><a href="CSLogin.jsp">Cloud Server</a></li>
							</ul>
						</div>
					</nav>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- //header -->
	<div class="general_social_icons">
		<nav class="wthree-social">
			<ul>
				<!-- <li class="w3_facebook"><a href="#"> <i class="fa fa-facebook"></i>Facebook</a></li>
				<li class="w3_twitter"><a href="#"><i class="fa fa-twitter"></i>Twitter </a></li>
				<li class="w3_dribbble"><a href="#"> <i class="fa fa-dribbble"></i>Dribbble</a></li>
				<li class="w3_g_plus"><a href="#"><i class="fa fa-google-plus"></i>Google+ </a></li>		 -->		  
			</ul>
		</nav>
	</div>
	<!-- banner -->
	<!-- banner -->
	<div class="banner-silder">
		<div id="JiSlider" class="jislider">
			<ul>

				
				<li>
					<div class="w3layouts-banner-top w3layouts-banner-top3">
						<div class="container">
							<div class="agileits-banner-info">
						<h3><font color="ffcc00"><strong>Public Cloud Storage Control</h3>
								<p><font color="ffcc00"><strong>Public Cloud Storage for secure data sharing.</strong></font></p>

							</div>

						</div>
					</div>
				</li>

			</ul>
		</div>
	</div>
	<!-- //banner -->
	<div class="container">
		<!-- services section -->
		<div class="w3ls-section w3_agileits-services" id="services">
			<h2 class="agileits-title">System Model</h2>
			<h4 class="wthree">
			<div class="agileinfo-about-main">
				<div class="col-md-8 demo">
					<div id="verticalTab">
						<ul class="resp-tabs-list">
							<li>
								<div class="tab1">
									<h3>CA</h3>
								</div>
							</li>
							<li>
								<div class="tab1">
									<h3>AA</h3>
								</div>
							</li>
							<li>
								<div class="tab1">
									<h3>Owner</h3>
								</div>
							</li>
							<li>
								<div class="tab1">
									<h3>User</h3>
								</div>
							</li>
							<li>
								<div class="tab1">
									<h3>cloud server</h3>
								</div>

							</li>
						</ul>
						<div class="resp-tabs-container">
							<div class="tabs-right1">
								<h6>central authority (CA)</h6>
								<p>The central authority (CA) is the administrator of the
entire system. It is responsible for the system construction
by setting up the system parameters and generating public
key for each attribute of the universal attribute set. In the
system initialization phase, it assigns each user a unique
Uid and each attribute authority a unique Aid. For a
key request from a user, CA is responsible for generating
secret keys for the user on the basis of the received
intermediate key associated with the user’s legitimate
attributes verified by an AA. As an administrator of the
entire system, CA has the capacity to trace which AA has
incorrectly or maliciously verified a user and has granted
illegitimate attribute sets.</p>
								
							</div>
							<div class="tabs-right1">
								<h6>attribute authorities (AAs)</h6>
								<p>The attribute authorities (AAs) are responsible for
performing user legitimacy verification and generating
intermediate keys for legitimacy verified users. Unlike
most of the existing multi-authority schemes where each
AA manages a disjoint attribute set respectively, our
proposed scheme involves multiple authorities to share
the responsibility of user legitimacy verification and each
AA can perform this process for any user independently.
When an AA is selected, it will verify the users’ legitimate
attributes by manual labor or authentication protocols,
and generate an intermediate key associated with the
attributes that it has legitimacy-verified. Intermediate key
is a new concept to assist CA to generate keys.</p>
								
							</div>
							<div class="tabs-right1">
								<h6>data owner (Owner)</h6>
								<p>The data owner (Owner) defines the access policy about
who can get access to each file, and encrypts the file under the defined policy. First of all, each owner encrypts
his/her data with a symmetric encryption algorithm. Then,
the owner formulates access policy over an attribute
set and encrypts the symmetric key under the policy
according to public keys obtained from CA. After that, the
owner sends the whole encrypted data and the encrypted
symmetric key (denoted as ciphertext CT ) to the cloud
server to be stored in the cloud.
								
								</p>
								
							</div>
							<div class="tabs-right1">
								<h6>data consumer (User)</h6>
								<p>The data consumer (User) is assigned a global user
identity Uid by CA. The user possesses a set of attributes
and is equipped with a secret key associated with his/her
attribute set. The user can freely get any interested
encrypted data from the cloud server. However, the user
can decrypt the encrypted data if and only if his/her
attribute set satisfies the access policy embedded in the
encrypted data.</p>
								
							</div>
							<div class="tabs-right1">
								<h6>cloud server</h6>
								<p>The cloud server provides a public platform for owners to store and share their encrypted data. The cloud
server doesn’t conduct data access control for owners.
The encrypted data stored in the cloud server can be
downloaded freely by any user.</p>
								
							</div>
						</div>
					</div>
					<div style="height: 30px; clear: both"></div>
				</div>
				<div class="col-md-4 w3ls-about-right">
					<img src="images/A.png" height="350" width="480" alt="" />
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>	
		<script src="js/easy-responsive-tabs.js"></script>
		<script>
			$(document).ready(function () {
				$('#horizontalTab').easyResponsiveTabs({
					type: 'default', //Types: default, vertical, accordion           
					width: 'auto', //auto or any width like 600px
					fit: true, // 100% fit in a container
					closed: 'accordion', // Start closed if in accordion view
					activate: function (event) { // Callback function if tab is switched
						var $tab = $(this);
						var $info = $('#tabInfo');
						var $name = $('span', $info);
						$name.text($tab.text());
						$info.show();
					}
				});
				$('#verticalTab').easyResponsiveTabs({
					type: 'vertical',
					width: 'auto',
					fit: true
				});
			});
		</script>
		
				<script type="text/javascript">
					window.onload = function () {
						document.getElementById("password1").onchange = validatePassword;
						document.getElementById("password2").onchange = validatePassword;
					}
					function validatePassword(){
						var pass2=document.getElementById("password2").value;
						var pass1=document.getElementById("password1").value;
						if(pass1!=pass2)
							document.getElementById("password2").setCustomValidity("Passwords Don't Match");
						else
							document.getElementById("password2").setCustomValidity('');	 
							//empty string means no validation error
					}

			</script>
				<script src="js/SmoothScroll.min.js"></script>
	<!-- //js -->
	<script src="js/JiSlider.js"></script>
	<script>
		$(window).load(function () {
			$('#JiSlider').JiSlider({
				color: '#fff',
				start:1,
				reverse: false
			}).addClass('ff')
		})
	</script>
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-36251023-1']);
		_gaq.push(['_setDomainName', 'jqueryscript.net']);
		_gaq.push(['_trackPageview']);

		(function () {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
	<script src="js/SmoothScroll.min.js"></script>


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/bootstrap.js"></script>


</body>

</html>