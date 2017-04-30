<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPage2.master" AutoEventWireup="true" CodeFile="issued.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style5
        {
            width: 66px;
        }
        .style8
        {
            width: 105px;
            height: 175px;
        }
        .style9
        {
            height: 175px;
        }
        .style10
        {
            width: 176px;
            height: 175px;
        }
        .style11
        {
            width: 131px;
            height: 175px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">  
    <div style="width: 100%; height: 100%" align="center">
<table class="book_t" 
                      
        
            style=" margin-bottom: 6px; width: 511px; height: 241px; position: relative; top: 80px; left: -20px;" 
            align="center" >
              
              <tr><td colspan="3" ><h3 style="width: 180px">Issued Book</h3></td></tr>
              <tr  ><td class="style11">Issue date</td><td class="style10" >Due Date</td>
                  <td class="style9">B_no</td>
                  </tr>
      
              <asp:Label ID="Label13" runat="server" meta:resourcekey="Label6Resource1"></asp:Label>
              
              
              
              
             
           </table></div>
</asp:Content>

