var theNewScript = document.createElement("script");
theNewScript.type = "text/javascript";
theNewScript.src = "js/JQuery-1.9.1.min.js"; 
document.getElementsByTagName("head")[0].appendChild(theNewScript);


(function ($) {
 "use strict";
 
/*----------------------------
 jQuery MeanMenu
------------------------------ */
	$('.mobile-menu nav').meanmenu({
		meanScreenWidth: "991",
		meanMenuContainer: ".mobile-menu",
	});

/*----------------------------
 Category Menu
------------------------------ */
	$(".category-menu-title").on('click', function(){
		$(".categorie-list").toggle();
	});
	
/*--------------------------
	Category Accordion
---------------------------- */	
	 $('.rx-parent').on('click', function(){
		$('.rx-child').slideToggle(300);
		$(this).toggleClass('rx-change');
	});

/*----------------------------
 main slider
------------------------------ */
	$('#mainSlider').nivoSlider({
		directionNav: true,
		animSpeed: 500,
		slices: 18,
		pauseTime: 5000,
		pauseOnHover: false,
		controlNav: false,
		prevText: '<i class="fa fa-angle-left nivo-prev-icon"></i>',
		nextText: '<i class="fa fa-angle-right nivo-next-icon"></i>'
	});		

/*----------------------------
 DB Select Js
------------------------------ */
	$('#product-categori').ddslick({
		onSelected: function(selectedData){
			//callback function: do something with selectedData;
		}   
	});	
 
/*----------------------------
 owl active
------------------------------ */
  /* Bestsell Carousel */
  $("#bestsell-carousel").owlCarousel({
      autoPlay: false, 
	  slideSpeed:2000,
	  pagination:false,
	  navigation:true,
	  addClassActive:true,
      items : 5,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
      itemsDesktop : [1199,4],
	  itemsDesktopSmall : [980,3],
	  itemsTablet: [768,2],
	  itemsMobile : [479,1],
  });
  
  /* Bestsell Carousel 2 */
  $("#bestsell-carousel-2").owlCarousel({
      autoPlay: false, 
	  slideSpeed:2000,
	  pagination:false,
	  navigation:true,
	  addClassActive:true,
      items : 4,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
      itemsDesktop : [1199,3],
	  itemsDesktopSmall : [980,3],
	  itemsTablet: [768,2],
	  itemsMobile : [479,1],
  });
  
  /* Most Viewed Carousel */
  $("#most-viewed-carousel").owlCarousel({
      autoPlay: false, 
	  slideSpeed:2000,
	  pagination:false,
	  navigation:true,
	  addClassActive:true,
      items : 5,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
      itemsDesktop : [1199,4],
	  itemsDesktopSmall : [980,3],
	  itemsTablet: [768,2],
	  itemsMobile : [479,1],
  }); 



  
  /* Most Viewed Carousel 2 */
  $("#most-viewed-carousel-2").owlCarousel({
      autoPlay: false, 
	  slideSpeed:2000,
	  pagination:false,
	  navigation:true,
	  addClassActive:true,
      items : 4,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
      itemsDesktop : [1199,3],
	  itemsDesktopSmall : [980,3],
	  itemsTablet: [768,2],
	  itemsMobile : [479,1],
  });
  
  /* Random Carousel */
  $("#random-carousel").owlCarousel({
      autoPlay: false, 
	  slideSpeed:2000,
	  pagination:false,
	  navigation:true,
	  addClassActive:true,
      items : 5,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
      itemsDesktop : [1199,4],
	  itemsDesktopSmall : [980,3],
	  itemsTablet: [768,2],
	  itemsMobile : [479,1],
  });  
  
  /* Random Carousel 2 */
  $("#random-carousel-2").owlCarousel({
      autoPlay: false, 
	  slideSpeed:2000,
	  pagination:false,
	  navigation:true,
	  addClassActive:true,
      items : 4,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
      itemsDesktop : [1199,3],
	  itemsDesktopSmall : [980,3],
	  itemsTablet: [768,2],
	  itemsMobile : [479,1],
  });
  
  /* Laptop Carousel */
  $("#laptop-carousel").owlCarousel({
      autoPlay: false, 
	  slideSpeed:2000,
	  pagination:false,
	  navigation:true,
	  addClassActive:true,
      items : 1,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
      itemsDesktop : [1199,3],
	  itemsDesktopSmall : [980,3],
	  itemsTablet: [768,2],
	  itemsMobile : [479,1],
  });
  
  /* Laptop Carousel 2 */
  $("#laptop-carousel-2").owlCarousel({
      autoPlay: false, 
	  slideSpeed:2000,
	  pagination:false,
	  navigation:true,
	  addClassActive:true,
      items : 5,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
      itemsDesktop : [1199,4],
	  itemsDesktopSmall : [980,3],
	  itemsTablet: [768,2],
	  itemsMobile : [479,1],
  });
  
  /* Laptop Carousel 3 */
  $("#laptop-carousel-3").owlCarousel({
      autoPlay: false, 
	  slideSpeed:2000,
	  pagination:false,
	  navigation:true,
	  addClassActive:true,
      items : 4,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
      itemsDesktop : [1199,4],
	  itemsDesktopSmall : [980,3],
	  itemsTablet: [768,2],
	  itemsMobile : [479,1],
  });
  
  /* Tablet Carousel */
  $("#tablet-carousel").owlCarousel({
      autoPlay: false, 
	  slideSpeed:2000,
	  pagination:false,
	  navigation:true,
	  addClassActive:true,
      items : 5,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
      itemsDesktop : [1199,3],
	  itemsDesktopSmall : [980,3],
	  itemsTablet: [768,2],
	  itemsMobile : [479,1],
  });
  
  /* Tablet Carousel 2 */
  $("#tablet-carousel-2").owlCarousel({
      autoPlay: false, 
	  slideSpeed:2000,
	  pagination:false,
	  navigation:true,
	  addClassActive:true,
      items : 5,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
      itemsDesktop : [1199,4],
	  itemsDesktopSmall : [980,3],
	  itemsTablet: [768,2],
	  itemsMobile : [479,1],
  });
  
  /* Tablet Carousel 3 */
  $("#tablet-carousel-3").owlCarousel({
      autoPlay: false, 
	  slideSpeed:2000,
	  pagination:false,
	  navigation:true,
	  addClassActive:true,
      items : 4,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
      itemsDesktop : [1199,4],
	  itemsDesktopSmall : [980,3],
	  itemsTablet: [768,2],
	  itemsMobile : [479,1],
  });
  
  /* Timer Product Carousel */
  $("#timer-product-carousel").owlCarousel({
      autoPlay: false, 
	  slideSpeed:2000,
	  pagination:false,
	  navigation:true,
	  addClassActive:true,
      items : 5,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
      itemsDesktop : [1199,1],
	  itemsDesktopSmall : [980,2],
	  itemsTablet: [768,2],
	  itemsMobile : [479,1],
  });
  
  /* Client Carousel */
  $("#client-carousel").owlCarousel({
      autoPlay: false, 
	  slideSpeed:2000,
	  pagination:true,
	  navigation:false,
	  addClassActive:true,
      items : 1,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
      itemsDesktop : [1199,1],
	  itemsDesktopSmall : [980,1],
	  itemsTablet: [768,1],
	  itemsMobile : [479,1],
  });
  
  /* Blog Post Carousel */
  $("#blog-post-carousel").owlCarousel({
      autoPlay: false, 
	  slideSpeed:2000,
	  pagination:true,
	  navigation:false,
	  addClassActive:true,
      items : 1,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
      itemsDesktop : [1199,1],
	  itemsDesktopSmall : [980,1],
	  itemsTablet: [768,1],
	  itemsMobile : [479,1],
  });
  
  /* Logo Carousel */
  $("#logo-carousel").owlCarousel({
      autoPlay: false, 
	  slideSpeed:2000,
	  pagination:false,
	  navigation:false,
	  addClassActive:true,
      items : 4,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
      itemsDesktop : [1199,3],
	  itemsDesktopSmall : [980,3],
	  itemsTablet: [768,2],
	  itemsMobile : [479,1],
  });
  
  /* Single Product */
  $("#single-product").owlCarousel({
	  autoPlay: false, 
	  slideSpeed:2000,
	  pagination:false,
	  navigation:true,	  
	  items : 1,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
	  itemsDesktop : [1199,1],
	  itemsDesktopSmall : [980,1],
	  itemsTablet: [768,1],
	  itemsMobile : [479,1],
  });
  
  /* Releted Product */
  $("#related-products-carousel").owlCarousel({
	  autoPlay: false, 
	  slideSpeed:2000,
	  pagination:false,
	  navigation:true,	  
	  items : 5,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
	  itemsDesktop : [1199,4],
	  itemsDesktopSmall : [980,3],
	  itemsTablet: [768,2],
	  itemsMobile : [479,1],
  });
  
  /* Upsell Product */
  $("#upsell-products-carousel").owlCarousel({
	  autoPlay: false, 
	  slideSpeed:2000,
      pagination:false,
	  navigation:true,	  
	  items : 5,
	  /* transitionStyle : "fade", */    /* [This code for animation ] */
	  navigationText:["<i class='fa fa-angle-left'></i>","<i class='fa fa-angle-right'></i>"],
	  itemsDesktop : [1199,4],
	  itemsDesktopSmall : [980,3],
	  itemsTablet: [768,2],
	  itemsMobile : [479,1],
  });

/*----------------------------
 Countdown
------------------------------ */
	$('[data-countdown]').each(function() {
	  var $this = $(this), finalDate = $(this).data('countdown');
	  $this.countdown(finalDate, function(event) {
		$this.html(event.strftime('<span class="cdown days"><span class="time-count">%-D</span> <p>Days :</p></span> <span class="cdown hour"><span class="time-count">%-H</span> <p>Hour :</p></span> <span class="cdown minutes"><span class="time-count">%M</span> <p>Min :</p></span> <span class="cdown second"> <span><span class="time-count">%S</span> <p>Sec</p></span>'));
	  });
	});	

/*----------------------------
 price-slider active
------------------------------ */  
	  $( "#slider-range" ).slider({
	   range: true,
	   min: 99,
	   max: 700,
	   values: [ 99, 700 ],
	   slide: function( event, ui ) {
		$( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
	   }
	  });
	  $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
	   " - $" + $( "#slider-range" ).slider( "values", 1 ) );  
	   
/*----------------------------
  Simple Lence Active
------------------------------ */  
	$('#p-view .simpleLens-lens-image').simpleLens({
		loading_image: 'img/products/single-product/loading.gif'
	});
  
/*--------------------------
 scrollUp
---------------------------- */	
	$.scrollUp({
        scrollText: '<i class="fa fa-angle-up"></i>',
        easingType: 'linear',
        scrollSpeed: 900,
        animation: 'fade'
    }); 	

/*--------------------------
 collapse
---------------------------- */	
	$('.panel_heading a').on('click', function(){
		$('.panel_heading a').removeClass('active');
		$(this).addClass('active');
	})
 
}); 

