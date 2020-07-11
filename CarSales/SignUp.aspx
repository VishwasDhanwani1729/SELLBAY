<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="CarSales.SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Sign Up</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
	<meta charset="UTF-8" />
	<meta name="keywords" content="Full Screen Enroll Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
	<script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
	</script>
	<!-- Meta tag Keywords -->
    <script src="https://kit.fontawesome.com/d2c08f0fc4.js" crossorigin="anonymous"></script>
	<!-- css files -->
	<link rel="stylesheet" href="style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<link rel="stylesheet" href="font-awesome.min.css"/>
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->

	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext"
	 rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
             <div class="main-w3ls">
		<div class="left-content">
			<div class="w3ls-content">
				<!-- logo -->
				<ul class="nav-w3ls">
						<li>
						<a href="Home.aspx">Home</a>
					</li>
					<li>
						<a href="loginnew.aspx">Admin</a>
					</li>
					<li>
						<a href="Login.aspx">Login</a>
					</li>
					<li>
						<a href="Contact.aspx">Contact Us</a>
					</li>
				</ul>
				<!-- //logo -->
				<h2>Sed do eiusmod tempor incidunut labore.</h2>
				<a href="#" class="button-w3ls">
					<span class="fa fa-long-arrow-right"></span>
				</a>
                
       
				
			</div>
			<!-- copyright -->
			
			<!-- //copyright -->
		</div>
		<div class="right-form-agile">
			<!-- content -->
			<div class="sub-main-w3">
				<h3>Signup Now</h3>
				<h5>Creating an account is free..</h5>
				<p>and won't take longer than a couple os seconds</p>
	            
                <div class="form-style-agile">
						
						<div class="pom-agile">
							<span class="fas fa-user"></span>
							<asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Name"></asp:Label>
            <asp:TextBox ID="name" runat="server" required=""></asp:TextBox>
        
						</div>
					</div>
					<div class="form-style-agile">
						
						<div class="pom-agile">
							<span class="fas fa-envelope-open"></span>
							    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="E-mail"></asp:Label>
            <asp:TextBox ID="email" runat="server" TextMode="Email" required=""></asp:TextBox>
        
						</div>
					</div>
					<div class="form-style-agile">
						
						<div class="pom-agile">
							<span class="fas fa-key"></span>
							 <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Password"></asp:Label>
            <asp:TextBox ID="password" runat="server" TextMode="Password" required=""></asp:TextBox>
        
						</div>
					</div>
					<div class="form-style-agile">
						
						<div class="pom-agile">
							<span><i class="fa fa-location-arrow" aria-hidden="true"></i></span>
							 <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Address"></asp:Label>
            <asp:TextBox ID="address" runat="server" Font-Size="Small" ></asp:TextBox>
           
        
						</div>
					</div>
					<div class="form-style-agile">
						
						<div class="pom-agile">
							<span><i class="fa fa-mobile" aria-hidden="true"></i></span>
							 <asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Mobile No"></asp:Label>
            <asp:TextBox ID="mnumber" runat="server"  ></asp:TextBox>

       
           
        
						</div>
					</div>
					
					<<asp:Button ID="Btn_signUp" runat="server" Font-Bold="True"   Text="Sign In"  OnClick="Btn_signUp_Click" />
			
				<!-- social icons -->
				
				<!-- //social icons -->
			</div>
		</div>
	</div>
	<!-- //content -->
    </form>
</body>
</html>
