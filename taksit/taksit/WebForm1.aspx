<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="taksit.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
            background-color: #FFFF00;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2">TAKSİT HESAPLAMA PROGRAMI</td>
                </tr>
                <tr>
                    <td>Ürün Fiyatı</td>
                    <td>
                        <asp:TextBox ID="txt_fiyat" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Ödeme Şekli</td>
                    <td>
                        <asp:RadioButtonList ID="rdl_odemeSekli" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rdl_odemeSekli_SelectedIndexChanged">
                            <asp:ListItem>Peşin</asp:ListItem>
                            <asp:ListItem>Taksit</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Taksit Sayısı</td>
                    <td>
                        <asp:RadioButtonList ID="rdl_taksitSayisi" runat="server" AutoPostBack="True" Visible="False">
                            <asp:ListItem>2 Taksit</asp:ListItem>
                            <asp:ListItem>4 Taksit</asp:ListItem>
                            <asp:ListItem>6 Taksit</asp:ListItem>
                            <asp:ListItem>8 Taksit</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Ödeme Planı</td>
                    <td>
                        <asp:Label ID="lbl_odemePlani" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
