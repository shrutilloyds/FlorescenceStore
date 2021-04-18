<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChartForm.aspx.cs" Inherits="FlorescenceStore.ChartForm" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="padding-left: 600px; padding-top: 30px;">
        <asp:Chart ID="Chart1" runat="server" BackColor="0, 0, 64" BackGradientStyle="LeftRight"  
                   BorderlineWidth="0" Height="320px" Palette="None" PaletteCustomColors="Maroon"  
                   Width="380px" BorderlineColor="64, 0, 64">  
            <Titles>  
                <asp:Title ShadowOffset="10" Name="Items" />  
            </Titles>  
            <Legends>  
                <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="False" Name="Default"  
                            LegendStyle="Row" />  
            </Legends>  
            <Series>  
                <asp:Series Name="Default" />  
            </Series>  
            <ChartAreas>  
                <asp:ChartArea Name="ChartArea1" BorderWidth="0" />  
            </ChartAreas>  
        </asp:Chart>
    </div>
</asp:Content>
