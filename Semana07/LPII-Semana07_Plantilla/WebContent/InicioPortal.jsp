<%@page import="recursos.beans.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<meta name="robots" content="index, follow" />
<meta name="keywords" content="" />
<meta name="title" content="" />
<meta name="description" content="" />
<title>EStore</title>
<!-- ////////////////////////////////// -->
<!-- //      Start Stylesheets       // -->
<!-- ////////////////////////////////// -->
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/main.css" rel="stylesheet" type="text/css" />

<!-- ////////////////////////////////// -->
<!-- //      Javascript Files        // -->
<!-- ////////////////////////////////// -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript"
	src="js/Tuffy_500-Tuffy_700-Tuffy_italic_500.font.js"></script>
<script type="text/javascript">
	Cufon.replace('h1')('h1 a')('h2')('h3')('h4')('h5')('h6')('.desc')(
			'.slide-text')('.tagline')
</script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/jquery.cycle.all.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#slideshow').cycle({
			timeout : 9000, // milliseconds between slide transitions (0 to disable auto advance)
			fx : 'fade', // choose your transition type, ex: fade, scrollUp, shuffle, etc...            
			pager : '#pager', // selector for element to use as pager container
			pause : 0, // true to enable "pause on hover"
			pauseOnPagerHover : 0
		// true to pause when hovering over pager link
		});
	});
</script>
<script type="text/javascript">
	var $ = jQuery.noConflict();
	$(document).ready(function() {
		/* for top navigation */
		$(" #nav ul ").css({
			display : "none"
		}); // Opera Fix
		$(" #nav li").hover(function() {
			$(this).find('ul:first').css({
				visibility : "visible",
				display : "none"
			}).slideDown(400);
		}, function() {
			$(this).find('ul:first').css({
				visibility : "hidden"
			});
		});

	});
</script>
<!--[if IE 6]>
<script src="js/DD_belatedPNG.js"></script>
<script>
  DD_belatedPNG.fix('img, #navigation ul li a:hover, .but_read');
</script>
<![endif]-->
</head>

