<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListForm.aspx.cs" Inherits="TaskWebApp.ListForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="59px" OnClick="Button1_Click" Text="ホーム" Width="172px" />
            <br />
            <br />
            <br />
            　　　　　　　　　　　　　　　　　　　　　　　　　　<asp:Label ID="lblTitle" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Text="購入履歴"></asp:Label>
            <br />
            <br />
            <br />
&nbsp;&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="500px">
                <Columns>
                    <asp:BoundField DataField="購入物" HeaderText="購入物" SortExpression="購入物" />
                    <asp:BoundField DataField="価格" HeaderText="価格" SortExpression="価格" />
                    <asp:BoundField DataField="費目" HeaderText="費目" SortExpression="費目" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SampleConnectionString %>" SelectCommand="SELECT [購入物], [価格], [費目] FROM [PurchaseList]"></asp:SqlDataSource>
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="400px">
                <Columns>
                    <asp:BoundField DataField="費目" HeaderText="費目" SortExpression="費目" />
                    <asp:BoundField DataField="値段" HeaderText="値段" SortExpression="値段" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SampleConnectionString %>" SelectCommand="SELECT * FROM [Expense]"></asp:SqlDataSource>
            <br />
            <br />
            　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　</div>
    </form>
</body>
</html>
