<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="FlorescenceStore.Registration" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <div style="padding-left: 500px;padding-top: 40px; padding-bottom: 40px;">
        <table>  
            <tr>  
                <td colspan="6" style="text-align: center; vertical-align: bottom">  
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="Sign Up"></asp:Label>  
                </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td style="text-align: left">  
                    <asp:Label ID="Label2" runat="server" Font-Size="X-Large" Text="Full Name :"></asp:Label>  
                </td>  
                <td style="text-align: left">  
                    <asp:TextBox ID="txtFullName" placeholder="Enter Full Name" runat="server" Font-Size="X-Large"></asp:TextBox>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td style="text-align: left">  
                    <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="Email :"></asp:Label>  
                </td>  
                <td style="text-align: left">  
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter EmailId" Font-Size="X-Large"></asp:TextBox>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>
            <tr>  
                <td> </td>  
                <td style="text-align: left">  
                    <asp:Label ID="psw" runat="server" Font-Size="X-Large" Text="Password :"></asp:Label>  
                </td>  
                <td style="text-align: left">  
                    <asp:TextBox ID="txtPsw" runat="server" placeholder="Enter Password" TextMode="Password" Font-Size="X-Large"></asp:TextBox>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>
            <tr>  
                <td> </td>  
                <td style="text-align: left">  
                    <asp:Label ID="lblRepeat" runat="server" Font-Size="X-Large" Text="Repeat Password :"></asp:Label>  
                </td>  
                <td style="text-align: left">  
                    <asp:TextBox ID="txtPswRepeat" runat="server" placeholder="Re-Enter Password" TextMode="Password" Font-Size="X-Large"></asp:TextBox>  
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
                    <asp:Button ID="Button1" runat="server" BorderStyle="Solid" Font-Size="X-Large" BackColor="#CCCCCC" OnClick="Button1_Click" Text="Register" />  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
            <tr>  
                <td> </td>  
                <td> </td>  
                <td>  
                    <asp:Label ID="Response" runat="server" Font-Size="X-Large"></asp:Label>  
                </td>  
                <td> </td>  
                <td> </td>  
                <td> </td>  
            </tr>  
        </table>
    </div>

    <div >
        <p style="font-size: large; font-weight: bold; color: black;">Already have an account? <a style="color: black" href="Login.aspx">Log in</a>.</p>
    </div>
</asp:Content>
