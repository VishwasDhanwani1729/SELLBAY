<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Purchase2.aspx.cs" Inherits="CarSales.Purchase2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .templateTable
        {
            border-collapse: collapse;
            width: 100%;
        }
        .templateTable td
        {
            border: solid 1px #C2D4DA;
            padding: 6px;
        }
        .templateTable td.value
        {
            font-weight: bold;
        }
        .imageCell
        {
            width: 160px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <asp:GridView ID="grid" runat="server" GridLines="Horizontal" Height="1127px" Width="374px" AutoGenerateSelectButton="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" DataSourceID="SqlDataSource1"
        KeyFieldName="EmployeeID" EnableRowsCache="false">
        <Columns>
           <asp:BoundField DataField="VehicleID" HeaderText="VehicleID" />

        
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
           <templates>
            

                <div style="padding: 5px">
                    <table class="templateTable">
                        <tr>
                            <td class="imageCell" rowspan="4">
                                <dx:ASPxBinaryImage ID="ASPxBinaryImage1" runat="server" Value='<%# Eval("Photo") %>' />
                            </td>
                            <td>
                                First Name
                            </td>
                            <td class="value">
                                <asp:Label ID="lblFirstName" runat="server" Text='<%# Eval("FirstName") %>' />
                            </td>
                            <td>
                                Last Name
                            </td>
                            <td class="value">
                                <asp:Label ID="lblLastName" runat="server" Text='<%# Eval("LastName") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Title
                            </td>
                            <td class="value" colspan="3">
                                <asp:Label ID="lblTitle" runat="server" Text='<%# Eval("Title") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Birth Date
                            </td>
                            <td class="value">
                                <asp:Label ID="lblBirthDate" runat="server" Text='<%# Eval("BirthDate", "{0:d}") %>' />
                            </td>
                            <td>
                                Hire Date
                            </td>
                            <td class="value">
                                <asp:Label ID="lblHireDate" runat="server" Text='<%# Eval("HireDate", "{0:d}") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" style="vertical-align: top;">
                                <asp:Label ID="lblNotes" runat="server" Text='<%# Eval("Notes") %>' />
                            </td>
                        </tr>
                    </table>
                </div>
         
   </templates>
       </asp:GridView>
    </form>
</body>
</html>
