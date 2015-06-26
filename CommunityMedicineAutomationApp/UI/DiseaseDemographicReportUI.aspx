<%@ Page Title="" Language="C#" MasterPageFile="~/UI/centralControl.Master" AutoEventWireup="true" CodeBehind="DiseaseDemographicReportUI.aspx.cs" Inherits="CommunityMedicineAutomationApp.UI.DiseaseDemographicReportUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Panel runat="server" GroupingText="Disease Demographic Report">
        
        <table>
            <tr>
                <td><br/></td>
            </tr>
            
            <tr>
                
                <td><asp:Label runat="server" Text="From"></asp:Label></td>
                <td><asp:Calendar runat="server" ID="fromCalendar" AutoPostBack="True" Width="220"/></td>
                 <td><asp:Label runat="server" Text="To"></asp:Label></td>
                <td><asp:Calendar runat="server" ID="toCalendar" AutoPostBack="True" Width="220"/></td>

            </tr>
            
            
            <tr>
                <td><asp:Label runat="server" Text="Disease"></asp:Label></td>
                <td><asp:DropDownList runat="server" ID="diseaseDropDownList" AutoPostBack="True" Width="220" /></td>
                <td><asp:Button runat="server" ID="showDemographicReportButton" Text="Show" OnClick="showDemographicReportButton_OnClick"/></td>
            </tr>


        </table>
        

    </asp:Panel>

</asp:Content>
