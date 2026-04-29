<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="sehirler.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Şehir seçiniz
            <asp:DropDownList ID="ddl_sehirler" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_sehirler_SelectedIndexChanged">
                <asp:ListItem>Seçiniz</asp:ListItem>
                <asp:ListItem>İstanbul</asp:ListItem>
                <asp:ListItem>Edirne</asp:ListItem>
                <asp:ListItem>Çanakkale</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:Image ID="img_resim1" runat="server" Height="82px" Width="66px" />
            <asp:Image ID="img_resim2" runat="server" Height="82px" Width="67px" />
            <asp:Image ID="img_resim3" runat="server" Height="82px" Width="65px" />
        </div>
    </form>
</body>
</html>
