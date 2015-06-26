<%@ Page Title="" Language="C#" MasterPageFile="~/UI/centralControl.Master" AutoEventWireup="true" CodeBehind="TreatmentGivenUI.aspx.cs" Inherits="CommunityMedicineAutomationApp.UI.PatientsRegistrationUI" %>


<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    </asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="../Scripts/jquery-1.6.4.min.js"></script>
    <script src="../Scripts/jquery-ui-1.11.4.min.js"></script>

    <asp:Panel runat="server" ID="treatmentGivenPanel" GroupingText="Treatment" HorizontalAlign="Left">
        
        <table>
            <tr>
                <td>
                    <br/>
                    <br/>
                </td>
            </tr>
            <tr>
                <td><asp:Label runat="server" ID="label1" Text="Voter Id" Height="30"/></td>
                <td><asp:TextBox runat="server" ID="voterIdTextBox" Width="220px"/>&nbsp;&nbsp;</td>
                <td><asp:Button runat="server" ID="showDetailsButton" OnClick="showDetailsButton_OnClick"  Width="120" Text="Show Details"/><br/><br/></td>

            </tr>
            
            <tr>
                <td><asp:Label runat="server" ID="label2" Text="Name"/></td>
                <td><asp:TextBox runat="server" ID="nameTextBox" Width="220px" Height="30" />&nbsp;  </td>
         

            </tr>
            
            <tr>
                <td><asp:Label runat="server" ID="label3" Text="Address"/></td>
                <td><asp:TextBox runat="server" ID="addressTextBox" Width="220px"/>&nbsp;&nbsp;<br/><br/> </td>
              

            </tr>
            
            
            <tr>
                <td><asp:Label runat="server" ID="label4" Text="Age"/></td>
                <td><asp:TextBox runat="server" ID="ageTextBox" Width="220px"/>&nbsp;&nbsp;<br/><br/> </td>
             
                

            </tr>
            
            
            <tr>
                <td><asp:Label runat="server" ID="label5" Text="Service Given" Width="120"/></td>
                <td><asp:TextBox runat="server" ID="noofserviceTextBox" Width="218px"/>&nbsp;&nbsp;</td>
                <td><asp:Label runat="server" ID="label6" Text="times"/> <br/><br/> </td>
             
            </tr>
            <tr>
                <td></td>

            </tr>
            </table>
        
        <asp:Button runat="server" ID="showAllHistoryButton" Width="120" Text="Show All History" OnClick="showAllHistoryButton_Click"/>
        <table>

            <tr>
                <td>Observation</td>
                <td><asp:TextBox runat="server" ID="observationTextBox" TextMode="MultiLine" Width="220px"></asp:TextBox></td>
                <td><asp:Label runat="server" Text="Date"/></td>
                <td><asp:TextBox runat="server" ID="dateTextBox" Text="Select a date" Width="220" /></td>
                <td><asp:Label runat="server" Text="Doctor"/></td>
                <td><asp:DropDownList runat="server" ID="doctornameDropDownList" AutoPostBack="True" Width="220"/></td>

            
            </tr>
            
            <tr>
                   <td> </td>
                   <td> </td>
                   <td> </td>
                   <td> </td>
                    <td> </td>
                   <td> </td>
            </tr>

            <tr>
                <td><asp:Label runat="server" Text="Disease"></asp:Label></td>
                <td><asp:DropDownList runat="server" ID="diseaseDropDownList" AutoPostBack="True" Width="220"/>&nbsp;&nbsp;</td>
                <td><asp:Label runat="server" Text="Medicine"/></td> 
                <td><asp:DropDownList runat="server" ID="medicineDropDownList" AutoPostBack="True" Width="220"/>&nbsp;&nbsp;</td>
                <td><asp:Label runat="server"  Text="Dose"></asp:Label></td>
                <td><asp:DropDownList runat="server" ID="doseDropDownList" AutoPostBack="True" Width="220"/></td>
               
              
            </tr>
            
            
                <tr>
                   <td> </td>
                   <td> </td>
                   <td> </td>
                   <td> </td>
                    <td> </td>
                   <td> </td>
            </tr>

            <tr>
                 <td><asp:RadioButton runat="server" Text="Before Meal" Width="120" /> </td>
                <td><asp:RadioButton runat="server" Text="After Meal"/></td>         
                <td><asp:Label runat="server" Text="Quantity Given" Width="120"/></td>
                <td><asp:TextBox runat="server" ID="quantitygivenTextBox" Width="203px"/>&nbsp;&nbsp;</td>
                <td><asp:Label runat="server" Text="Note"/></td>
                <td><asp:TextBox runat="server" ID="noteTextBox" TextMode="MultiLine" Width="210px"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                  <td><asp:Button runat="server" ID="addTreatmentButton" Text="Add" Width="120" OnClick="addTreatmentButton_OnClick"/></td>
            </tr>

        </table>
        
        
        <asp:GridView runat="server" id="treatmentGridView" >
            
        </asp:GridView>
        <br/>
        <br/>
        <asp:Button runat="server" ID="treatmentInformationSaveButton" Text="Save" OnClick="treatmentInformationSaveButton_OnClick"/>
    </asp:Panel>
   
    
    <script type="text/javascript">
        $("#<%=dateTextBox.ClientID%>").datepicker();
    </script>
     
</asp:Content>    
