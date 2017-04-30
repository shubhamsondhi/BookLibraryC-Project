<%@ Page Title="" Language="C#" MasterPageFile="~/admin2.master" AutoEventWireup="true" CodeFile="admin_c.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
    {}
    .style4
    {}
    .style5
    {}
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="display: block; width: 100%; height: 100%">
    <div >
       
        <table style="width: 100%; height: 315px;" class="block1">
            <tr>
                <td>
                    Limit of Book For Students
                </td>
                <td >
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" 
                        ontextchanged="TextBox1_TextChanged" Width="200px"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" 
                        runat="server" FilterType="Numbers" TargetControlID="TextBox1">
                    </asp:FilteredTextBoxExtender>
                    </td><td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                </td>
            </tr>
            <tr>
                <td>
                    Return Day After Deu Date</td>
                <td >
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox3" runat="server"  Height="28px" 
                        Width="200px"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="TextBox3_FilteredTextBoxExtender" 
                        runat="server" FilterType="Numbers" TargetControlID="TextBox3">
                    </asp:FilteredTextBoxExtender>
                    </td><td>
                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" />
                </td>
            </tr>
            <tr>
                <td >
                    Fine Per Day for lait give</td>
                <td >Rs
                    <asp:TextBox ID="TextBox2" runat="server"  Height="25px" 
                        Width="200px"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="TextBox2_FilteredTextBoxExtender" 
                        runat="server" FilterType="Numbers" TargetControlID="TextBox2">
                    </asp:FilteredTextBoxExtender></td><td>
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
                        Text="Submit" />
                </td>
            </tr>
        </table>
       
    </div>
   </div>
</asp:Content>

