<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="kontroller2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <table class="auto-style1">
                <tr>
                    <td>Ad Soyad</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Lütfen Ad ve soyad giriniz" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Cinsiyet</td>
                    <td>
            <asp:RadioButtonList ID="rblCinsiyet" runat="server" RepeatDirection="Horizontal">
    <asp:ListItem Text="Erkek" Value="E"></asp:ListItem>
    <asp:ListItem Text="Kadın" Value="K"></asp:ListItem>
</asp:RadioButtonList>

                    </td>
                    <td>

<asp:RequiredFieldValidator
    ID="rfvCinsiyet"
    runat="server"
    ControlToValidate="rblCinsiyet"
    InitialValue=""
    ErrorMessage="Lütfen cinsiyet seçiniz."
    ForeColor="Red">
</asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Yaşadığınız Şehir</td>
                    <td class="auto-style2">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>Seçiniz</asp:ListItem>
                            <asp:ListItem>İstanbul</asp:ListItem>
                            <asp:ListItem>Ankara</asp:ListItem>
                            <asp:ListItem>İzmir</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Lütfen şehir seçiniz" ForeColor="Red" InitialValue="Seçiniz"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>

<asp:Button ID="btnKaydet" runat="server" Text="Kaydet"  />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <br />

<br />

        </div>
    </form>
</body>
</html>