<body>
	<!-- BEGIN CONTAINER -->
	<div id="container">
		<!-- centercolumn -->
		<div id="centercolumn">
			<div id="top">
				<ul>
					<li class="store">Electronic Store Online</li>
					<li>+0123 456 789</li>
					<li>info@EStore.com</li>
				</ul>
			</div>
			<!-- end top-->

			<div id="box-cont-r">
				<div id="box-cont-t">
					<div id="box-cont-b">
						<div id="box-cont">

							<!-- BEGIN HEADER -->
							<div id="header">
								<div id="header-top">
									<div id="header-left">
										<div id="logo">
											<a href="index.html"><img src="images/logo.gif" alt="" /></a>
										</div>
										<!-- end logo -->
									</div>
									<!-- end header-left -->
									<div id="header-right">
										<div id="topsearch" class="tps-bussines">
											<form method="post" action="">
												<p>
													<span class="bg_input"><input type="text"
														name="search" value="search"
														onblur="if (this.value == ''){this.value = 'search'; }"
														onfocus="if (this.value == 'search') {this.value = ''; }"
														class="inputbox" /></span><input type="submit" value=""
														class="but" />
												</p>
											</form>
										</div>
										<!-- end topsearch -->
									</div>
									<!-- end header-right -->
								</div>
								<!-- end header top -->

								<div id="navigation">
									<ul id="nav">
										<li><a href="index.html">Home</a></li>
										<li><a href="#">Bussines Templates</a>
											<ul>
												<li><a href="index-bussines.html">Home</a></li>
												<li><a href="about.html">About</a></li>
												<li><a href="portfolio.html">Portfolio</a></li>
												<li><a href="blog.html">Blog</a></li>
												<li><a href="full-width.html">Full width</a></li>
												<li><a href="contact-bussines.html">Contact</a></li>
											</ul></li>
										<li><a href="#">Ecommerce Templates</a>
											<ul>
												<li><a href="index.html">Home</a></li>
												<li><a href="products.html">Products</a></li>
												<li><a href="products-details.html">Products
														Details</a></li>
												<li><a href="category.html">Category</a></li>
												<li><a href="contact.html">Contact Us</a></li>
												<li><a href="shopping-cart.html">Checkout</a></li>
												<li><a href="shipping.html">Shipping &amp; Returns</a></li>
												<li><a href="sidebar-right.html">Sidebar Right</a></li>
											</ul></li>
									</ul>
								</div>
								<!-- end navigation -->

							</div>
							<!-- end header -->
							<div class="clr"></div>

							<table align="center" >
								<TR>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</TR>
								<TR>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</TR>
								<TR>
									<%
										BeanUsuario bean = (BeanUsuario) session
												.getAttribute("usuario_logeado");
									%>
									<td>&nbsp;</td>
									<td >Bienvenido Sr(a): <%=bean.getApellido()%>, <%=bean.getNombre()%></td>
								</TR>
							</table>

							<!-- BEGIN SLIDER -->
							<div id="slider_container">
								<div id="slideshow">
									<div class="cycle">
										<div class="slide-text">
											<p class="title">Online Store</p>
											<p class="txt">Consectetur adipisicing elit, sed do
												eiusmod tempor incididunt ut labore et dolore magna aliqua.
											</p>
										</div>
										<img src="images/slider1.jpg" alt="" class="slide_image" />

									</div>
									<!-- end of cycle1 -->

									<div class="cycle">
										<div class="slide-text">
											<p class="title">Donec egestas</p>
											<p class="txt">Vestibulum ante ipsum primis in faucibus
												orci luctus vel tortor eu arcu condimentum varius.</p>
										</div>
										<img src="images/slider2.jpg" alt="" class="slide_image" />

									</div>
									<!-- end of cycle2 -->

									<div class="cycle">
										<div class="slide-text">
											<p class="title">Sed tempus</p>
											<p class="txt">Donec vehicula eros at diam porttitor
												dapibus commodo ipsum sollicitudin.</p>
										</div>
										<img src="images/slider3.jpg" alt="" class="slide_image" />

									</div>
									<!-- end of cycle3 -->

									<div class="cycle">
										<div class="slide-text">
											<p class="title">Proin magna</p>
											<p class="txt">Suspendisse ultricies ante sed purus
												pellentesque ut eleifend lacus eleifend.</p>
										</div>
										<img src="images/slider4.jpg" alt="" class="slide_image" />

									</div>
									<!-- end of cycle4 -->

								</div>
							</div>
							<!-- end slider_container -->


							<!-- BEGIN CONTAINER -->
							<div id="main_content">
								<div id="content_full">
									<div class="tagline">
										<h1>We deliver the best corporate business template with
											great support to you and your client...</h1>
										<hr />
									</div>
									<div id="main-box">
										<div class="box-buss">
											<div class="box_small_r">
												<div class="box_small_b">
													<div class="box_small_t">
														<div class="box_small">
															<img src="images/h-1.jpg" alt="" />
														</div>
													</div>
												</div>
											</div>
											<!-- end prodbox_long -->
											<div class="text-buss">
												<h2>Lorem Ipsum</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ut enim ad minim veniam, quis nostrud
													exercitation.Ullamco laboris nisi ut aliquip ex ea commodo
												</p>
												<div class="but_read">
													<a href="#">Read More</a>
												</div>
											</div>
										</div>

										<div class="box-buss">
											<div class="box_small_r">
												<div class="box_small_b">
													<div class="box_small_t">
														<div class="box_small">
															<img src="images/h-2.jpg" alt="" />
														</div>
													</div>
												</div>
											</div>
											<!-- end prodbox_long -->
											<div class="text-buss">
												<h2>Lorem Ipsum</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ut enim ad minim veniam, quis nostrud
													exercitation.Ullamco laboris nisi ut aliquip ex ea commodo
												</p>
												<div class="but_read">
													<a href="#">Read More</a>
												</div>
											</div>
										</div>

										<div class="box-buss">
											<div class="box_small_r">
												<div class="box_small_b">
													<div class="box_small_t">
														<div class="box_small">
															<img src="images/h-3.jpg" alt="" />
														</div>
													</div>
												</div>
											</div>
											<!-- end prodbox_long -->
											<div class="text-buss">
												<h2>Lorem Ipsum</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ut enim ad minim veniam, quis nostrud
													exercitation.Ullamco laboris nisi ut aliquip ex ea commodo
												</p>
												<div class="but_read">
													<a href="#">Read More</a>
												</div>
											</div>
										</div>

										<div class="box-buss nomargin">
											<div class="box_small_r">
												<div class="box_small_b">
													<div class="box_small_t">
														<div class="box_small">
															<img src="images/h-4.jpg" alt="" />
														</div>
													</div>
												</div>
											</div>
											<!-- end prodbox_long -->
											<div class="text-buss">
												<h2>Lorem Ipsum</h2>
												<p>Lorem ipsum dolor sit amet, consectetur adipisicing
													elit. Ut enim ad minim veniam, quis nostrud
													exercitation.Ullamco laboris nisi ut aliquip ex ea commodo
												</p>
												<div class="but_read">
													<a href="#">Read More</a>
												</div>
											</div>
										</div>

									</div>

								</div>
								<!-- end content -->
							</div>
							<!-- end main_content -->
							<div class="clr"></div>
						</div>
					</div>
					<!-- end box-cont-t -->
				</div>
				<!-- end box-cont-b -->
			</div>
			<!-- end box-cont-r -->


			<!-- BEGIN FOOTER -->
			<div id="footer">
				<div id="fot-left">
					<div id="news">
						<p>Join our newsletter</p>
						<form method="post" action="">
							<p>
								<span class="bg_input"><input type="text" name="search"
									class="inputbox" /></span><input type="submit" value="" class="but" />
							</p>
						</form>
					</div>

					<ul class="fot-nav">
						<li class="noborder"><a href="index.html">Home</a></li>
						<li><a href="products.html">Products</a></li>
						<li><a href="shopping-cart.html">My Account</a></li>
						<li><a href="contact.html">Contact Us</a></li>
						<li><a href="shopping-cart.html">Checkout</a></li>
					</ul>
					Copyright &copy; 2010 EStore &nbsp; | &nbsp; <a href="privacy.html">Privacy
						Notice</a> &nbsp; | &nbsp; <a href="conditions.html">Conditions of
						Use</a>
				</div>
				<div id="fot-right">
					<ul class="social">
						<li><a href="#"><img src="images/rss.gif" alt="" /></a></li>
						<li><a href="#"><img src="images/twitter.gif" alt="" /></a></li>
						<li><a href="#"><img src="images/facebook.gif" alt="" /></a></li>
					</ul>
				</div>
				<div class="clr">&nbsp;</div>

			</div>
			<!-- end footer -->

		</div>
		<!-- end centercolumn -->
	</div>
	<!-- END OF CONTAINER -->
</body>
</html>
