<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Selling1.aspx.cs" Inherits="CarSales.Selling1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
    </style>
    <link href="css1/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<link rel="shortcut icon" type="image/x-icon" href="images1/fav-icon.png" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		
		<!----webfonts---->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'/>
		<!----//webfonts---->
		<!---start-click-drop-down-menu----->
		<script src="js1/jquery.min.js"></script>



	<!-- Meta tags -->

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Justify Consultation Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //Meta tags -->
<!-- font-awesome-icons -->
<link href="css2/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<!-- Stylesheet -->
<link href="css2/style.css" rel='stylesheet' type='text/css' />
<!-- //Stylesheet -->
<!--fonts--> 
<link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
<script src="https://kit.fontawesome.com/bcf7aedffe.js" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
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
                                    <li><a href="Purchase.aspx"><span>Home</span></a></li>
                                    <li><a href="Contact.aspx"><span>Contact Us</span></a></li>
                                    <li><a href="Selling1.aspx"><span>Sell?</span></a></li>
                                    <li><a href="#"><span><asp:Button ID="logout" runat="server" OnClick="logout_Click" Text="Logout" Width="120px" CssClass="button"/></span></a></li>
                                </ul>
                            </div>
                            <div class="userinfo" style="margin-top:30px">
                                <div class="user">
                                    <ul>
                                        <li><a href="#">
                                            <img src="images/user-pic.png" title="user-name" /><span><asp:Label ID="username" runat="server"></asp:Label>
                                                <br />
                                                <br />&nbsp;&nbsp;UID  &nbsp;&nbsp;&nbsp;:<asp:Label ID="uid" runat="server"></asp:Label>
                                                <br />&nbsp;&nbsp;Wallet :<asp:Label ID="wllt" runat="server"></asp:Label>
                                                                                               </span></a></li>
                                         
                                    </ul>
                                </div>
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
                <div class="clear"></div>
            </div>
        </div>
         <div style="margin-top:120px"></div>
        <!--above from purchase pagee--->

 
  <h1> <span>S</span>ELL <span>B</span>AY</h1>
    <div class="bg-agile">
	<div class="book-appointment">
	<h2>Sell  Your Vehicle Here</h2>
						<div class="book-form agileits-login">
							
								<div class="agileits_reservation_grid">
							
							

							<div class="span1_of_1">
										<!-- start_section_room -->
                                <br />
                                
										<label>Brand: </label>
										<div class="section_room">
											<!-- <i class="fa fa-gavel" aria-hidden="true"></i> -->
											<select id="brand" name="test" runat="server" onchange="change_country(this.value)" class="frm-field required">
												<option value=""></option>
												<option value="Tata">Tata</option>
												<option value="Toyota">Toyota</option>         
												<option value="Hyundai">Hyundai</option>
												<option value="Hayabusa">Hayabusa</option>
												<option value="Maruti">Maruti</option>
												<option value="Honda">Honda</option>
											</select>
										</div>	
									</div>


								<div class="phone_email phone_email1">
									<label>Model : </label>
									<div class="form-text">
										<!-- <i class="fa fa-envelope-o" aria-hidden="true"></i> -->
										<asp:TextBox ID="model" runat="server"></asp:TextBox>
									</div>
								</div>
								<div class="phone_email phone_email">
									<label>Km Driven : </label>
									<div class="form-text">
									<i class="fab fa-korvue"></i>
										<asp:TextBox ID="km" runat="server"></asp:TextBox>
									</div> 
								</div>
								<div class="phone_email">
									<label>Year of purchasing : </label>
									<div class="form-text">
										<i class="fas fa-calendar-week"></i>
										            <asp:TextBox ID="pyear" runat="server"></asp:TextBox>

									</div> 
								</div> 
								<!-- <div class="clear"></div>
									<div class="span1_of_1">
										<label>Date : </label> 
										<div class="book_date"> 
											<i class="fa fa-calendar" aria-hidden="true"></i>
												<input  id="datepicker" name="Text" type="text" value="" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'mm/dd/yyyy';}" required="">

										</div>					
									</div> -->
									
									<div class="span1_of_1">
										<label>Tell us something about your vehicle : </label>
										<!-- start_section_room -->
										<div class="form text">
											<!-- <i class="fa fa-users" aria-hidden="true"></i> -->
											
											<asp:TextBox ID="describe" runat="server"></asp:TextBox>
										</div>	
									</div> 
									<div class="clear"></div>
								</div> 
												<div class="wthree-text"> 
												<h6>Type</h6>
													<asp:RadioButton ID="twoWheeler" Text="2 Wheeler" runat="server" GroupName="wheels"/>
													<asp:RadioButton ID="fourWheeler" Text="4 Wheeler" runat="server" GroupName="wheels"/>
													<div class="clear"></div>

													
												<h6>Fuel type</h6>
													<asp:RadioButton ID="Fpetrol" Text="Petrol" runat="server" GroupName="fuel"/>
													<asp:RadioButton ID="Fdiesel" Text="Diesel" runat="server" GroupName="fuel"/>
													<div class="clear"></div>
													

												
												<div class="phone_email">
                                                    <br />
									<label>Upload photo: </label>
									<div class="form-text">
										<!-- <i class="fa fa-user" aria-hidden="true"></i> -->
										<asp:FileUpload ID="vehiclephotos"  runat="server" />
									</div> 
								</div>
                                                    <br />
								<div class="phone_email">
									<label>Expected price : </label>
									<div class="form-text">
									<!-- <i class="fab fa-korvue"></i> -->
										<asp:TextBox ID="price" runat="server"></asp:TextBox>
									</div> 
								</div><!-- <ul>
													<li>
														<label class="anim">
															<input type="checkbox" class="checkbox">
															<span>Morning</span> 
														</label> 
													</li>
													<li>
														<label class="anim">
															<input type="checkbox" class="checkbox">
															<span>Afternoon</span> 
														</label> 
													</li>
												</ul>
												<div class="clear"> </div> -->
											</div>
											<div class="clear"> </div>	
								<asp:Button ID="submit" runat="server" Text="SELL IT" OnClick="submit_Click" />
						</div>

		</div>
   </div>
  <!--copyright-->
	
<!--//copyright-->
		<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
		<!-- Calendar -->
				<link rel="stylesheet" href="css/jquery-ui.css" />
				<script src="js/jquery-ui.js"></script>
				  <script>
						  $(function() {
							$( "#datepicker,#datepicker1,#datepicker2,#datepicker3" ).datepicker();
						  });
				  </script>
			<!-- //Calendar -->
       
    </form>
</body>
</html>
