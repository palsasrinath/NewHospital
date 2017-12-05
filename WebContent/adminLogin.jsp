<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  		
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>AdminLogin</title>

<!--<link href="css/homePage.css" rel="stylesheet" type="text/css">-->

<link href="admincss/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="admincss/style.css" rel="stylesheet" type="text/css"/>

 <script type="text/javascript">
//window.history.forward(1);
//window.history.go(1);
</script>
 <script src="js/timezone.js"></script>
  <script>
  function Login(){
	/*	if(document.getElementById("username").value =="Username"){
			document.getElementById("username").value = "";
		}
		if(document.getElementById("password").value == "Company Name"){
				document.getElementById("password").value = "";
		}
*/
		var username = document.getElementById('username').value;
		var password = document.getElementById('password').value;
		var passwordregex = /^[a-zA-Z0-9\-.,$&amp;@#\%\[\]\_\/\:\?\+]*$/;
		var errorMessage = "";
		var checkFormValidate = false;
		if(username == ""){
			errorMessage="Email address is required <br/>";
			checkFormValidate = true;
		}else{
				if (username.length < 6 || username.length > 50 ) {
					errorMessage +="Invalid Email address <br/>";
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
		document.getElementById('username').focus();//added by naveenv
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
	    	<input type="hidden" name="pageChecker" value="fromWebPage" id="pageChecker"/>
			
            
           		<input type="text" name="username" value="" id="username" class="form-control mand" placeholder="Email address" required="autofocus"/>
            
			
			
            <input type="password" id="password" name="password" class="form-control disable mand" required placeholder="Password">
				<input type="submit" value="Sign In" name="Create"
				onclick="javaScript:return Login()" style="background: #008FD5 none repeat scroll 0% 0% !important" class="btn btn-primary"/>
	    </form>



	    <div class="form-footer">
	      <div class="row">
	        <div class="col-xs-8 col-sm-8 col-md-8">
				<a href="forgotPassword.jsp"> Forgot Password? </a>
				<a href="adminRegister.jsp" style="float:right">Sign Up </a>
			</div>
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
