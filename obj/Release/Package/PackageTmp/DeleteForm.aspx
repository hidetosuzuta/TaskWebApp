<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteForm.aspx.cs" Inherits="TaskWebApp.DeleteForm" %>

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
            　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　　<asp:Button ID="Button1" runat="server" Height="56px" OnClick="Button1_Click" Text="ホーム" Width="143px" />
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 　　　　　　　　　　　　　　　　&nbsp; 
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" Text="削除"></asp:Label>
            <br />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="500px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="購入物" HeaderText="購入物" SortExpression="購入物" />
                    <asp:BoundField DataField="価格" HeaderText="価格" SortExpression="価格" />
                    <asp:BoundField DataField="費目" HeaderText="費目" SortExpression="費目" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SampleConnectionString %>" SelectCommand="SELECT * FROM [PurchaseList]"></asp:SqlDataSource>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="購入物"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="値段"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="費目"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="54px" OnClick="Button2_Click" Text="削除" Width="145px" />
        </div>
    </form>
</body>
</html>
