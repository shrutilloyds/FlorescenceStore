<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Beneficiers.aspx.cs" Inherits="FlorescenceStore.Beneficiers" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div style="alignment: center;padding-top: 40px; padding-bottom: 40px;">
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 534px; background: white">
            <HeaderStyle BackColor="#FF99CC" BorderStyle="Solid" Font-Bold="True" />
        </asp:GridView>
    </div>
</asp:Content>
