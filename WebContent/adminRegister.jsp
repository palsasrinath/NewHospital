<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  		
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Admin Registration</title> 

<!--<link href="css/homePage.css" rel="stylesheet" type="text/css">-->

<link href="admincss/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="admincss/style.css" rel="stylesheet" type="text/css"/>

 <script type="text/javascript">
//window.history.forward(1);
//window.history.go(1);
</script>
 <script src="js/timezone.js"></script>
  <script>
  function Register(){
	    var fname = document.getElementById('fname').value;
	    var lname = document.getElementById('lname').value;
		var email = document.getElementById('email').value;
		var password = document.getElementById('password').value;
		var passwordregex = /^[a-zA-Z0-9\-.,$&amp;@#\%\[\]\_\/\:\?\+]*$/;
		var mobile = document.getElementById('mobile').value;
		var mobileregex = /^(\+\d{1,3}[- ]?)?\d{10}$/;
		var dob = document.getElementById('dob').value;
		var dobregex = /^\d{2}([./-])\d{2}\1\d{4}$/;
		var address = document.getElementById('address').value;
		var city = document.getElementById('city').value;
		var state = document.getElementById('state').value;
		var gender = document.getElementById('gender').checked;
		
		var errorMessage = "";
		var checkFormValidate = false;
		
		if(fname == ""){
			errorMessage="firstName is required <br/>";
			checkFormValidate = true;
		}
		if(lname == ""){
			errorMessage="lastName is required <br/>";
			checkFormValidate = true;
		}	
		if(email == ""){
			errorMessage="Email is required <br/>";
			checkFormValidate = true;
		}else{
				if (email.length < 6 || email.length > 50 ) {
					errorMessage +="Invalid Email <br/>";
					checkFormValidate = true;	
				}
			}
		if(password == ""){
			errorMessage =errorMessage + "Password is required";
			checkFormValidate = true;
			
		}else{

				if (password.length < 6 || password.length > 50 ) {
					errorMessage +="Invalid  Password <br/>";
					checkFormValidate = true;	
				}
				if(!passwordregex.test(password)){
					errorMessage +="Invalid  Password <br/>";
					checkFormValidate = true;	
				}
		}
		if(mobile == ""){
			errorMessage="mobileNumber is required <br/>";
			checkFormValidate = true;
		}else {
				if(!mobileregex.test(mobile)){
					errorMessage +="Invalid  mobileNumber <br/>";
					checkFormValidate = true;	
				}
		} 
		if(dob == ""){
			errorMessage="date of birth is required <br/>";
			checkFormValidate = true;
		}else {
				if(!dobregex.test(dob)){
					errorMessage +="Invalid  dateofbirth <br/>";
					checkFormValidate = true;	
				}
		} 
		if(address == ""){
			errorMessage="address is required <br/>";
			checkFormValidate = true;
		}
		if(city == ""){
			errorMessage="city is required <br/>";
			checkFormValidate = true;
		}
		if(state == ""){
			errorMessage="state is required <br/>";
			checkFormValidate = true;
		}
		if(gender == ""){
			errorMessage="gender is required <br/>";
			checkFormValidate = true;
	    }

		if (checkFormValidate) {
			document.getElementById('password').value='';
			document.getElementById('loginErrorDiv').innerHTML = errorMessage;
			document.getElementById('loginErrorDiv').style.display = '';
			document.getElementById('ActionMsgDiv').style.display = 'none';
			return false;
			
		}else{
			document.loginForm.action ="login_testing.action";	
			document.loginForm.submit();
			return true;
		}
	  }

          function setTimeZoneInCookie() {
        var _myDate = new Date();
        var _offset = _myDate.getTimezoneOffset();
        document.cookie = "TIMEZONE_COOKIE=" + _offset; //Cookie name with value
        //alert("_offset in webHomePage.jsp-->"+_offset);
        var tz = jstz.determine();
        var timeZoneName=tz.name();
        //alert("Time Zone in webHomePage.jsp-->"+timeZoneName);
        document.cookie = "TIMEZONE_NAME_COOKIE=" + timeZoneName;
    }

	//added by naveenv
	function initFocus(){
		document.getElementById('email').focus();//added by naveenv
	}  
	
	 history.pushState({page: 1}, "title 1", "#nbb");
     window.onhashchange = function (event) {
         window.location.hash = "nbb";
     };
	
 	</script> 
</head>

<body onload="setTimeZoneInCookie();initFocus();" class="login">
<div id="wrapper">

	<div class="container">
	  <div class="login-form">
	    <div class="logo text-center"><a href="#"><img src="images/logo_himagiri.png" style="height:50px"> </a></div>
	    
	    <form id="loginForm" name="loginForm" action="/SutiDesk/login_testing.action;jsessionid=0A69EF39B7A12057F64993AE00B6EEC7" method="post" class="form-signin" role="form">
	    	<div class="alert alert-danger" id="loginErrorDiv" align="left" style="display: none;"></div>
		    <div  id="ActionMsgDiv" >
		    	
			</div>
	    	
	    	<input type="text" name="firstName" value="" id="fname" class="form-control mand" placeholder="Enter FirstName" required="autofocus"/>
	    	<input type="text" name="lastName" value="" id="lname" class="form-control mand" placeholder="Enter LastName" required="autofocus"/>
           	<input type="text" name="email" value="" id="email" class="form-control mand" placeholder="Enter Email" required="autofocus"/>
            <input type="password" id="password" name="password" class="form-control disable mand" required placeholder="Enter Password">
			<input type="text" name="mobile" value="" id="mobile" class="form-control mand" placeholder="Enter MobileNumber" required="autofocus"/>
			<input type="text" name="dateofbirth" value="" id="dob" class="form-control mand" placeholder="Enter DateofBirth" required="autofocus"/>
			<input type="text" name="address" value="" id="address" class="form-control mand" placeholder="Enter Address" required="autofocus"/>
			<input type="text" name="city" value="" id="city" class="form-control mand" placeholder="Enter City" required="autofocus"/>
			<input type="text" name="state" value="" id="state" class="form-control mand" placeholder="Enter State" required="autofocus"/>
			
			Gender: <input type="radio" name="answer" id="gender" value="male" ng-model="answers.gender" />Male
       				<input type="radio" name="answer" id="gender" value="Female" ng-model="answers.gender" />Female			
			
			<input type="submit" value="Sign In" name="Create"
				onclick="javaScript:return Register()" style="background: #008FD5 none repeat scroll 0% 0% !important" class="btn btn-primary"/>
	    </form>

	    <div class="form-footer">
	      <div class="row">
	        <div class="col-xs-8 col-sm-8 col-md-8"><a href="adminLogin.jsp">(Already registered) Sign In </a> </div>
	      </div>
	    </div>
	  </div>
	</div>
	
</div>



<div class="container-fluid footerlog"> 
	<div class="row">
		<div class="col-md-6 col-sm-6 pull-left"> <a href="" target="_blank">Privacy Policy </a> . <a href="" target="_blank">Terms and Conditions of Use</a></div>
		<div class="col-md-6 col-sm-6 pull-right text-right">
			&copy; 2017 SutiSoft, Inc. &middot; All Rights Reserved &middot; v2.0.4
		</div>	
	</div>
</div>

</body>
</html>
