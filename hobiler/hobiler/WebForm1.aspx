<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="hobiler.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Hobileriniz<br />
            <asp:CheckBoxList ID="chk_hobiler" runat="server" AutoPostBack="True" Height="48px" OnSelectedIndexChanged="chk_hobiler_SelectedIndexChanged" RepeatDirection="Horizontal" Width="358px">
                <asp:ListItem>Sinema</asp:ListItem>
                <asp:ListItem>Tiyatro</asp:ListItem>
                <asp:ListItem>Spor</asp:ListItem>
                <asp:ListItem>Müzik</asp:ListItem>
                <asp:ListItem>Kitap</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <br />
            <asp:Label ID="lbl_hobiler" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
