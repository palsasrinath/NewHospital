<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<html>
<head>

        
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>|| Himagiri Hospitals ||</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <!--  <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">
        <link rel="stylesheet" href="Hospital/Webcontent/css/style.css">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script> -->
         <script src = "js/main.js"></script>

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
        <link rel="stylesheet" href="../../css/style.css">
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
    </head>
    
<body>
<jsp:include page="header.jsp"/>
		<!-- Contact area -->
		<div class="contact-area">
			<div class="container">
				<div class="row">
					
					
							<div class="col-md-12  col-sm-12 col-xs-12">
								<div class="contact-form">
									<div class="row">
									<div class="col-md-offset-3 col-md-6">
										<form:form method="post" action="feedback.htm"  >
										
										
										   <div class="clsempmaindiv"> 
                                              <label class="clsemptagname"> Name :</label>
                                              <form:input  path="empName"  class="clsempinput" placeholder="Name (required)"  type="text"/><br>
                                            </div>
											
											 <div class="clsempmaindiv"> 
                                               <label> Email :</label>
                                               <form:input  path="empEmail" class="clsempinput" placeholder="Email(required)" type="text"/><br>
                                             </div>
											
											<div class="clsempmaindiv"> 
                                              <label> Mobile Number:</label>
                                              <form:input  path="mobileNumber" placeholder="MobileNumber(required)"  class="clsempinput" type="text" /><br>
                                            </div>
											
											<div class="clsempmaindiv"> 
                                              <label class="clsemptagname"> Subject :</label>
                                              <form:input path="subject" class="clsempinput" placeholder="Subject(required)"  type="text"/><br>
                                            </div>
											
											<div class="clsempmaindiv"> 
                                              <label class="clsemptagname"> Message :</label>
                                              
                                              <form:textarea path="message" class="clsempinput" placeholder="Message(required)"/>
                                              
                                              <br>
                                            </div>
											
											<div class="col-md-8 col-sm-8 col-xs-8">
												<input type="submit" value="Submit Form" />
												<div style="height:20px;"></div>
											</div>
										</form:form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
		</div><!-- End Eontact area -->
		
		

<jsp:include page="footer.jsp"/>
</body>
</html>