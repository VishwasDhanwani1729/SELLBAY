<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pur.aspx.cs" Inherits="CarSales.Pur" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        HII
        <asp:Label ID="username" runat="server"></asp:Label>
        <br />
        UID :
        <asp:Label ID="uid" runat="server"></asp:Label>
        <br />
        Wallet :
        <asp:Label ID="wllt" runat="server"></asp:Label>
        <br />

        <br />
        <asp:Button ID="sell" runat="server" OnClick="sell_Click" Text="Sell?" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="logout" runat="server" OnClick="logout_Click" Text="Logout" Width="71px" />
        <br />
        <br />
        <br />
   <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="1127px" Width="374px" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" DataSourceID="SqlDataSource1">
    <Columns>

        
        <asp:BoundField DataField="SellerID" HeaderText="SellerID" SortExpression="SellerID" />
        <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
        <asp:TemplateField HeaderText="Photo">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="250px" Width="250px"
                    ImageUrl='<%# "data:Image/png;base64,"
                    + Convert.ToBase64String((byte[])Eval("photo")) %>' />
            </ItemTemplate>
        </asp:TemplateField>
        
    </Columns>
       <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
       <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
       <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
       <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
       <SortedAscendingCellStyle BackColor="#F7F7F7" />
       <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
       <SortedDescendingCellStyle BackColor="#E5E5E5" />
       <SortedDescendingHeaderStyle BackColor="#242121" />
</asp:GridView>
 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Db %>" SelectCommand="SELECT [SellerID], [model], [price], [photo] FROM [VehicleForSale]"></asp:SqlDataSource>
 
    </form>
</body>
</html>
