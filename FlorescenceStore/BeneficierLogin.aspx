<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BeneficierLogin.aspx.cs" Inherits="FlorescenceStore.BeneficierLogin" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <asp:Label ID="lblName" Text="Welcome " runat="server" Font-Size="40"></asp:Label>
    </div>
    <div style="padding-left: 500px">
        <table>  
            <tr>  
                <td colspan="6" style="text-align: center; vertical-align: bottom">  
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Flowers Distributors"></asp:Label>  
                </td>  
            </tr> 
            <tr>  
                <td> </td>  
                <td style="text-align: left">  
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Consumption :"></asp:Label>  
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
                    <asp:Label ID="lblCategory" runat="server" Font-Size="X-Large" Text="Products :"></asp:Label>  
                </td>  
                <td style="align-content: center">  
                    <asp:DropDownList ID="ddlProducts" runat="server" Font-Size="X-Large" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True">Select</asp:ListItem>
                        <asp:ListItem Selected="False">Essential Oil</asp:ListItem>
                        <asp:ListItem Selected="False">Incense sticks</asp:ListItem>
                    </asp:DropDownList>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>
            <tr>  
                <td> </td>  
                <td style="text-align: left">  
                    <asp:Label ID="lblLocation" runat="server" Font-Size="X-Large" Text="Delivery Location :"></asp:Label>  
                </td>  
                <td style="text-align: left">  
                    <asp:TextBox ID="txtPickupLocation" runat="server" Font-Size="X-Large" placeholder="Delivery Location"></asp:TextBox>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>
            <tr>  
                <td> </td>  
                <td style="text-align: left">  
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Delivery Date (greater than Today) :"></asp:Label>  
                </td>  
                <td style="text-align: left">  
                    <asp:TextBox ID="txtDeliveryDate" runat="server" Font-Size="X-Large" placeholder="Date in dd/mm/yyyy"></asp:TextBox>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>
            <tr>  
                <td> </td>  
                <td> </td>  
                <td style="text-align: left">  
                    <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Font-Size="X-Large" OnClick="Button1_Click" Text="Submit" BackColor="#CCCCCC" Width="189px" />  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td> </td>  
                <td>  
                    <asp:Label ID="lblMessage" runat="server" Font-Size="X-Large"></asp:Label>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
        </table> 
    </div>
</asp:Content>
