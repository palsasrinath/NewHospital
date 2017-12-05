<%@page session="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <link href = "https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel = "stylesheet">
  <link rel="stylesheet" href="css/style.css">
      <script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
      <script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<!-- <script src="js/JQuery-1.9.1.min.js"></script> -->
     <c:url var="home" value="/" scope="request" />

<script>

$(document).ready(function()
		{

		var days=['SUN','MON','TUE','WED','THUR','FRI','SAT'];
		for(i=1;i<=6;i++)
		{

			var dt=new Date();
			dt.setDate(dt.getDate()+i)
			var formateDate=$.datepicker.formatDate("dd-mm-yy",dt);
			var dtNew=$.datepicker.parseDate("dd-mm-yy",formateDate);
		    var weekDay=dtNew.getDay();
		    
			$("#txtDate"+i).val(formateDate);
			$("#weekDay"+i).val(days[weekDay]);
			
			
		}
		});

	jQuery(document).ready(function($) {
		$(document).on("change","#specilization_name", function(){			
			var specilization = $("#specilization_name").val();
			var name;
			alert(specilization);
			$.ajax({
				type : "GET",
				contentType : "application/json",
				url: "http://localhost:8082/Hospital/combo_ajax.htm",
				data:{"name":specilization},
		        dataType: "json",
		        /* timeout : 100000, */
		        success: function (response) {
		            alert(response);
		          /*   $.each(response, function(index, item) {
		            	alert(item);
		                $("#doctorName").get(0).options[$("#doctorName").get(0).options.length] = new Option(item.Display, item.Value);
		              });  
		             */
		             
		             /* var options = $("#options");
		             $.each(result, function() {
		            	    options.append($("<option />").val(this.doctorName).text(this.Name));
		            	}); */
		             
		            response.forEach(function (obj) {   
		            	alert(obj);
		            	   $("<option />", {value: obj.doctorName, text: obj.name}).appendTo($('select'));
		            	}) 
		            
		        },
		   	error: function(e) 
		   	{
	        	alert("eror");
	            console.log("Error:" + e);
	        }
		});
	});

	});
	
</script>

</head>
<body>

<jsp:include page="header.jsp"/>

<script src = "https://code.jquery.com/jquery-1.10.2.js"></script>
<script src = "https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<div class="container-fluid">
<div class="single-item-content col-xs-11 col-md-5">
									 <!-- Banner Div start-->
										<div class="banner-div">  
										   <div class="search col-md-10">
												<div class="services_search col-md-10">
													<form:form class="form-horizontal  animated fadeInRight">
														<!-- Category-->
														<div class="col-md-1"></div>
														 <div class="form-group">
															<select id="specilization_name" class="form-control">
															  <option> -- Select any Specialisation -- </option>
															  <option>headache</option>
															  <option>fever</option>
															  <option>BackPain</option>
 
															</select>
														  </div>
														  <div class="form-group">
															<select id="doctorName" class="form-control">					  
															  <option>---Select any Doctor---</option>
															 </select>
														  </div>
														
													</form:form>
												</div>
										  </div>
										</div>
										 <!-- Banner Div close-->
									</div>

	<div class="container" style="width:60%;height:120px;margin-right:0px;">
		<div class="row" style="border:solid 1px silver;height:40px; ">
			<div class="col-md-offset-3 col-md-1" style="margin-top:5px;background-color:#248d8e;width:60px;text-align:center;">
				<i class="fa fa-caret-left" style="font-size:30px;color:white;background-color:#248d8e;"></i>
			</div>	
			<div  class="col-md-4" style="margin-top:3px;color:white;">
				<input type="text" id="currentdate" value="04-May-2017" style="color:white;width:100%;font-size:16px;background-color:#248d8e;font-weight:bold;height:35px;text-align:center;">
			</div>
			<div  class="col-md-1"  style="margin-top:5px;background-color:#248d8e;width:60px;text-align:center;">
				<i class="fa fa-caret-left" style="font-size:30px;color:white;background-color:#248d8e;"></i>
			
			</div>
		</div>
		<style>
			.lg {
				color:white;
				display:inline-block;
				font-size:30px;
				width:49%;
				
    background: -moz-linear-gradient(right, powderblue, brown); 
    background: linear-gradient(to right, powderblue , brown); 
    			}
			.gl {
				width:47;
				color:white;
				font-size:30px;
				display:inline-block;
    background: -moz-linear-gradient(right, brown, blue);
    background: linear-gradient(to right, brown, blue); 
			}
		</style>
		<div class="row" style="border:solid 1px silver;background-color:powderblue;">
			<div class="lg"><i class="fa fa-cog" aria-hidden="true"></i> MORNING(AM)</div>
			<div class="gl"><i class="fa fa-moon-o" aria-hidden="true"></i> EVENING(PM)</div>
		</div>
		<div class="row " style="border:solid 1px silver;">
		</div>
	 </div>
	</div>
	<div class="row" style="border:solid 1px silver; width:33%;margin:2px;border-radius:5px;padding:3px 0px 0px 0px;">

		<h3 style="margin-left:30px;">Upcoming 7 Days Availability</h3>
	</div>								
