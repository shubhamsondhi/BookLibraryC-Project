<%@ Page Title="" Language="C#" MasterPageFile="~/admin2.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div  style="height: 800px; position: relative; bottom: 95px; left: 0px;" 
    class="block1">
          <table><tr><td>
           <table  width="400px" class="block1" 
                  style="font-size: large" >
              
              <tr><td colspan="5"><h3>Book For Issue</h3></td></tr>
              <tr><td>Rollno</td><td>Book no</td><td>Issue Date</td><td>&nbsp;Avilible</td><td>Issue</td></tr>
      
              <asp:Label ID="Label6" runat="server"></asp:Label>
              
              
              
              
             
           </table>
          
          
          </td><td>
          
           <table  width="400px" class="block1" 
                  style="font-size: large" >
              
              <tr><td colspan="5"><h3>Book For Return</h3></td></tr>
              <tr><td>Rollno</td><td>Book no</td><td>Issue Date</td><td>Due Date</td><td>Fine</td><td>Returned</td></tr>
      
              <asp:Label ID="Label1" runat="server"></asp:Label>
              
              
              
              
             
           </table>
          
          </td></tr></table>  








  </div>
  
  
  
  







  <!-------
  <div class="block1">
    




        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            Text="User IDs"></asp:Label>
    
        
    
    </div><div class="block1">
    
        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="XX-Large" 
            Text="Boook Records"></asp:Label>
    
        
    </div>
    ------->
    </asp:Content>
