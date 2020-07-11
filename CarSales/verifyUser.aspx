<%@ Page Language="C#" AutoEventWireup="true" CodeFile="verifyUser.aspx.cs" Inherits="CarSales.verifyUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="lbl_welcome" runat="server" ForeColor="Blue"></asp:Label>
            <br />
            <br />
            <asp:Label ID="lbl_press" runat="server" ForeColor="Blue"></asp:Label>
            <br />
            <asp:Button ID="btn_final" runat="server" Text="Click" OnClick="btn_final_Click"  />
    </form>
</body>
</html>