<div class="container-fluid">
<div class="row">
<div style="border:solid 2px white;"><input style="background-color:#248d8e;color:white;height:40px;width:100px;border:solid 1px #248d8e;" type="text" id="weekDay1"><input style="background-color:#248d8e;color:white;height:40px;width:200px;text-align:center;border:solid 1px #248d8e;" type="text" id="txtDate1"><div style="background-color:#248d8e;color:white;height:40px;display:inline-block;width:auto;padding:11px 0px 0px 3px;"><i class="fa fa-times" aria-hidden="true"></i></div><div style="background-color:#248d8e;color:white;height:40px;width:130px;display:inline-block;padding:8px 0px 0px 50px;"><input style="background-color:#989898;border:solid 1px #989898;padding:2px 5px 2px 5px;cursor:pointer;" type="button" id="select" value="Select"></div><br></div>
<div style="border:solid 2px white;"><input style="background-color:#248d8e;color:white;height:40px;width:100px;border:solid 1px #248d8e;" type="text" id="weekDay2"><input style="background-color:#248d8e;color:white;height:40px;width:200px;text-align:center;border:solid 1px #248d8e;" type="text" id="txtDate2"><div style="background-color:#248d8e;color:white;height:40px;display:inline-block;width:auto;padding:11px 0px 0px 0px;"><i class="fa fa-check" aria-hidden="true"></i></div><div style="background-color:#248d8e;color:white;height:40px;width:130px;display:inline-block;padding:8px 0px 0px 50px;"><input style="background-color:#989898;border:solid 1px #989898;padding:2px 5px 2px 5px;cursor:pointer;" type="button" id="select" value="Select"></div><br></div>
<div style="border:solid 2px white;"><input style="background-color:#248d8e;color:white;height:40px;width:100px;border:solid 1px #248d8e;" type="text" id="weekDay3"><input style="background-color:#248d8e;color:white;height:40px;width:200px;text-align:center;border:solid 1px #248d8e;" type="text" id="txtDate3"><div style="background-color:#248d8e;color:white;height:40px;display:inline-block;width:auto;padding:11px 0px 0px 0px;"><i class="fa fa-check" aria-hidden="true"></i></div><div style="background-color:#248d8e;color:white;height:40px;width:130px;display:inline-block;padding:8px 0px 0px 50px;"><input style="background-color:#989898;border:solid 1px #989898;padding:2px 5px 2px 5px;cursor:pointer;" type="button" id="select" value="Select"></div><br></div>
<div style="border:solid 2px white;"><input style="background-color:#248d8e;color:white;height:40px;width:100px;border:solid 1px #248d8e;" type="text" id="weekDay4"><input style="background-color:#248d8e;color:white;height:40px;width:200px;text-align:center;border:solid 1px #248d8e;" type="text" id="txtDate4"><div style="background-color:#248d8e;color:white;height:40px;display:inline-block;width:auto;padding:11px 0px 0px 0px;"><i class="fa fa-check" aria-hidden="true"></i></div><div style="background-color:#248d8e;color:white;height:40px;width:130px;display:inline-block;padding:8px 0px 0px 50px;"><input style="background-color:#989898;border:solid 1px #989898;padding:2px 5px 2px 5px;cursor:pointer;" type="button" id="select" value="Select"></div><br></div>
<div style="border:solid 2px white;"><input style="background-color:#248d8e;color:white;height:40px;width:100px;border:solid 1px #248d8e;" type="text" id="weekDay5"><input style="background-color:#248d8e;color:white;height:40px;width:200px;text-align:center;border:solid 1px #248d8e;" type="text" id="txtDate5"><div style="background-color:#248d8e;color:white;height:40px;display:inline-block;width:auto;padding:11px 0px 0px 0px;"><i class="fa fa-check" aria-hidden="true"></i></div><div style="background-color:#248d8e;color:white;height:40px;width:130px;display:inline-block;padding:8px 0px 0px 50px;"><input style="background-color:#989898;border:solid 1px #989898;padding:2px 5px 2px 5px;cursor:pointer;" type="button" id="select" value="Select"></div><br></div>
<div style="border:solid 2px white;"><input style="background-color:#248d8e;color:white;height:40px;width:100px;border:solid 1px #248d8e;" type="text" id="weekDay6"><input style="background-color:#248d8e;color:white;height:40px;width:200px;text-align:center;border:solid 1px #248d8e;" type="text" id="txtDate6"><div style="background-color:#248d8e;color:white;height:40px;display:inline-block;width:auto;padding:11px 0px 0px 0px;"><i class="fa fa-check" aria-hidden="true"></i></div><div style="background-color:#248d8e;color:white;height:40px;width:130px;display:inline-block;padding:8px 0px 0px 50px;"><input style="background-color:#989898;border:solid 1px #989898;padding:2px 5px 2px 5px;cursor:pointer;" type="button" id="select" value="Select"></div><br></div>
</div>
</div>


		<!-- Main Blog Post Area Area -->
		<div class="main-blog-page blog-post-area" >
			<div class="container pad-0">
				<div class="row">
					
					<div class="col-md-12 col-sm-12 pad-0">
						<!-- Blog Post Item Area -->

							<div class="blog-post-inner-item">
								<!-- Blog Post Single Item -->
								<div class="blog-post-single-item">
									<div class="single-item-img col-md-7 col-xs-12">
										<a href="#">
											<img class="online-book" alt="product" src="img/services/book-doc.png">
										</a>
                                         <h2><a href="#">Select A Doctor To Book An Appointment</a></h2>
									</div>
																	</div><!-- End Blog Post Single Item -->
								
								
								
							</div>
							   
					</div>
				</div>
			</div>
		</div><!-- Main Blog Post Area Area -->
		


<jsp:include page="footer.jsp"/>
</body>
</html>
