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
            
            <tr>
                <td><asp:Label runat="server" Text="Data Between"/></td>
                <td><asp:Calendar runat="server" ID="calender2"/><br/></td>
                <td><asp:Label runat="server" Text="and"/></td>
                <td><asp:Calendar runat="server" ID="Calendar3"/><br/></td>

            </tr>
            
            

        </table>
        
        
        <asp:GridView runat="server" ID="diseaseWiseReport" AutoGenerateColumns="False">
            
            <Columns>
                

                <asp:BoundField DataField="Name" HeaderText="Disease Name" SortExpression="Name" />
                <asp:BoundField DataField="TotalPatients" HeaderText="Total Patients" SortExpression="TotalPatients" />
                <asp:BoundField DataField="OverPopulation" HeaderText="% Over Population" SortExpression="OverPopulation" />
                

            </Columns>

        </asp:GridView>


    </asp:Panel>
    
    
    

</asp:Content>
