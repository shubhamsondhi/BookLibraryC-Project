<%@ Page Title="" Language="C#" MasterPageFile="~/admin2.master" AutoEventWireup="true" CodeFile="Bookreturn.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="display: block; height: 100%; width: 100%" class="block1">
<table><tr><td><h3>Book Return</h3> 
    <asp:GridView ID="GridView1" runat="server" 
        DataSourceID="SqlDataSource1" EnableModelValidation="True" 
        AutoGenerateColumns="False" AllowSorting="True" 
        CssClass="block1">
    <Columns>
        <asp:BoundField DataField="Rollno" HeaderText="Rollno" 
            SortExpression="Rollno" />
        <asp:BoundField DataField="B_no" HeaderText="B_no" SortExpression="B_no" />
        <asp:BoundField DataField="I_date" HeaderText="I_date" 
            SortExpression="I_date" />
        <asp:BoundField DataField="D_date" HeaderText="D_date" 
            SortExpression="D_date" />
        <asp:BoundField DataField="A_copies" HeaderText="A_copies" 
            SortExpression="A_copies" />
        <asp:BoundField DataField="no" HeaderText="no" 
            SortExpression="no" InsertVisible="False" ReadOnly="True" />
    </Columns>
    </asp:GridView></td></tr><tr><td><h3>Book Return Pending</h3>
        <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
            CssClass="block1" DataSourceID="SqlDataSource2" 
            EnableModelValidation="True" AutoGenerateColumns="False" DataKeyNames="no">
            <Columns>
                <asp:BoundField DataField="Rollno" HeaderText="Rollno" 
                    SortExpression="Rollno" />
                <asp:BoundField DataField="B_no" HeaderText="B_no" SortExpression="B_no" />
                <asp:BoundField DataField="I_Date" HeaderText="I_Date" 
                    SortExpression="I_Date" />
                <asp:BoundField DataField="D_date" HeaderText="D_date" 
                    SortExpression="D_date" />
                <asp:BoundField DataField="A_copies" HeaderText="A_copies" 
                    SortExpression="A_copies" />
                <asp:BoundField DataField="Fine" HeaderText="Fine" SortExpression="Fine" />
                <asp:BoundField DataField="no" HeaderText="no" InsertVisible="False" 
                    ReadOnly="True" SortExpression="no" />
            </Columns>
        </asp:GridView>
    </td></tr></table>
   

</div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [return_b]" 
        OldValuesParameterFormatString="original_{0}">
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [p_return]">
    </asp:SqlDataSource>
</asp:Content>

