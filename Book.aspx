<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Book.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript" src="master/JScript.js"></script>
 
   
    
    
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="height: 100%">
<center><div >

<h1>Create User Account
         </h1>
<table id="form" style="height: 664px; width:490px; text-align:left"  >
 <tr>
    <td align="right" class="style3">Book No: </td>
    <td class="style2" align="left">
      
      <asp:TextBox ID="B_no" runat="server" TabIndex="1" MaxLength="50"></asp:TextBox>
    &nbsp;&nbsp;<asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="B_no" FilterType="Numbers">
        </asp:FilteredTextBoxExtender>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="B_no" ErrorMessage="Enter The Book no" ForeColor="Black"></asp:RequiredFieldValidator>
        <br />
     
    </td>
 </tr>
 
 <tr>
    <td align="right" class="style3">Course No.</td>
    <td class="style2" align="left">
       
       
        <asp:TextBox ID="C_no" runat="server" TabIndex="2" MaxLength="50"></asp:TextBox>
      
    </td>
 </tr>
 
 <tr>
    <td align="right" class="style3">Name: </td>
    <td class="style2" align="left">
       
      <asp:TextBox ID="Name" runat="server" TabIndex="3" MaxLength="50"></asp:TextBox>
    &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="Name" ErrorMessage="Eenter The Book Name" ForeColor="Black"></asp:RequiredFieldValidator>
    </td>
 </tr>
 <tr>
    <td align="right" class="style6">Subject: </td>
    <td class="style7" align="left">
      <asp:TextBox ID="Subject" runat="server" TabIndex="4" MaxLength="50"></asp:TextBox>
    </td>
 </tr>
 <tr>
    <td align="right" class="style12">Branch</td>
    <td class="style1" align="left" rowspan="2">
    
         
         
          <table><tr><td class="style10">
              
              
    <asp:TextBox ID="TextBox1" runat="server" TabIndex="5"></asp:TextBox>
         <asp:AutoCompleteExtender ID="AutoCompleteExtender1" runat="server" 
                  TargetControlID="TextBox1" ServiceMethod="GetCompletionList" 
                  UseContextKey="True" MinimumPrefixLength="1" CompletionInterval="100" 
                  CompletionSetCount="5" CompletionListItemCssClass="ec" 
                  CompletionListHighlightedItemCssClass="bc">
              </asp:AutoCompleteExtender>    
           
            
       
        </td></tr><tr><td><br /><br />
          <asp:DropDownList ID="DropDownList2" runat="server" TabIndex="5">
              <asp:ListItem>Select Semester</asp:ListItem>
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
 </tr></table> 
  </td></tr>
 <tr>
    <td align="right" class="style11">Semester</td>
    
 </tr>
 <tr>
    <td align="right" class="style3">
        Author: </td> 
     <td class="style2" align="left">
         <asp:TextBox ID="Author" runat="server" TabIndex="6" 
             TextMode="Password" MaxLength="50"></asp:TextBox>
     </td>
 </tr>
 <tr>
     <td align="right" class="style3">Publisher: </td>
     <td class="style2" align="left">
      <asp:TextBox ID="Publisher" runat="server" TabIndex="7" MaxLength="50"></asp:TextBox>
        
        
     </td>
 </tr>
 <tr>
      <td align="right" class="style3">Copies: </td>
      <td class="style2" align="left">
          
      <asp:TextBox ID="Copies" runat="server" TabIndex="8" MaxLength="10"></asp:TextBox>
       
      &nbsp;
          <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
              ControlToValidate="Copies" ErrorMessage="Enter The Correct Valu" 
              ForeColor="Black" ValidationExpression="\d+"></asp:RegularExpressionValidator>
      </td>

 </tr>
 <tr>
      <td align="right" class="style3">Description: </td>
      <td class="style2" align="left">
      <asp:TextBox ID="Description" runat="server" TabIndex="9" Height="73px" 
              TextMode="MultiLine" Width="239px" MaxLength="500"></asp:TextBox>
      </td>

 </tr>
 <tr>
      <td align="right" class="style13">Upload Image</td>
      <td class="style13" align="left">
          <asp:FileUpload ID="FileUpload2" runat="server" TabIndex="10" />
      </td>

 </tr>
<tr>
    <td colspan="2" align="left" class="style14">
       <asp:Label 
            ID="Label2" runat="server"></asp:Label>
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Submit" runat="server" Text="Submit" TabIndex="11" 
            onclick="Button1_Click" />
        
        <asp:Button ID="Button2"
            runat="server" Text="Cancel" TabIndex="12" /></td>
</tr>
</table>
</td>
</div></center>
</div>

</asp:Content>

