<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 54px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table border="0" style="width: 350px">
            <tr>
                <td class="auto-style4">Yaşını Giriniz</td>
                <td aria-autocomplete="inline" class="auto-style11">
                    <asp:TextBox ID="txt_Yas" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">Cinsiyeti</td>
                <td aria-autocomplete="inline" class="auto-style1">
                    <asp:RadioButtonList ID="rdn_Cinsiyet" runat="server" RepeatDirection="Horizontal" >
                        <asp:ListItem>Bay</asp:ListItem>
                        <asp:ListItem>Bayan</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td aria-autocomplete="inline" class="auto-style9">
                    <asp:Button ID="btn_Kontrol" runat="server" Text="Kontrol Et" OnClick="btn_Kontrol_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Durumu</td>
                <td aria-autocomplete="inline" class="auto-style9">
                    <asp:Label ID="lbl_Sonuc" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    <div>
    
    </div>
    </form>
</body>
</html>