/*santosh coding start here*/
$(document).ready(function(){
	$(document).on("submit","#contactForm",function(eventobj){
	
	var Emailregexp =/^([a-zA-Z0-9_.-])+@(([a-zA-Z0-9-])+.)+([a-zA-Z0-9]{2,4})+$/;
	var numberregexp = /^[0-9]*$/;
	var alpharegex = /^[(\s+)a-zA-Z]*$/;

	var flag = 0;
	document.getElementById('errName').innerHTML = "";
	document.getElementById('errEmail').innerHTML = " ";
	document.getElementById('errMobileNum').innerHTML = "";
	document.getElementById('errSubject').innerHTML = "";
	document.getElementById('errMessage').innerHTML = "";

	if($("#name").val() == "") {
		flag = 1
		document.getElementById('errName').innerHTML = "Please Enter Your Name";
	} else if(!alpharegex.test($("#name").val())) {
		flag = 1
		document.getElementById('errName').innerHTML = "Should have only alphabets";
	}
	
	if($("#emailId").val() == "") {
		flag = 1
		document.getElementById('errEmail').innerHTML = "Please Enter your EmailID";	
	} else if(!Emailregexp.test($("#emailId").val())) {
		flag = 1
		document.getElementById('errEmail').innerHTML = "Please Enter Valid EmailID";	
	}

	if($("#mobileNumber").val() == "") {
		flag = 1
		document.getElementById('errMobileNum').innerHTML = "Please Enter your Mobile Number";	
	} else if(!numberregexp.test($("#mobileNumber").val())) {
		flag = 1
		document.getElementById('errMobileNum').innerHTML = "Should have only Numbers";	
	} else if($("#mobileNumber").val().length < 10 || $("#mobileNumber").val().length > 10) {
		flag = 1
		document.getElementById('errMobileNum').innerHTML = "Mobile NUmber should be 10 digits";	
	}
	
	if($("#subject").val() == "") {
		flag = 1
		document.getElementById('errSubject').innerHTML = "Please Enter your Subject";	
	}
	
	if($("#message").val() == "") {
		flag = 1
		document.getElementById('errMessage').innerHTML = "Please Enter your Message";	
	}

	if(flag == 0) {
		$.ajax({
			  url : location.pathname,
			  data : $('#contactForm').serialize(),
			  type : "POST",
			  async : false,
			  success : function(result) {
				  alert(result);	
				  if(result.match("success")) {		 
					  $('#contactForm').html("<p>Thank You for Contacting Us, Will get back to you soon!</p>");
				  }
			  }
		});
	}
	stopExecution(eventobj);
});

});



function stopExecution(eventobj){
    if(eventobj.preventDefault) {
        //IE 9 AND LATER//
        eventobj.preventDefault();
    } else {
        //IE PRIOR TO 9//
        window.event.returnValue = false;
    }
}


