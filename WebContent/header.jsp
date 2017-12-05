<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!doctype html>
<html class="no-js" lang="">
    
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>|| Himagiri Hospitals ||</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">



		<!-- favicon
		============================================ -->		
        <link rel="shortcut icon" type="image/x-icon" href="img/logo/himagiri.png">
		
		<!-- Google Fonts
		============================================ -->		
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css' />
	   
		<!-- Bootstrap CSS
		============================================ -->		
        <link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- Font Awesome CSS
		============================================ -->
        <link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- Mean Menu CSS
		============================================ -->      
        <link rel="stylesheet" href="css/meanmenu.min.css">
		<!-- owl.carousel CSS
		============================================ -->
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/owl.theme.css">
        <link rel="stylesheet" href="css/owl.transitions.css">
		<!-- nivo-slider css
		============================================ --> 
		<link rel="stylesheet" href="css/nivo-slider.css">
		<!-- Price slider css
		============================================ --> 
		<link rel="stylesheet" href="css/jquery-ui-slider.css">
		<!-- Simple Lence css
		============================================ --> 
		<link rel="stylesheet" type="text/css" href="css/jquery.simpleLens.css">
		<link rel="stylesheet" type="text/css" href="css/jquery.simpleGallery.css">
		<!-- normalize CSS
		============================================ -->
        <link rel="stylesheet" href="css/normalize.css">
		<!-- verticaltabs CSS
		============================================ -->
        <link rel="stylesheet" href="css/bootstrap.vertical-tabs.css">
        <!-- j query
		============================================ -->		
		<!-- modernizr JS
		============================================ -->		
        
        
        
		
		<!-- main CSS
		============================================ -->
        <link rel="stylesheet" href="css/main.css">
		<!-- style CSS
		============================================ -->
        <link rel="stylesheet" href="css/style.css">
		<!-- responsive CSS
		============================================ -->
        <link rel="stylesheet" href="css/responsive.css">
		
 <!-- Nav Bar Fixed --->
  <style>
  .affix {
      top: 0;
      width: 100%;
	  z-index:99;
	  -webkit-transition: all 0.2s; /* Safari */ transition: all 0.2s;
  }

  .affix + .container-fluid {
      padding-top: 70px;
  }
  .affix .logo{height:40px;-webkit-transition: width 0.2s, height 0.2s; /* Safari */ transition: width 0.2s, height 0.2s;}
  .affix .menubar_ul{padding-top:1%;-webkit-transition: all 0.2s; /* Safari */ transition: all 0.2s;}
  </style>
  
   <!-- <script src="js/JQuery-1.9.1.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
   <script src="js/vendor/modernizr-2.8.3.min.js"></script> -->
   
   <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">
  <link rel="stylesheet" href="Hospital/Webcontent/css/style.css">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
        
        <script>
    $(document).ready(function() {
    	//alert("Hello hi");
      $("#login").click(function(event) {
        //event.preventDefault();

       })
    })
  </script>
  
  
  
  
    </head>

<body>
<!--[if lt IE 8]>
	<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

		
		<!-- Header Area -->
		<div class="header-area">
			<!-- Header Top -->
			<div class="header-top">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<!-- Header Top Bar-->
							<div class="header-top-bar">
								<div class="row">
									<div class="col-md-10 col-xs-10">
										<!-- Header Top Left-->
										<div class="header-top-left">
											<div class="call-header">
												<ul class="emergency ul-xs">
                                                   <li><i class="fa fa-ambulance" aria-hidden="true"></i>Emergency:9581965668</li>
												   <li>
													<!-- Button trigger modal -->
														<a style="list-style-type:none;color:white;" data-toggle="modal" data-target="#ModalLong">
														<i class="fa fa-sign-in" aria-hidden="true"></i> Login </a>
														</button>
														
														<!-- Modal -->
														<div class="modal fade" id="ModalLong" tabindex="-1" role="dialog" aria-labelledby="ModalLongTitle" aria-hidden="true">
														  <div class="modal-dialog" style="width:600px;"role="document">
														    <div class="modal-content">
														      <div class="modal-header" style="height:65px;">
														        <h3 class="modal-title"style="color:#272727;font-family: 'Roboto', sans-serif;" id="ModalLongTitle">Login</h3>
														        <button type="button" style="margin-top:-35px;"class="close" data-dismiss="modal" aria-label="Close">
														          <span aria-hidden="true">&times;</span>
														        </button>
														      </div>
														      <div class="modal-body">
														     		<input style="font-size:18px;border-radius:5px;background-color:#FFFACD;width:500px;height:35px;"type="text" id="username" placeholder="username">
														     		
														     		<br><br>
														     		
														     		<input style="font-size:18px;border-radius:5px;background-color:#FFFACD;width:500px;height:35px;" type="password" id="password" placeholder="password">
														     		
														     		<br><br>
														     		
														     		<input type="checkbox" id="checkbox-remember">  <p style="display:inline-block;font-family: 'Roboto', sans-serif; font-size:18x; color:grey;"> Remember me</p>
														      </div>
														      <div class="modal-footer">
														        <button type="button" style="float:left;"class="btn btn-success" data-dismiss="modal">Login</button>
														        <a type="button" style="color:blue;font-size:14px;float:right;" href="#">Reset Password?</a>
														      </div>
														    </div>
														  </div>
														</div>
													   
												   </li>
												   <li><a class="reg-a" href="registerView.htm"><i class="fa fa-pencil" aria-hidden="true"></i>Register</a></li>
												   <li><a class="reg-abc" href="emergency.jsp">24/7 Emergency services</li>
												</ul>
												</div>
											
										</div><!-- End Header Top Left-->
									</div>
									<div class="col-md-2">
										<!-- Header Top Right-->
										<div class="header-top-right">
											<!-- Header Link Area -->
											<div class="header-link-area">
												<div class="social-footer">
													<ul class="giri ul-xs">
													  <li><i class="fa fa-twitter" aria-hidden="true"></i></li>
													  <li><i class="fa fa-facebook" aria-hidden="true"></i></li>
													  <li><i class="fa fa-google-plus" aria-hidden="true"></i></li>
													  <li><i class="fa fa-linkedin" aria-hidden="true"></i></li>
													  <li><i class="fa fa-youtube-square" aria-hidden="true"></i></li>
													</ul>
												</div>

											</div><!-- End Header Link Area -->
										</div><!-- End Header Top Right-->
									</div>
								</div>
					
						</div>
					</div>
					</div>
			</DIV>			
			</div><!-- End Header Top -->

