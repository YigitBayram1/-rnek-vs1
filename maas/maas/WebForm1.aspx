<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="maas.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td>Maaşınız</td>
                    <td>
                        <asp:TextBox ID="txt_maas" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Mesainiz Var mı ?</td>
                    <td>
                        <asp:RadioButtonList ID="rdl_mesaiVarmi" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rdl_mesaiVarmi_SelectedIndexChanged" RepeatDirection="Horizontal">
                            <asp:ListItem>Evet</asp:ListItem>
                            <asp:ListItem>Hayır</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Toplam Mesai Ücretiniz</td>
                    <td>
                        <asp:TextBox ID="txt_mesai" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_hesapla" runat="server" OnClick="btn_hesapla_Click" Text="HESAPLA" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Label ID="lbl_sonuc" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
