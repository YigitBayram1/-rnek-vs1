<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uye_bilgi.aspx.cs" Inherits="veritabani1.uye_bilgi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 500px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Image ID="img_uyeResim" runat="server" Height="104px" Width="79px" />
                    </td>
                </tr>
                <tr>
                    <td>Üye Adı</td>
                    <td>
                        <asp:TextBox ID="txt_ad" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Üye Soyadı</td>
                    <td>
                        <asp:TextBox ID="txt_soyad" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Üye Telefonu</td>
                    <td>
                        <asp:TextBox ID="txt_telefon" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:LinkButton ID="btn_cikis" runat="server" OnClick="btn_cikis_Click">Çıkış</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
