<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPage2.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    
    
   
    
    
    <style type="text/css">
        .style1
        {
            width: 308px;
        }
        .style2
        {
            width: 310px;
        }
        .style3
        {
          
        }
        .style4
        {
            width: 50%;
        }
        .style5
        {
            width: 48%;
        }
        .style6
        {
            width: 21%;
            height: 45px;
        }
        .style7
        {
            height: 45px;
        }
    </style>
    
    
    
   
    
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="width: 90%; height: 100%" 
    >
    
    <table align="left" ><tr>
        <td class="style2" 
            style="padding: 20px; margin: 30px;" >
    <table runat="server" align="left" border="0" class="profile" 
            style="width: 104%; height: 358px; vertical-align: bottom;">
        <tr>
            <td id="profile"  colspan="2">
                <h3 style="text-align: center; width: 40px;">
                    Profile</h3>
            </td>
        </tr>
        <tr>
            <td id="profile0">
                Name :</td>
            <td class="newStyle3">
                <asp:Label ID="Label8" runat="server" meta:resourcekey="Label8Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td id="profile1">
                Branch:&nbsp;
            </td>
            <td class="newStyle3">
                <asp:Label ID="Label9" runat="server" meta:resourcekey="Label9Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td id="profile2">
                Semester:</td>
            <td class="newStyle3">
                <asp:Label ID="Label10" runat="server" CssClass="newStyle2" 
                    meta:resourcekey="Label10Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td id="profile3">
                No of Book:</td>
            <td class="newStyle3">
                <asp:Label ID="Label11" runat="server" meta:resourcekey="Label11Resource1"></asp:Label>
            </td>
        </tr>
        <tr>
            <td id="profile4">
                Fine</td>
            <td class="newStyle3">
                <asp:Label ID="Label12" runat="server" meta:resourcekey="Label11Resource1"></asp:Label>
            </td>
        </tr>
    </table>
    </td><td style=" padding-left: 90px;" ><table  class="book_t" align="left" >
              
              <tr><td class="style6" >Name</td><td " class="style6" class="style7">Course no</td>
                  <td width="20%" class="style7">Avilible</td></tr>
      <tr><td colspan=3 class="style3">&nbsp; </td></tr>
              <asp:Label ID="Label6" runat="server" meta:resourcekey="Label6Resource1"></asp:Label>
              
              
              
              
             
           </table></td></tr></table>
    
    </div>
</asp:Content>

