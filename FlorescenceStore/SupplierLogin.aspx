<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SupplierLogin.aspx.cs" Inherits="FlorescenceStore.SupplierLogin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Label ID="lblName" Text="Welcome " runat="server" Font-Size="40"></asp:Label>
    </div>
    <div style="padding-left: 500px">
        <table>  
            <tr>  
                <td colspan="6" style="text-align: center; vertical-align: bottom">  
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Donate Flowers"></asp:Label>  
                </td>  
            </tr> 
            <tr>  
                <td> </td>  
                <td style="text-align: left">  
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Quantity :"></asp:Label>  
                </td>  
                <td style="text-align: left">  
                    <asp:TextBox ID="txtQuantity" runat="server" Font-Size="X-Large" placeholder="in Kg"></asp:TextBox>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>
            <tr>  
                <td> </td>  
                <td style="text-align: left">  
                    <asp:Label ID="lblCategory" runat="server" Font-Size="X-Large" Text="Category :"></asp:Label>  
                </td>  
                <td style="align-content: center">  
                    <asp:RadioButtonList ID="rblCategory" runat="server" Font-Size="X-Large" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">Dry</asp:ListItem>
                        <asp:ListItem Selected="False">Wet</asp:ListItem>
                    </asp:RadioButtonList>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>
            <tr>  
                <td> </td>  
                <td style="text-align: left">  
                    <asp:Label ID="lblLocation" runat="server" Font-Size="X-Large" Text="Pickup Location :"></asp:Label>  
                </td>  
                <td style="text-align: left">  
                    <asp:TextBox ID="txtPickupLocation" runat="server" Font-Size="X-Large" placeholder="Pickup Location"></asp:TextBox>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>
            <tr>  
                <td> </td>  
                <td> </td>  
                <td style="text-align: left">  
                    <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Font-Size="X-Large" OnClick="Button1_Click" Text="Donate" BackColor="#CCCCCC" Width="189px" />  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblMessage" runat="server" Font-Size="X-Large" ForeColor="blue"></asp:Label>
                </td>
                
            </tr>  
        </table> 
    </div>
</asp:Content>
