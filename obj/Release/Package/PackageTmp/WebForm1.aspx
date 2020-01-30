<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TaskWebApp.WebForm1" %>

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
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 　　　　　<asp:Label ID="lbl1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" style="text-align: center" Text="家計簿アプリ"></asp:Label>
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnList" runat="server" Height="80px" OnClick="Button1_Click" Text="購入履歴" Width="200px" Font-Size="X-Large" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Font-Size="X-Large" Height="80px" OnClick="Button1_Click1" Text="入力" Width="200px" />
            <br />
            <br />
            <br />
            　　　　　　　　　　　　　　　　　　　　　<asp:Button ID="Button2" runat="server" Font-Size="X-Large" Height="80px" OnClick="Button2_Click" Text="更新" Width="200px" />
            　　<asp:Button ID="Button3" runat="server" Font-Size="X-Large" Height="80px" OnClick="Button3_Click" Text="削除" Width="200px" />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 　　　　　　&nbsp; 
            <asp:Button ID="Button4" runat="server" Font-Size="X-Large" Height="80px" OnClick="Button4_Click" Text="費目追加" Width="200px" />
&nbsp;　 
            <asp:Button ID="Button5" runat="server" Font-Size="X-Large" Height="80px" OnClick="Button5_Click" Text="費目削除" Width="200px" />
            <br />
        </div>
    </form>
</body>
</html>
