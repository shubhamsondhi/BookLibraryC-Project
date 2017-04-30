<%@ Page Title="" Language="C#" MasterPageFile="~/StudentPage2.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="_Default" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" Theme="" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
 
  
    
 <script src="jquery.js"></script>
<script>
    $(document).ready(function () {
        $(".btn1").click(function () {
            $("p").fadeOut()
        });
        $(".btn2").click(function () {
            $("p").fadeIn();
        });
    });
</script>
    <style type="text/css">
    .style5
    {
        height: 129px;
        width: 151px;
    }
        .style7
        {
            width: 182px;
        }
        .style10
        {
            height: 51px;
            width: 362px;
        }
        .style11
        {
            height: 54px;
            width: 362px;
        }
        .style12
        {
            height: 53px;
            width: 362px;
        }
        .style13
        {
            width: 362px;
            height: 52px;
        }
        .style14
        {
            width: 182px;
            height: 75px;
        }
        .style15
        {
            width: 362px;
            height: 75px;
        }
        .style16
        {
            height: 11px;
            width: 362px;
        }
    </style>
  
 
  
    
 
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="width: 100%; height: 100%" class="block1">
   
              
                  
   
    <table width="100%" cellpadding="30"  border="0"  >
         <tr>
              <td>
                  <h3 style="position: relative; bottom: 50px; left: 0px; font-size: xx-large;" 
                      align="center">Selected Book</h3>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                   <ContentTemplate>
   <ZoneTemplate>
          
              <table class="book_t" id="s_book" bgcolor="#F3F3F3" align="center" 
                  style="background-image: url('images/Untitled-3.png'); height: 131px;">
                      
   <tr><td rowspan="4" class="style7" >
       No image</td><td align="right" class="style13">
      <font style="font-family: 'Adobe Fan Heiti Std B'; font-size: large; font-weight: bold; color: #333399">Book no:</font>
       <asp:Label ID="Label1" runat="server" meta:resourcekey="Label1Resource1"></asp:Label></td></tr>
   <tr><td align="right" class="style10">
     <font style="font-family: 'Adobe Fan Heiti Std B'; font-size: large; font-weight: bold; color: #333399"> Name:</font>
       <asp:Label ID="Label2" runat="server" meta:resourcekey="Label2Resource1"></asp:Label></td></tr>
   <tr><td align="right" class="style11" >
     <font style="font-family: 'Adobe Fan Heiti Std B'; font-size: large; font-weight: bold; color: #333399">Course code:</font>
       <asp:Label ID="Label3" runat="server" meta:resourcekey="Label3Resource1"></asp:Label></td></tr>
   <tr><td align="right" class="style16"  >
       <font style="font-family: 'Adobe Fan Heiti Std B'; font-size: large; font-weight: bold; color: #333399">Avilibale:</font>
       <asp:Label ID="Label5" runat="server" meta:resourcekey="Label5Resource1"></asp:Label>
       </td></tr>
   <tr><td colspan="2" valign="top" align="right" >
       <h3>Descripion</h3>       <asp:Label ID="Label4" runat="server" 
           meta:resourcekey="Label4Resource1"></asp:Label></td></tr>
           <tr><td class="style14">
    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click" 
                   CssClass="button">Book Issue</asp:LinkButton></td>
               <td align="right" class="style15" > 
                   <asp:LinkButton ID="LinkButton2" runat="server" 
                       onclick="LinkButton1_Click1" CssClass="button" Width="162px">Cancel</asp:LinkButton></td></tr>
   </table>
        </ZoneTemplate>      
          </ContentTemplate>
          
                  </asp:UpdatePanel>
                 
           </td>
         </tr>
    
    
         </table>
    
     <p>This is a paragraph.</p>
<button class="btn1">Slide up</button>
<button class="btn2">Slide down</button>
    </div>
</asp:Content>

