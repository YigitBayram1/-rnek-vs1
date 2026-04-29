<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dogum_tarihi.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Doğum Tarihini giriniz (Gün/Ay/Yıl)<br />
            <asp:TextBox ID="txt_dogumTarihi" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_hesapla" runat="server" OnClick="btn_hesapla_Click" Text="HESAPLA" />
            <asp:Button ID="btn_temizle" runat="server" Text="TEMİZLE" />
            <br />
            <br />
            <asp:BulletedList ID="blt_sonuc" runat="server">
            </asp:BulletedList>
        </div>
    </form>
</body>
</html>
