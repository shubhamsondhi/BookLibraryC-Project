<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="S_Signup.aspx.cs" Inherits="_Default" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            height: 100px;
        }
        .style3
        {
            height: 100px;
            width: 374px;
        }
        .style4
        {
            height: 58px;
        }
        .style5
        {
            width: 294px;
            height: 58px;
        }
        .style6
        {
            height: 60px;
        }
        .style7
        {
            width: 374px;
            height: 60px;
        }
        .style8
        {
            height: 83px;
        }
        .style9
        {
            width: 374px;
            height: 83px;
        }
        .style10
        {
            height: 56px;
        }
        .style11
        {
            width: 374px;
            height: 56px;
        }
        .style12
        {
            height: 54px;
        }
        .style13
        {
            width: 374px;
            height: 54px;
        }
        .style14
        {
            height: 63px;
        }
        .style15
        {
            width: 374px;
            height: 63px;
        }
        .style16
        {
            height: 53px;
        }
        .style17
        {
            width: 374px;
            height: 53px;
        }
        .style18
        {
            height: 55px;
        }
        .style19
        {
            width: 374px;
            height: 55px;
        }
        .style20
        {
            height: 62px;
        }
        .style22
        {
            width: 374px;
            height: 76px;
        }
        .style23
        {
            height: 76px;
        }
        .style24
        {
            width: 374px;
            height: 58px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 100%">
<center><div >

<h1>Create User Account</h1>
<table id="form" style="height: 738px; width:490px; text-align:left"  >
    <tr>
    <td class="style23" align="right">Roll No.:</td>
    <td class="style22">
      <asp:TextBox ID="Rollno" runat="server" TabIndex="1" MaxLength="8"></asp:TextBox>
        <asp:FilteredTextBoxExtender ID="Rollno_FilteredTextBoxExtender" runat="server" 
            FilterType="Numbers" TargetControlID="Rollno">
        </asp:FilteredTextBoxExtender>
        <asp:TextBoxWatermarkExtender ID="Rollno_TextBoxWatermarkExtender" 
            runat="server" Enabled="True" TargetControlID="Rollno" 
            WatermarkText="Roll No" WatermarkCssClass="water">
        </asp:TextBoxWatermarkExtender>
        &nbsp;&nbsp;
       
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="Rollno" ErrorMessage="Enter the Rollno" Font-Size="Small" 
            ForeColor="Black"></asp:RequiredFieldValidator>
        
    </td>
    </tr>
 <tr>
    <td class="style6" align="right">First Name:</td>
    <td class="style7">
      <asp:TextBox ID="F_name" runat="server" TabIndex="2" MaxLength="200"></asp:TextBox>
       
        <asp:TextBoxWatermarkExtender ID="F_name_TextBoxWatermarkExtender" 
            runat="server" Enabled="True" TargetControlID="F_name" 
            WatermarkText="First name" WatermarkCssClass="water">
        </asp:TextBoxWatermarkExtender>
       
    &nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="F_name" ErrorMessage="Please Enter name" Font-Size="Small" 
            ForeColor="Black"></asp:RequiredFieldValidator>
    </td>
 </tr>
 <tr>
    <td class="style4" align="right">Last Name: </td>
    <td class="style24">
      <asp:TextBox ID="L_name" runat="server" TabIndex="3" MaxLength="200"></asp:TextBox>
    </td>
 </tr>
 <tr>
    <td class="style8" align="right">
        Password: </td> 
     <td class="style9"><asp:TextBox ID="password" runat="server" TabIndex="4" 
             TextMode="Password"></asp:TextBox>
        
         <asp:PasswordStrength ID="password_PasswordStrength" runat="server" 
             PreferredPasswordLength="16" TargetControlID="password">
         </asp:PasswordStrength>
        
         &nbsp;&nbsp;&nbsp;&nbsp;
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
             ControlToValidate="password" ErrorMessage="Enter The Password" 
             Font-Size="Small" ForeColor="Black"></asp:RequiredFieldValidator>
         <br />
     </td>
 </tr>
 <tr>
    <td class="style10" align="right">
        Confirm
        Password:</td> 
     <td class="style11">
         <br />
         <asp:TextBox ID="password0" runat="server" TabIndex="5" 
             TextMode="Password" MaxLength="8"></asp:TextBox>
     &nbsp;&nbsp;&nbsp;
         <asp:CompareValidator ID="CompareValidator1" runat="server" 
             ControlToCompare="password" ControlToValidate="password0" 
             ErrorMessage="Password not same" ForeColor="Black" Font-Size="Small"></asp:CompareValidator>
     </td>
 </tr>
 <tr>
     <td class="style12" align="right">Class: </td>
     <td class="style13">
         
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
         <ZoneTemplate>
         <asp:DropDownList ID="DropDownList1" runat="server" Width="167px" 
             onselectedindexchanged="DropDownList1_SelectedIndexChanged" TabIndex="6" 
             AutoPostBack="True">
             <asp:ListItem>Selecte The Branch </asp:ListItem>
             <asp:ListItem>B.Tech</asp:ListItem>
             <asp:ListItem>MBA</asp:ListItem>
             <asp:ListItem>MCA</asp:ListItem>
             <asp:ListItem>M.Tech</asp:ListItem>
         </asp:DropDownList>
        
        </ZoneTemplate></ContentTemplate>
         </asp:UpdatePanel>
        
        
        
     </td>
 </tr>
 <tr>
      <td class="style14" align="right">Branch:</td>
      <td class="style15">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
         <ZoneTemplate>
          <asp:DropDownList ID="DropDownList2" runat="server" Height="18px" Width="168px" 
              TabIndex="7">
          
          
          </asp:DropDownList>
          </ZoneTemplate></ContentTemplate></asp:UpdatePanel>
      </td>

 </tr>
 <tr>
      <td class="style16" align="right">Semester: </td>
      <td class="style17">
          <asp:DropDownList ID="sem" runat="server">
              <asp:ListItem>1</asp:ListItem>
              <asp:ListItem>2</asp:ListItem>
              <asp:ListItem>3</asp:ListItem>
              <asp:ListItem>4</asp:ListItem>
              <asp:ListItem>5</asp:ListItem>
              <asp:ListItem>6</asp:ListItem>
              <asp:ListItem>7</asp:ListItem>
              <asp:ListItem>8</asp:ListItem>
          </asp:DropDownList>
         
      </td>

 </tr>
 <tr>
      <td class="style1" align="right">Address: </td>
      <td class="style3">
      <asp:TextBox ID="Addres" runat="server" TabIndex="9" Height="73px" 
              TextMode="MultiLine" Width="239px" MaxLength="1000"></asp:TextBox>
      </td>

 </tr>
 <tr>
      <td class="style18" align="right">E-Mail: </td>
      <td class="style19">
      <asp:TextBox ID="Email" runat="server" TabIndex="10" MaxLength="50"></asp:TextBox>
          &nbsp;&nbsp;&nbsp;&nbsp;
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
              ControlToValidate="Email" ErrorMessage="Wrong Email" ForeColor="Black" 
              ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
              Font-Size="Small"></asp:RegularExpressionValidator>
      </td>

 </tr>
<tr>
    <td colspan="2" class="style20" align="right">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label2" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Submit" runat="server" Text="Submit" TabIndex="11" 
            onclick="Button1_Click" />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button2"
            runat="server" Text="Cancel" TabIndex="12" /></td>
</tr>
</table>

</div></center>
</div>

</asp:Content>

