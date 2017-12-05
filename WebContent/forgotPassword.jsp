

<!--<link href='images/favicon.ico' rel='shortcut icon'/>-->
<title>SutiDesk</title>
<link href="admincss/bootstrap.css" rel="stylesheet" type="text/css"/>
<link href="admincss/style.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript">
	function searchFormReset(){
		document.getElementById("userName").value = "";
	}
</script>
			
<body>
<div class="container-fluid">
  <div class="row">
     <div class="col-md-12">
      <div role="document" class="modal-dialog password">
        <div class="row">
          <div class="col-md-12 text-center"> <img src="images/logo_himagiri.png" width="149" height="72"> </div>
        </div>
        <br>
        <div class="modal-content">
          <div class="modal-header">
            <h5>Forgot Password</h5>
          </div>
          <div class="modal-body">
            <p class="text-justify">
                
                Instructions to reset your password will be sent to the email address you provide.
            </p>
		    
			 
			
            <div class="row">
              <form method="post">
                <div class="form-group">
                  <label for="email">Email address</label>
                  <input type="text" name="userName" value="" id="userName" class="form-control reset-form-control"/>
                </div>
                
                <div style="margin-top:15px;" class="top-margin text-right">
                  
                  <input type="submit" value="Send Email" id="_savebutton" name="savebutton" class="btn btn-success"/>

					
					
					<input type="hidden" name="pageChecker" id="pageChecker" value="fromWebPage" />
					
					<a href="login.html" class="btn btn-danger">Cancel</a>
					<input type="button" name='Reset' value='Reset' onclick="searchFormReset();" class="btn btn-danger"/>
			
                </div>
              </form>



            </div>
          </div>
        </div>
        <!-- /.modal-content --> 
      </div>
    </div>
  </div>
</div>

<!-- Start Footer -->
<div class="container-fluid footerlog">
  <div class="row">
    <div class="col-md-6 col-sm-6 pull-left"> <a href="" target="_blank">Privacy Policy </a> . <a href="" target="_blank">Terms and Conditions of Use</a></div>
    <div class="col-md-6 col-sm-6 pull-right text-right">&copy; 2017 SutiSoft, Inc. &middot; All Rights Reserved &middot; v2.0.4</div>
  </div>
</div>
<!-- End Footer -->

</body>
						
