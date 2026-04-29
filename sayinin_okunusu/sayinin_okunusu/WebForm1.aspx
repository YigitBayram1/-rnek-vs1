<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="sayinin_okunusu.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            4 basamaklı sayı
            <asp:TextBox ID="txt_sayi" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btn_oku" runat="server" OnClick="btn_oku_Click" Text="OKUNUŞU" />
            <br />
            <br />
            <asp:Label ID="lbl_sonuc" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
