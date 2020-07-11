<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Display1.aspx.cs" Inherits="CarSales.Display1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Display Product</title>
    <link href="css1/style.css" rel='stylesheet' type='text/css' />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="shortcut icon" type="image/x-icon" href="images1/fav-icon.png" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

    <!----webfonts---->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css' />
    <!----//webfonts---->
    <!---start-click-drop-down-menu----->
    <script src="js1/jquery.min.js"></script>

    <!--w3 school-->
    <style>
        #customers {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
       
            #customers td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }



            #customers td:hover {
                background-color: #ddd;
            }

            #customers th {
                padding-top: 12px;
                
                padding-bottom: 12px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }
    </style>
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
         <div style="margin-top:180px"></div>
        <!--above navbar from purchase.aspx-->

        <div class="content">
            <div class="wrap">
                <div class="single-page">
                    <div class="single-page-artical" ">
                        <div class="artical-content">
                            <!--<img src="images1/single-post-pic.jpg" title="banner1">
  -->                          <asp:Image ID="Image1" runat="server" /><br />
                            <br />
                            <br />
                            <h1><center>Details</center></h1><br />
                            <!-- <h3><a href="#">incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam</a></h3> -->

                            
    

                            <!--w3 school table-->
                            <table id="customers">
                                <tr>
                                    <th>Seller ID </th>
                                    <td><asp:Label ID="TextBox1" runat="server" ></asp:Label><!--sellerid--></td>
                                    <th>Token </th>
                                    <td><asp:Label ID="Label12" runat="server"></asp:Label> </td>
                                </tr>
                                <tr >
                                    <th>Type</th>
                                    <td> <asp:Label ID="Label8" runat="server"></asp:Label></td>
                                    
                                    <th>KM Driven</th>
                                    <td><asp:Label ID="Label1" runat="server"></asp:Label> </td>
                                </tr>
                                <tr>
                                    <th>Brand</th>
                                    <td><asp:Label ID="Label6" runat="server"></asp:Label> </td>

                                    <th>Model</th>
                                    <td><asp:Label ID="TextBox2" runat="server"></asp:Label></td>
                                </tr>
                                <tr>
                                    <th> Registration Year   </th>
                                    <td> <asp:Label ID="Label7" runat="server"></asp:Label>    </td>

                                    <th>  Fuel  </th>
                                    <td>  <asp:Label ID="Label9" runat="server"></asp:Label>  </td>
                                </tr>
                                <tr>
                                    <th> Description   </th>
                                    <td> <asp:Label ID="Label10" runat="server"></asp:Label>    </td>

                                    <th>  Price  </th>
                                    <td>  <asp:Label ID="Label11" runat="server"></asp:Label>   </td>
                                </tr>
                              
                            </table>
                            <!--table ends here-->

                            <asp:Button id="Button1" style="margin-left:40%"  runat="server" CssClass="button" onclick="Button1_Click" text="Transfer Token Amount" onclientclick="return confirm('Do you want to transfer your money?');" xmlns:asp="#unknown" />
        <asp:Label ID="Label2" runat="server"></asp:Label> <br />  <!--error message--->
        <asp:Label ID="Label3" runat="server"></asp:Label><br />  <!--Seller Mobile NO--->
        <asp:Label ID="Label4" runat="server"></asp:Label>  <br /><!--Seller Wallet--->
                            <asp:Label ID="Label5" runat="server"></asp:Label> <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>

      
             <!--User Wallet--->
        
        <br />
        <br />
 
        <br />
        
    </form>
</body>
</html>
