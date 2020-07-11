<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Purchase.aspx.cs" Inherits="CarSales.Purchase" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Purchase</title>
    <link href="css1/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1"/>
		<link rel="shortcut icon" type="image/x-icon" href="images1/fav-icon.png" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		
		<!----webfonts---->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'/>
		<!----//webfonts---->
		<!---start-click-drop-down-menu----->
		<script src="js1/jquery.min.js"></script>
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

        <div style="margin-top:70px"></div>
     
       
        <br />
       
        <br />

        <br />
 
        
        <br />
        <br />
        <br />
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="198px" Width="100%" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" DataSourceID="SqlDataSource1">
       <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
    <Columns>

        
        <asp:BoundField DataField="VehicleID" HeaderText="VehicleID" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"/>

        
        <asp:BoundField DataField="SellerID" HeaderText="SellerID" SortExpression="SellerID" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"/>
        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center"/>
        <asp:TemplateField HeaderText="Photo" >
            <ItemTemplate>
                 <center> 
                <asp:Image ID="Image1" runat="server" Height="250px" Width="300px"
                    ImageUrl='<%# "data:Image/png;base64,"
                    + Convert.ToBase64String((byte[])Eval("photo")) %>' />
                  </center> 
            </ItemTemplate>
        </asp:TemplateField>
        
    </Columns>
       <EditRowStyle BackColor="#999999" />
       <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
       <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
       <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
       <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
       <SelectedRowStyle BackColor="blue" Font-Bold="True" ForeColor="#333333"  CssClass="post-basic-info"/>
       <SortedAscendingCellStyle BackColor="#E9E7E2" />
       <SortedAscendingHeaderStyle BackColor="#506C8C" />
       <SortedDescendingCellStyle BackColor="#FFFDF8" />
       <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db %>" SelectCommand="SELECT [SellerID], [model], [price], [photo], [VehicleID] FROM [VehicleForSale] WHERE ([status] = @status)">
            <SelectParameters>
                <asp:Parameter DefaultValue="pending" Name="status" Type="String"  />
            </SelectParameters>
        </asp:SqlDataSource>

    </form>
</body>
</html>
