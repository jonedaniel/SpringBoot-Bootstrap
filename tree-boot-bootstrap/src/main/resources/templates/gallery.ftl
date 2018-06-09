<!DOCTYPE HTML>
<html>
<head>
<title>Gallery</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Blogger Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android  Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href='https://fonts.googleapis.com/css?family=Open+Sans:700,700italic,800,300,300italic,400italic,400,600,600italic' rel='stylesheet' type='text/css'>
<!--Custom-Theme-files-->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/lightbox.css" type="text/css" media="all" />
<script src="js/modernizr.custom.js"></script>
<script src="js/jquery.min.js"> </script>
<!--/script-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>

</head>
<body>
	<!-- header-section-starts -->
	<#include "common/home.ftl"/>
	<div class="full">
			<div class="col-md-3 top-nav gallery-sec">
				<#include "common/top-nav.ftl" />
			</div>
	<div class="col-md-9 main">
	  <!--grids-->
	   <div class="gallery-section">
	     <h3 class="tittle">Gallery <i class="glyphicon glyphicon-fullscreen"></i></h3>
         <div class="categorie-grids cs-style-1">
				 <div class="col-md-4 cate-grid grid">
					<figure>
						<img src="images/gen2.jpg" alt="">
						<figcaption>
							<h3>Blogger</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/gen2.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>
				 <div class="col-md-4 cate-grid grid">
					 <figure>
						<img src="images/gen1.jpg" alt="">
						<figcaption>
							<h3>Blogger</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/gen1.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>


				 <div class="col-md-4 cate-grid grid">
					 <figure>
						<img src="images/gen3.jpg" alt="">
						<figcaption>
							<h3>Blogger</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/gen3.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>

				 <div class="col-md-4 cate-grid grid">
					<figure>
						<img src="images/gen4.jpg" alt="">
						<figcaption>
							<h3>Blogger</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/gen4.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>

				 <div class="col-md-4 cate-grid grid">
					<figure>
						<img src="images/gen5.jpg" alt="">
						<figcaption>
							<h3>Blogger</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/gen5.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>

				 <div class="col-md-4 cate-grid grid">
					 <figure>
						<img src="images/gen6.jpg" alt="">
						<figcaption>
							<h3>Blogger</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/gen6.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>
				 				 <div class="col-md-4 cate-grid grid">
					<figure>
						<img src="images/gen1.jpg" alt="">
						<figcaption>
							<h3>Blogger</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/gen1.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>
				 <div class="col-md-4 cate-grid grid">
					 <figure>
						<img src="images/gen3.jpg" alt="">
						<figcaption>
							<h3>Blogger</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/gen3.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>


				 <div class="col-md-4 cate-grid grid">
					 <figure>
						<img src="images/gen2.jpg" alt="">
						<figcaption>
							<h3>Blogger</h3>
							<span>Accusantium Dolor</span>
							<a class="example-image-link" href="images/gen2.jpg" data-lightbox="example-1" data-title="Interior Design">VIEW</a>
						</figcaption>
					</figure>
				 </div>
 <script src="js/lightbox.js"></script>
			 <div class="clearfix"></div>
		 </div>
	 </div>
	<#include "common/footer.ftl"/>
	</div>
	<div class="clearfix"> </div>
</div>	
		<!--//footer-->
			<!--start-smooth-scrolling-->
						<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


</body>
</html>