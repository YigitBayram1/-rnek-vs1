<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="mevsimler.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ListBox ID="lst_mevsimler" runat="server" AutoPostBack="True" Height="178px" OnSelectedIndexChanged="lst_mevsimler_SelectedIndexChanged" Width="158px"></asp:ListBox>
            <asp:ListBox ID="lst_aylar" runat="server" Height="178px" Width="158px"></asp:ListBox>
        </div>
    </form>
</body>
</html>
