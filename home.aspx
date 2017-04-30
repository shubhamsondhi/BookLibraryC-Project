<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="_Default" Title="" %>



<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
     <div style="padding: 20px;  display: block; width: 100%; height: 100%;" 
         class="block1"><div style="display: block; width: 100%; height: 100%">
   

   
 
    </div>
    
       

 
     <table border="0" width="800px"  >
     <tr>
     <td width="20%" >
     &nbsp;<img height="169" src="book/lib-4.jpg" width="225" /><br />
         <img height="169" src="book/lib-5.jpg" width="225" /> &nbsp;
         <img height="169" src="book/lib-6.jpg" width="225" /></td>
     <td width="60%" >
      <!--------login&search------------------------->
     <table border="0"  cellpadding="0" cellspacing="0" align="center" class="style9" style="padding: 0px; margin: 0px" 
           ><tr>
         <td  valign="top" style="padding: 0px"   >
   
          <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
            
          <ZoneTemplate>
          <div style="padding: 0px;   border: 2px solid #000000; height: 136px; width: 403px; background-color: #FFFFFF; margin-top: 0px;" 
         class="block1">
 
 <table style="margin: 0px; padding: 0px; height: 148px; width: 308px"><tr>
     <td class="style6" style="padding: 0px; margin: 0px">
 <h3 style="margin: 0px; padding: 0px; width: 90%;" >Find The books</h3><hr /></td></tr>
        
        
     <tr>
         <td>
             <table>
                 <tr>
                     <td><table style="border: 1px solid #000000; padding: 2px; border-radius:20px; background-color: #FFFFFF; position: relative; left: 30px;"><tr><td> 
                     <asp:TextBox ID="TextBox1" runat="server" AutoPostBack="true" Height="23px" 
                             ontextchanged="Search_Button" ValidationGroup="TextBox1_Load" 
                             Width="242px" BorderStyle="None" CssClass="search"></asp:TextBox>
                         <div class="table2" 
                             style="height: 4px; width: 212px; left: -0px; margin-top: 0px; top: 3px; position: relative;">
                             <asp:Table ID="Table1" runat="server" BackColor="White" BorderColor="Black" 
                                 BorderStyle="Ridge" BorderWidth="1px" CssClass="s1" Font-Size="Large" 
                                 GridLines="Vertical" Height="156px" Visible="False" Width="275px">
                             </asp:Table>
                             <asp:DropShadowExtender ID="Table1_DropShadowExtender" runat="server" 
                                 Enabled="True" Opacity="0.5" TargetControlID="Table1" Width="10">
                             </asp:DropShadowExtender>
                            
                         </div>
                     
                     
                     </td><td>
                      <asp:LinkButton ID="LinkButton1" runat="server" CssClass="go" 
                             onclick="Search_Button">go</asp:LinkButton>
                     
                     </td></tr></table>
                         
                     </td>
                     
                 </tr>
             </table>
         </td>
         </td>
     </tr>
              </table>
     </div>
      </ZoneTemplate>
        
          </ContentTemplate>
           </asp:UpdatePanel>
     </td>
     
     <!---------login----------->
     
     <td  align="right" width="1000px" valign="top" style="padding: 0px 0px 0px 10px"  ><asp:UpdatePanel ID="UpdatePanel2" runat="server">
              <ContentTemplate>   
          <ZoneTemplate>
              <div style="margin: 0px 0px 0px 5px; padding: 0px; border: 2px solid #000000; height: 136px; width: 330px; text-align: left;" 
         class="block1">
                  <table style="padding: 0px; margin: 3px; height: 124px; width: 326px;" 
                      cellpadding="0" cellspacing="0"><tr>
                  <td colspan="2" width="20"  ><h3 style="padding: 0px; margin: 0px; width: 30px" >Login</h3><hr /></td></tr>
     <tr><td width="20">
         <asp:TextBox ID="username" runat="server" MaxLength="16"></asp:TextBox>
       
         <asp:TextBoxWatermarkExtender ID="username_TextBoxWatermarkExtender" 
             runat="server" TargetControlID="username" WatermarkCssClass="water" 
             WatermarkText="Rollno">
         </asp:TextBoxWatermarkExtender>
        
         </td></tr>
     <tr><td width="20" >
         <asp:TextBox ID="password" runat="server" TextMode="Password" MaxLength="10"></asp:TextBox>
         <asp:TextBoxWatermarkExtender ID="password_TextBoxWatermarkExtender" 
             runat="server" TargetControlID="password" WatermarkCssClass="water" 
             WatermarkText="Password">
         </asp:TextBoxWatermarkExtender>
         </td><td align="left" >
           
             <asp:LinkButton ID="LinkButton2" runat="server" onclick="Button1_Click"     
                 Text="Login" CssClass="go" Width="65px" Font-Size="Small" Height="17px" ></asp:LinkButton>

         </td></tr>
         <tr>
             <td colspan="2">
                 <asp:Label ID="Label2" runat="server" ForeColor="#993300"></asp:Label>
                 <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White" 
                     Font-Size="Large" CssClass="style11"></asp:Label>
                 <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#AA272A" 
                     NavigateUrl="~/S_Signup.aspx">SingnUp</asp:HyperLink>
                      
             </td>
         </tr>
     
     
     </table></div>  </ZoneTemplate>
         
          </ContentTemplate>
           </asp:UpdatePanel></td>
     </tr>
     <tr><td  colspan="2" style="padding-left: 10px">

     <div class="style12">
   


         <h3><p class="Green">
             &quot;Library is the heart and soul of every institution&quot;.
            
         </p></h3> <br />
             <br />
         <table border="0" cellpadding="0" cellspacing="0" width="96%" class="style12">
             <tr>
                 <td>
                     <div align="justify">
                         The central library of GIM is adequately rich in its collection of books. A 
                         library is collection of information resources and services. The main aim of 
                         library to cater the library needs of the users. Our library provides wi-fi 
                         facility to access internet.
                         <br />
                         <br />
                         <strong>Library collection</strong>:-There is a collection of 6000 books in the 
                         library. All the books are classified. We have 24 magazines and national and 
                         international journals.<br />
                         <br />
                         <strong>Circulation Section</strong>:-Library follows Browne charging System for 
                         the circulation.<br />
                         <br />
                         <strong>Reading Area</strong>:-It has a sitting capacity of about 150 students 
                         at a time
                         <br />
                         <br />
                         <strong>Arrangement</strong>:-GIM library is providing open shelf system. All 
                         the books have been arranged subject wise.<br />
                         <br />
                         <strong>Archives Section</strong>:-In this section all the back volume of 
                         magazines, journals and other old material have been well arranged.<br />
                         <br />
                         <strong>Other Services</strong>: - Our library is also providing other services.<br />
                         Reference Service, Documentation Service and current awareness services.<br />
                         <br />
                     </div>
                 </td>
             </tr>
             <tr>
                 <td>
                     &nbsp;</td>
             </tr>
         </table>
   


   </div></td></tr></table>
     </td>
     <td width="20%" >
         <img height="169" src="book/lib-1.jpg" 
             width="225" /> &nbsp;
         <img height="169" src="book/lib-2.jpg" 
             width="225" /> &nbsp;
         <img height="169" src="book/lib-3.jpg" 
             width="225" />
     </td>
     </tr>
     
     
     </table> </div> 
  </div>
</asp:Content>

