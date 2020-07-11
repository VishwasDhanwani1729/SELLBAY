<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="CarSales.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Login</title>
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
	<!-- Font-Awesome-Icons-CSS -->
	<!-- //css files -->

	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&amp;subset=devanagari,latin-ext"
	 rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server" action="#" method="post">
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
						<a href="SignUp.aspx">Sign Up</a>
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
				<h3>Welcome to Login Page</h3>
				<br />
				<br />
				<br />
				<br />
				<br />

	           
                
					<div class="form-style-agile">
						
						<div class="pom-agile">
							<span class="fas fa-envelope-open"></span>
							    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="E-mail"></asp:Label>
            <asp:TextBox ID="email" runat="server" Font-Size="Medium"  TextMode="Email"></asp:TextBox>
        
						</div>
					</div>
					<div class="form-style-agile">
						
						<div class="pom-agile">
							<span class="fas fa-key"></span>
							 <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" Text="Password"></asp:Label>
            <asp:TextBox ID="password" runat="server" TextMode="Password" ></asp:TextBox>
        
						</div>
					</div>
					
					<asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" OnClick="Button1_Click" Text="Login" />
                <asp:Label Text="" ID="Label4" runat="server" />
				<!-- social icons -->
				
				<!-- //social icons -->
                   
			</div>
		</div>
	</div>
    </form>
</body>
</html>
