<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="FlorescenceStore.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div style="padding-left: 500px">
        <table style="height: 316px; width: 524px">  
            <tr>  
                <td colspan="6" style="text-align: center; vertical-align: bottom">  
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Log In "></asp:Label>  
                </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td style="text-align: left">  
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="UserId :"></asp:Label>  
                </td>  
                <td style="text-align: left">  
                    <asp:TextBox ID="TextBox1" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td style="text-align: left">  
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Password :"></asp:Label>  
                </td>  
                <td style="text-align: left">  
                    <asp:TextBox ID="TextBox2" runat="server" Font-Size="X-Large" TextMode="Password"></asp:TextBox>  
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
                        <asp:ListItem Selected="True">Supplier</asp:ListItem>
                        <asp:ListItem Selected="False">Distributor</asp:ListItem>
                    </asp:RadioButtonList>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>
            <tr>  
                <td> </td>  
                <td> </td>  
                <td style="text-align: left">  
                    <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Font-Size="X-Large" OnClick="Button1_Click" BackColor="#CCCCCC" Text="Log In" />  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td style="height: 15px"> </td>  
                <td style="height: 15px"> </td>  
                <td style="height: 15px">  
                    <asp:Label ID="Label4" runat="server" Font-Size="X-Large"></asp:Label>  
                </td>  
                <td style="height: 15px"> </td>  
                <td style="height: 15px"> </td>  
                <td style="height: 15px"> </td>  
            </tr>  
        </table> 
    </div>
    
</asp:Content>
