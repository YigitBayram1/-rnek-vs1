<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="kontroller.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Kullanıcı Kayıt Formu</h2>
            <table class="auto-style1">
                <tr>
                    <td>Ad Soyad</td>
                    <td>
                        <asp:TextBox ID="txt_adSoyad" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_adSoyad" ErrorMessage="Lütfen boş bırakmayınız" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Eposta</td>
                    <td>
                        <asp:TextBox ID="txt_eposta" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_eposta" ErrorMessage="Lütfen boş bırakmayınız" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_eposta" ErrorMessage="Geçerli bir eposta adresi giriniz" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td>Yaş</td>
                    <td>
                        <asp:TextBox ID="txt_yas" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_yas" ErrorMessage="Lütfen boş bırakmayınız" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txt_yas" ErrorMessage="18 ile 65 arasında yaş giriniz" ForeColor="Red" MaximumValue="65" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td>Şifre</td>
                    <td>
                        <asp:TextBox ID="txt_sifre" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_sifre" ErrorMessage="Lütfen boş bırakmayınız" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>Şifre (Tekrar)</td>
                    <td>
                        <asp:TextBox ID="txt_sifreTekrar" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txt_sifreTekrar" ErrorMessage="Lütfen boş bırakmayınız" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_sifre" ControlToValidate="txt_sifreTekrar" ErrorMessage="Şifreler eşleşmiyor" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="btn_kaydet" runat="server" OnClick="btn_kaydet_Click" Text="KAYDET" />
                    </td>
                </tr>
            </table>
        </div>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" HeaderText="Lütfen Hataları Düzeltin" />
        <asp:Label ID="lbl_sonuc" runat="server" ForeColor="Red"></asp:Label>
    </form>
</body>
</html>
