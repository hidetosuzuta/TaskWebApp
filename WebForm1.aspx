<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="TaskWebApp.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1486px;
            height: 682px;
            position: absolute;
            left: 10px;
            top: 15px;
        }
    </style>
    </head>
<body>
    <form id="form1" runat="server">
        <div style="z-index: 1">
            <br />
            <br class="auto-style1" />
            <br class="auto-style1" />
            <br class="auto-style1" />
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 　　　　　<asp:Label ID="lbl1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="XX-Large" style="text-align: center; z-index: 1; left: 551px; top: 0px; position: relative;" Text="家計簿アプリ"></asp:Label>
            </span>
            <br class="auto-style1" />
            <br class="auto-style1" />
            <br class="auto-style1" />
            <br class="auto-style1" />
            <span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnList" runat="server" Height="80px" OnClick="Button1_Click" Text="購入履歴" Width="200px" Font-Size="X-Large" style="z-index: 1; left: 458px; top: 446px; position: absolute" />
            </span><span class="auto-style1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Font-Size="X-Large" Height="80px" OnClick="Button1_Click1" Text="入力" Width="200px" style="z-index: 1; left: 730px; top: 299px; position: absolute" />
            </span>
            <br class="auto-style1" />
            <br class="auto-style1" />
            <br class="auto-style1" />
            <span class="auto-style1">　　　　　　　　　　　　　　　　　　　　　<asp:Button ID="Button2" runat="server" Font-Size="X-Large" Height="80px" OnClick="Button2_Click" Text="更新" Width="200px" style="z-index: 1; left: 451px; top: 298px; position: absolute; bottom: 304px" />
            </span><span class="auto-style1">　　<asp:Button ID="Button3" runat="server" Font-Size="X-Large" Height="80px" OnClick="Button3_Click" Text="削除" Width="200px" style="z-index: 1; left: 735px; top: 446px; position: absolute" />
            </span>
            <br class="auto-style1" />
            <br class="auto-style1" />
            <span class="auto-style1">
            <br />
            <br />
            <asp:Button ID="Button5" runat="server" Font-Size="X-Large" Height="80px" OnClick="Button5_Click" Text="費目削除" Width="200px" style="z-index: 1; left: 170px; top: 152px; position: relative" />
            </span>
            <br />
        </div>
    </form>
</body>
</html>
