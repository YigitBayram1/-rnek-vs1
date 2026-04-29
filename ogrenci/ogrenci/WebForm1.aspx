<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ogrenci.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="img_ogrenciler" runat="server" Height="100px" Width="77px" />
            <br />
            <br />
            <asp:DropDownList ID="ddl_liste" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_liste_SelectedIndexChanged">
                <asp:ListItem Value="Seçiniz.jpg">Seçiniz</asp:ListItem>
                <asp:ListItem Value="Mustafa.jpg">Mustafa</asp:ListItem>
                <asp:ListItem Value="Ayşe.jpg">Ayşe</asp:ListItem>
                <asp:ListItem Value="Mehmet.jpg">Mehmet</asp:ListItem>
            </asp:DropDownList>
        </div>
    </form>
</body>
</html>
