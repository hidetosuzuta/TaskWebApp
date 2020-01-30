<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateExpenseForm.aspx.cs" Inherits="TaskWebApp.UpdateExpenseForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            <br />
            　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　<asp:Button ID="Button1" runat="server" Height="61px" OnClick="Button1_Click" Text="ホーム" Width="196px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 　　　　　　　　　　　　　 &nbsp;<asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Text="費目の更新"></asp:Label>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="500px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="購入物" HeaderText="購入物" SortExpression="購入物" />
                    <asp:BoundField DataField="価格" HeaderText="価格" SortExpression="価格" />
                    <asp:BoundField DataField="費目" HeaderText="費目" SortExpression="費目" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SampleConnectionString %>" SelectCommand="SELECT [購入物], [価格], [費目] FROM [PurchaseList]"></asp:SqlDataSource>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="60px" Width="300px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =&gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="60px" OnTextChanged="TextBox2_TextChanged" Width="300px">入力してください</asp:TextBox>
&nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SampleConnectionString %>" SelectCommand="SELECT [費目] FROM [Expense]"></asp:SqlDataSource>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Height="61px" OnClick="Button2_Click" Text="更新" Width="207px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
