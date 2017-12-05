<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!doctype html>
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
  
  
  <script src="js/JQuery-1.9.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/vendor/modernizr-2.8.3.min.js"></script>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    
<body>
<jsp:include page="header.jsp"></jsp:include>
		<!-- Main Slider Area -->
	<div class="container-fluid">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="img/slider/banner1.jpg" class="slider"/>
      </div>

      <div class="item">
        <img src="img/slider/banner1.jpg" class="slider"/>
      </div>
    
      <div class="item">
        <img src="img/slider/banner3.jpg" class="slider"/>
      </div>

      <div class="item">
        <img src="img/slider/banner4.jpg" class="slider"/>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

		<!-- End Main Slider Area -->
		<div class="container-fluid">
		<div class="row">
		<div class="col-md-12 app">BOOK APPOINTMENT</div>
		</div>
		</div>
		<!-- Top Banner Area -->
		<div class="top-banner-area">
			<div class="container ">
			<div class="row ">
                    <div class="col-md-12">
					  <p class="our-dep">OUR DEPARTMENTS</p>
					  <div class="title-line-4 blue less-margin"></div>
					</div>
				</div>
			</div>
		</div><!-- End Top Banner Area -->

		<!-- Top  Area -->
		<div class="top-banner-area">
			<div class="container ">
			<div class="row">
			<div class="col-md-4">
                       <div class="dep">
					    <p class="heart"><img src="img/banner/pngheart.png" ></p>
						<h5 class="space">Anesthesia</h5>
						<p class="ptag">Anesthesia is a way to control pain during a surgery or procedure by using medicine called anesthetics. It can help control your breathing, blood pressure, blood flow, and heart rate and rhythm.</p>
					   </div>
					 </div>
					 <div class="col-md-4">
					   <div class="dep">
					    <p class="heart"><img src="img/banner/pngheart.png"></p>
						<h5 class="space">Cardiology</h5>
						<p class="ptag">A cardiologist is a heart doctor. He or she is the one to visit if you feel a tightness in your chest and shortness of breath</p>
					   </div>
					 </div>
					 <div class="col-md-4">
					   <div class="dep">
					   <p class="heart"><img src="img/banner/pngheart.png"></p>
						<h5 class="space">Pulmonology</h5>
						<p class="ptag">A pulmonologist, or pulmonary disease specialist, is a physician who possesses specialized knowledge and skill in the diagnosis and treatment of pulmonary (lung) conditions and diseases.</p>
					   </div>
					 </div>
				</div>
			</div>
		</div><!-- End Top  Area -->
		
		<!-- Top  Area -->
		<div class="top-banner-area">
			<div class="container ">
			<div class="row">
					 <div class="col-md-4">
                       <div class="dep">
					    <p class="heart"><img src="img/banner/pngheart.png"></p>
						<h5 class="space">Andrology</h5>
						<p class="ptag">Andrology is branch of medicine concerned with men's health, particularly male infertility and sexual dysfunction. Andrology is literally the study of man (Greek andros, man). It is the male counterpart of gynecology.</p>
					   </div>
					 </div>
					 <div class="col-md-4">
					   <div class="dep">
					    <p class="heart"><img src="img/banner/pngheart.png" ></p>
						<h5 class="space">Critical Care</h5>
						<p class="ptag">Critical care helps people with life-threatening injuries and illnesses. It might treat problems such as complications from surgery, accidents, infections, and severe breathing problems.</p>
					   </div>
					 </div>
					 <div class="col-md-4">
					   <div class="dep">
					   <p class="heart"><img src="img/banner/pngheart.png" ></p>
						<h5 class="space">Urology</h5>
						<p class="ptag">Urologyis the branch of medicine that focuses on surgical and medical diseases of the male and female urinary tract system and the male reproductive organs.</p>
					   </div>
					 </div>
				</div>
			</div>
		</div><!-- End Top  Area -->

		<!-- Top Banner Area -->
		<div class="top-banner-area">
			<div class="container ">
			<div class="row">
                    <div class="col-md-12">
					  <p class="our-dep">ABOUT US</p>
					  <div class="title-line-4 blue less-margin"></div>
					  <p class="abtus">"We believe delivery of world class healthcare is achieved through a combination of unparalleled quality and clinical excellence; along with a true focus on the personal needs of our patients and their families.At Himagiri Hospitals, our priority is to focus on the delivery of a special brand of health and care to patients. Within a world class hospital".</p>
					</div>
				</div>
			</div>
		</div><!-- End Top Banner Area -->


		<!-- Services Group -->
		<div class="services-group">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<!-- Our Services -->
						<div class="our-services">
							<div class="head-title">
								<p>OUR LOCATION</p>
							</div>
							<!-- Our Services Content -->
							<div class="our-services-content">

								<!-- Single Services -->
								<div class="single-services">
									<div class="single-services-icon">
									</div>
									<div class="single-services-content">
										
									</div>
								</div><!-- End Single Services -->

								
								
							</div><!-- End Our Services Content -->
						</div><!-- End Our Services -->
					</div>
					<div class="col-md-4">
						<!-- Client Testmonials Area -->
						<div class="client-testimonals-area">
							<div class="head-title">
								<p>PEPOLE SAYS</p>
							</div>
							<div id="client-carousel" class="owl-carousel custom-carousel-2">
								<!-- Client Testmonials -->
								<div class="client-testimonals">
									
									<!-- Single Client Testmonials -->
									<div class="single-client-testimonals">
										<div class="client-testimonals-img">
											<img src="img/clients/clients.jpg" alt="client">
										</div>
										<div class="client-testimonals-content">
											<a href="#">Text content text content text content text content text content text content text content text content text content..</a>
											<div class="post-by">							
												<span class="testimonial-author">Lacuada</span>
												<span class="testimonial-date">January 19, 2016</span>
											</div>
										</div>
									</div><!-- End Single Client Testmonials -->
								</div><!-- End Client Testmonials -->
								<!-- Client Testmonials -->
								<div class="client-testimonals">
									<!-- Single Client Testmonials -->
									<div class="single-client-testimonals">
										<div class="client-testimonals-img">
											<img src="img/clients/clients.jpg" alt="client">
										</div>
										<div class="client-testimonals-content">
											<a href="#">Text content text content text content text content text content text content text content text content text content..</a>
											<div class="post-by">							
												<span class="testimonial-author">Lacuada</span>
												<span class="testimonial-date">January 19, 2016</span>
											</div>
										</div>
									</div><!-- End Single Client Testmonials -->
						
								</div><!-- End Client Testmonials -->
							</div>
						</div><!-- End Client Testmonials Area -->
					</div>
					<div class="col-md-4">
						<!-- Our Services -->
						<div class="our-services">
							<div class="head-title">
								<p>OUR SKILLS</p>
							</div>
							<!-- Our Services Content -->
							<div class="our-services-content">

								<!-- Single Services -->
								<div class="single-services">
									<div class="single-services-content">
										<div class="skills">Success Rate 96%</div>
										<div class="skills1">Happy Patients 92%</div> 
										<div class="skills2">Health Care 100%</div>
										<div class="skills3">success rate 90%</div>
										</div>
								</div><!-- End Single Services -->

					</div>
				</div>
			</div>
		</div><!-- End Services Group -->
		</div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>