<!--header-bottom -->
<nav class="navbar hor-menu " data-spy="affix" data-offset-top="100">
	<div class="container-fluid">
		<div class="navbar-header">
		  <button type="button " class="navbar-toggle menu-btn col-xs-12" data-toggle="collapse" data-target="#myNavbar"><label>menu</label></button>
		  <a class="navbar-brand" href="#"><img src="img/logo/himagiri.png" class="logo" style=""  alt="logo"></a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<!-- menu -->
			  <ul class="nav navbar-nav navbar-right menubar_ul">
				<li><a href="index.jsp">HOME</a></li>
	            <li><a href="about.jsp">ABOUTUS</a></li>
	            <li><a href="specialties.jsp">SPECIALTIES</a></li>
				<li class="">
				<!-- sub-menu -->
					<a href="" class="dropdown-toggle menu_rel" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">OUR DOCTORS</a>					
					<ul class="dropdown-menu" id="dropdown-menu">
						<li>
						<a class="dropdown-item" href="products.jsp">General Physician (Medicine)</a></li>
						<li><a class="dropdown-item" href="products.jsp">Gynaecology</a></li>
						<li><a class="dropdown-item" href="products.jsp">Dermatology (Skin)</a></li>
						<li><a class="dropdown-item" href="products.jsp">ENT (Otolaryngology)</a></li>
						<li><a class="dropdown-item" href="products.jsp">Dentistry (Teeth)</a></li>
						<li><a class="dropdown-item" href="products.jsp">Orthopedics / Orthopedic Surgery</a></li>
						<li><a class="dropdown-item" href="products.jsp">General Surgery</a></li>
						<li><a class="dropdown-item" href="products.jsp">Plastic Surgery</a></li>
						<li><a class="dropdown-item" href="products.jsp">Urology</a></li>
						<li><a class="dropdown-item" href="products.jsp">Neurology</a></li>
						<li><a class="dropdown-item" href="products.jsp">ENT (Otolaryngology)</a></li>
						<li><a class="dropdown-item" href="products.jsp">Pulmonology (TB and Chest)</a></li>
						<li><a class="dropdown-item" href="products.jsp">Cardiology</a></li>
						<li><a class="dropdown-item" href="products.jsp">Dietitian and Nutritionist</a></li>
						<li><a class="dropdown-item" href="products.jsp">Gastroenterology</a></li>
						<li><a class="dropdown-item" href="products.jsp">Nephrology</a></li>
						<li><a class="dropdown-item" href="products.jsp">Neurological Surgery</a></li>
						<li><a class="dropdown-item" href="products.jsp">Psychiatry</a></li>
						<li><a class="dropdown-item" href="products.jsp">Ophthalmology (Eye)</a></li>
						<li><a class="dropdown-item" href="products.jsp">Physiology and Physiotherapy</a></li>
						<li><a class="dropdown-item" href="products.jsp">Radiology / Imaging</a></li>
					</ul>	
				</li>
				<li><a href="bookappointment.htm">BOOKONLINE APPOINTMENT</a></li>
				<li><a href="gallery.jsp">GALLERY</a></li>
				<li><a href="tie-ups.jsp">TIE UPS</a></li>
				<li><a href="contact.jsp">CONTACTUS</a></li>
				<li><a href="feedbackView.htm">FEEDBACK</a></li>
				
			  </ul>
		</div>
	</div>
  </nav>




 

</body>
       
</html>