<%@ Page Language="C#" AutoEventWireup="true" CodeFile="managerlogined.aspx.cs" Inherits="managerlogined" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/managerlogined.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="top">
        <div class="top_title">大学生二手交易网</div>
        <div class="top_right">
            <div class="top_button">        
                <asp:Button ID="Button2" runat="server" Text="退出" OnClick="Button2_Click" />
            </div>
        </div>
    </div>
    <div class="image_left">
        <img class="image_body" src="images/body.jpg" />
    </div>
    <div class="img_right">
        <asp:Button CssClass="btn1" ID="Button1" runat="server" Text="所有订单" OnClick="Button1_Click" />
        <asp:Button CssClass="btn1" ID="Button3" runat="server" Text="所有商品" OnClick="Button3_Click" />
        <asp:Button CssClass="btn1" ID="Button4" runat="server" Text="购物车" OnClick="Button4_Click" />
        <asp:Button CssClass="btn1" ID="Button5" runat="server" Text="用户信息" OnClick="Button5_Click" />
    </div>
    </form>
</body>
</html>
