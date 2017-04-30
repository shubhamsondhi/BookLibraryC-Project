<%@ Page Title="" Language="C#" MasterPageFile="~/admin2.master" AutoEventWireup="true" CodeFile="StudentA.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style3
    {}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div style="display: block; height: 100%; width: 100%" class="block1">



        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" CssClass="block1" DataKeyNames="Rollno" 
            DataSourceID="SqlDataSource1" EnableModelValidation="True" Height="236px" CellPadding="5" 
            CellSpacing="10">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" ControlStyle-BorderStyle="Double" />
                <asp:BoundField DataField="F_name" HeaderText="F_name" 
                    SortExpression="F_name" />
                <asp:BoundField DataField="L_name" HeaderText="L_name" 
                    SortExpression="L_name" />
                <asp:BoundField DataField="Rollno" HeaderText="Rollno" ReadOnly="True" 
                    SortExpression="Rollno" />
                <asp:BoundField DataField="Password" HeaderText="Password" 
                    SortExpression="Password" />
                <asp:BoundField DataField="Class" HeaderText="Class" SortExpression="Class" />
                <asp:BoundField DataField="Sem" HeaderText="Sem" SortExpression="Sem" />
                <asp:BoundField DataField="Address" HeaderText="Address" 
                    SortExpression="Address" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Branch" HeaderText="Branch" 
                    SortExpression="Branch" />
            </Columns>
        </asp:GridView>
        </div>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConflictDetection="CompareAllValues" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [student_data] WHERE [Rollno] = @original_Rollno AND [F_name] = @original_F_name AND (([L_name] = @original_L_name) OR ([L_name] IS NULL AND @original_L_name IS NULL)) AND [Password] = @original_Password AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL)) AND (([Sem] = @original_Sem) OR ([Sem] IS NULL AND @original_Sem IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Branch] = @original_Branch) OR ([Branch] IS NULL AND @original_Branch IS NULL))" 
    InsertCommand="INSERT INTO [student_data] ([F_name], [L_name], [Rollno], [Password], [Class], [Sem], [Address], [Email], [Branch]) VALUES (@F_name, @L_name, @Rollno, @Password, @Class, @Sem, @Address, @Email, @Branch)" 
    OldValuesParameterFormatString="original_{0}" 
    SelectCommand="SELECT * FROM [student_data]" 
    UpdateCommand="UPDATE [student_data] SET [F_name] = @F_name, [L_name] = @L_name, [Password] = @Password, [Class] = @Class, [Sem] = @Sem, [Address] = @Address, [Email] = @Email, [Branch] = @Branch WHERE [Rollno] = @original_Rollno AND [F_name] = @original_F_name AND (([L_name] = @original_L_name) OR ([L_name] IS NULL AND @original_L_name IS NULL)) AND [Password] = @original_Password AND (([Class] = @original_Class) OR ([Class] IS NULL AND @original_Class IS NULL)) AND (([Sem] = @original_Sem) OR ([Sem] IS NULL AND @original_Sem IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Branch] = @original_Branch) OR ([Branch] IS NULL AND @original_Branch IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Rollno" Type="Int32" />
            <asp:Parameter Name="original_F_name" Type="String" />
            <asp:Parameter Name="original_L_name" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_Class" Type="String" />
            <asp:Parameter Name="original_Sem" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Branch" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="F_name" Type="String" />
            <asp:Parameter Name="L_name" Type="String" />
            <asp:Parameter Name="Rollno" Type="Int32" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Class" Type="String" />
            <asp:Parameter Name="Sem" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Branch" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="F_name" Type="String" />
            <asp:Parameter Name="L_name" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Class" Type="String" />
            <asp:Parameter Name="Sem" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Branch" Type="String" />
            <asp:Parameter Name="original_Rollno" Type="Int32" />
            <asp:Parameter Name="original_F_name" Type="String" />
            <asp:Parameter Name="original_L_name" Type="String" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_Class" Type="String" />
            <asp:Parameter Name="original_Sem" Type="String" />
            <asp:Parameter Name="original_Address" Type="String" />
            <asp:Parameter Name="original_Email" Type="String" />
            <asp:Parameter Name="original_Branch" Type="String" />
        </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>

