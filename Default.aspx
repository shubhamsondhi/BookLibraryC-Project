<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dc %>" SelectCommand="SELECT * FROM [admin]"></asp:SqlDataSource>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Fine" HeaderText="Fine" SortExpression="Fine" />
                <asp:BoundField DataField="n" HeaderText="n" SortExpression="n" />
                <asp:BoundField DataField="limit" HeaderText="limit" SortExpression="limit" />
                <asp:BoundField DataField="day_l" HeaderText="day_l" SortExpression="day_l" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
