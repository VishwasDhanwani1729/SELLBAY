<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="CarSales.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Pinball Website Template | Contact :: w3layouts</title>
		<link href="css1/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="shortcut icon" type="image/x-icon" href="images1/fav-icon.png" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		<!----webfonts---->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		<!----//webfonts---->
		<!---start-click-drop-down-menu----->
		<script src="js1/jquery.min.js"></script>
        <!----start-dropdown--->
         <!-- <script type="text/javascript">
			var $ = jQuery.noConflict();
				$(function() {
					$('#activator').click(function(){
						$('#box').animate({'top':'0px'},500);
					});
					$('#boxclose').click(function(){
					$('#box').animate({'top':'-700px'},500);
					});
				});
				$(document).ready(function(){
				//Hide (Collapse) the toggle containers on load
				$(".toggle_container").hide(); 
				//Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
				$(".trigger").click(function(){
					$(this).toggleClass("active").next().slideToggle("slow");
						return false; //Prevent the browser jump to the link anchor
				});
									
			});
		</script> -->
        <!----//End-dropdown--->
</head>
<body>
    <form id="form1" runat="server">
    <!---start-wrap---->
			<!---start-header---->
			<div class="header">
				<div class="wrap">
				<!-- <div class="logo">
					<a href="index.html"><img src="images1/logo.png" title="pinbal" /></a>
				</div> -->
				<!-- <div class="nav-icon">
					 <a href="#" class="right_bt" id="activator"><span> </span> </a>
				</div> -->
				 <!-- <div class="box" id="box"> -->
					 <div class="box_content">        					                         
						<div class="box_content_center">
						 	<div class="form_content">
								<div class="menu_box_list">
									<ul>
										<li><a href="Home.aspx"><span>home</span></a></li>
										<li><a href="loginnew.aspx"><span>Admin</span></a></li>
										<li><a  href="Signup.aspx"><span>SignUp</span></a></li>
										<li ><a  href="Login.aspx"><span>Login</span></a></li>
										<li><a href="contact.aspx"><span>Contact Us</span></a></li>
										<li><a href="#"><span><asp:Button ID="logout" runat="server" OnClick="logout_Click" Text="Logout" Width="120px" CssClass="button"/></span></a></li>
										<div class="clear"> </div>
									</ul>
								</div>
								<!-- <a class="boxclose" id="boxclose"> <span> </span></a> -->
							</div>                                  
						</div> 	
					</div> 
				       	  
				<!-- <div class="top-searchbar">
					<form>
						<input type="text" /><input type="submit" value="" />
					</form>
				</div> -->
								<div class="clear"> </div>
			</div>
		</div>
		<!---//End-header---->
		<!---start-content---->
		<div class="content">
			<div class="wrap">
				<div class="contact-info">
					<div class="map">
					 	<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14715.638818507456!2d73.62735492739277!3d22.768732011313393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39609a63ff7431af%3A0xd2cbea11b2df2cc3!2sBamroli%20Road%20Area%2C%20Godhra%2C%20Gujarat%20389001!5e0!3m2!1sen!2sin!4v1589018476460!5m2!1sen!2sin" width="1170" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=Lighthouse+Point,+FL,+United+States&amp;aq=4&amp;oq=light&amp;sll=26.275636,-80.087265&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=Lighthouse+Point,+Broward,+Florida,+United+States&amp;t=m&amp;z=14&amp;ll=26.275636,-80.087265" style="color:#666;text-align:left;font-size:12px"></a></small>
					 </div>
					 <div class="contact-grids">
							 <div class="col_1_of_bottom span_1_of_first1">
								    <h5>Address</h5>
								    <ul class="list3">
										<li>
											<img src="images/home.png" alt="">
											<div class="extra-wrap">
											 <p>Adityanagar society<br>Bamroli Road,Godhra.</p>
											</div>
										</li>
									</ul>
							    </div>
								<div class="col_1_of_bottom span_1_of_first1">
								    <h5>Phones</h5>
									<ul class="list3">
										<li>
											   <img src="images1/phone.png" alt="">
											<div class="extra-wrap">
												<p><span>Telephone:</span>+917226020868</p>
											</div>
												<img src="images1/fax.png" alt="">
											<div class="extra-wrap">
												<p><span>FAX:</span>+917226020868</p>
											</div>
										</li>
									</ul>
								</div>
								<div class="col_1_of_bottom span_1_of_first1">
									 <h5>Email</h5>
								    <ul class="list3">
										<li>
											<img src="images1/email.png" alt="">
											<div class="extra-wrap">
											  <p><span class="mail"><a href="mailto:yoursite.com">Sellbuycomp@gmail.com</a></span></p>
											</div>
										</li>
									</ul>
							    </div>
								<div class="clear"></div>
							 </div>
							 	
								</div>
			</div>
		</div>
		<!----start-footer--->
		<div class="footer">
			<p>Design by <a href="http://w3layouts.com/">W3layouts</a></p>
		</div>
		<!----//End-footer--->
		<!---//End-wrap---->
    </form>
</body>
</html>
