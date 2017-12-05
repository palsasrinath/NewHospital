<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<jsp:include page="header.jsp"/>
<div class="container wrapper-register">
 <div class="row">
	<!-- Banner Div start-->

			<form:form class=" animated fadeInRight"  method="POST"  action="register.htm"  id="registerForm" name="registerForm">
<!-- panel-1 --->			
				<div class="panel panel-primary m-tb-3">				  
					  <div class="panel-heading">Please Select Livlife Center</div>
					  <div class="panel-body">
							<!-- form grpoup-1 -->
						  <div class="form-group col-md-offset-1 col-md-5">
							  <label for="inputEmail3" class="col-sm-2 col-md-2 col-form-label p-t-2">City</label>
							  <div class="col-sm-10 col-md-10">
								<form:select class="form-control" path="city">
								  <option> -- Select City -- </option>
								  <option> Hyderabad</option>
								</form:select>
								</div>
							</div><!-- form grpoup -->
							<!-- form grpoup-2 -->
							  <div class="form-group col-md-offset-1 col-md-5">
								  <label for="inputEmail3" class="col-sm-2 col-md-2 col-form-label p-t-2">Center</label>
								  <div class="col-sm-10 col-md-10">
									<form:select class="form-control" path="center"> 
									  <option> -- Select Center -- </option>
									   <option>Gachibowli</option>
									</form:select>
									</div>
								</div><!-- form grpoup -->
								<div class="clearfix"></div>
					  </div><!-- panel body -->
				 </div><!-- panel ends -->
<!-- panel-2 --->
				 <div class="panel panel-primary m-tb-3">				  
					  <div class="panel-heading">Please Select Livlife Center</div>
					  <div class="panel-body">
							<!-- form grpoup-1 -->
						  <div class="form-group col-md-offset-1 col-md-5">
							  <label for="inputEmail3" class="col-sm-2 col-md-2 col-form-label p-t-2">Name</label>
							  <div class="col-sm-10 col-md-10">
									<form:input type="text" class="form-control" id="exampleInputName2" path="name" placeholder="Please Enter Your Name"></form:input>
								</div>
							</div><!-- form grpoup -->

							<!-- form grpoup-2 -->
							  <div class="form-group col-md-offset-1 col-md-5">
								  <label for="inputEmail3" class="col-sm-2 col-md-2 col-form-label p-t-2">Email</label>
								  <div class="col-sm-10 col-md-10">
										<form:input type="text" class="form-control" id="exampleInputName2" path="email" placeholder="Please Enter Your Email"></form:input>
									</div>
								</div><!-- form grpoup -->

								<div class="clearfix"></div>

								<!-- form grpoup-3 -->
						  <div class="form-group col-md-offset-1 col-md-5">
							  <label for="inputEmail3" class="col-sm-2 col-md-2 col-form-label p-t-2">Contact</label>
							  <div class="col-sm-10 col-md-10">
									<form:input type="text" class="form-control" id="exampleInputName2"  path="phoneNumber" placeholder="Please Enter Your Contact"></form:input>
								</div>
							</div><!-- form grpoup -->

							<!-- form grpoup-4 -->
							  <div class="form-group col-md-offset-1 col-md-5">
								  <label for="inputEmail3" class="col-sm-2 col-md-2 col-form-label p-t-2">Password</label>
								  <div class="col-sm-10 col-md-10">
										<form:input type="text" class="form-control" id="exampleInputName2" path="password" placeholder="Please Enter Your Password"></form:input>
									</div>
								</div><!-- form grpoup -->

								<div class="clearfix"></div>

					  </div><!-- panel body -->
				 </div><!-- panel ends -->
<!-- buttons -->
		<div class="col-md-2 col-md-offset-10 col-xs-offset-2 btn_form">
			<button class="btn btn-danger">Cancel</button>
			<button class="btn btn-success col-xs-offset-1">Save</button>
		</div>

			</form:form>
 <!-- Banner Div close-->
 </div><!-- row -->


</div><!-- container -->
<jsp:include page="footer.jsp"/>