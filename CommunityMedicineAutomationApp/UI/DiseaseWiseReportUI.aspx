<%@ Page Title="" Language="C#" MasterPageFile="~/UI/centerControl.Master" AutoEventWireup="true" CodeBehind="DiseaseWiseReportUI.aspx.cs" Inherits="CommunityMedicineAutomationApp.UI.DiseaseWiseReportUI" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Panel runat="server" ID="diseaseWiseReportPanel" GroupingText="Disease Wise Report" HorizontalAlign="Left">
        
        <table>
            <tr>
                
                <td><br/><br/></td>

            </tr>
            
            <tr>
                <td><asp:Label runat="server" Text="Select Disease"></asp:Label></td>
                <td><asp:DropDownList runat="server" ID="diseaseDropDownList" Width="220" AutoPostBack="True" /></td>
                <td><asp:Button runat="server" ID="showDiseaseReportButton" Text="Show" OnClick="showDiseaseReportButton_OnClick"/></td>
            </tr>

        </table>
        

    </asp:Panel>
    
    
    

</asp:Content>
