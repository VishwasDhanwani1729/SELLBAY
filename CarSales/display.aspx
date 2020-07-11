<%@ Page Language="C#" AutoEventWireup="true" CodeFile="display.aspx.cs" Inherits="CarSales.display" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
  
        <asp:Image ID="Image1" Height="500px" Width="500px" runat="server" />
            <asp:Label ID="TextBox1" runat="server" ></asp:Label>
            <asp:Label ID="TextBox2" runat="server"></asp:Label>
       <asp:Label ID="Label2" runat="server"></asp:Label>   <!--error message--->
        <asp:Label ID="Label3" runat="server"></asp:Label>  <!--Seller Mobile NO--->
        <asp:Label ID="Label4" runat="server"></asp:Label>  <!--Seller Wallet--->
        <asp:Label ID="Label5" runat="server"></asp:Label>  <!--User Wallet--->
        
        <br />
        <br />
 
        <asp:Button id="Button1" runat="server" onclick="Button1_Click" text="Button" onclientclick="return confirm('Do you want to transfer your money?');" xmlns:asp="#unknown" />
        <br />
        <asp:Button ID="home" runat="server" OnClick="home_Click" Text="Home Page" />
    </form>
</body>
</html>
