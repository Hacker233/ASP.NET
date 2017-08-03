<%@ Page Language="C#" AutoEventWireup="true" CodeFile="buy.aspx.cs" Inherits="buy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/buy.css" rel="stylesheet" />
</head>
<body>
       
    <form id="form1" runat="server">
   <div class="top">
        <div class="top_title">大学生二手交易网</div>
        <div class="top_right">
            <div class="top_button">        
                <asp:Button ID="Button2" runat="server" Text="退出" OnClick="Button2_Click"/>
            </div>
        </div>
    </div>
        <div class="buy_content">
            <p><asp:Label ID="Label1" runat="server" Text="订单编号："></asp:Label>
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </p>
            <p><asp:Label ID="Label2" runat="server" Text="用户名："></asp:Label>
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </p>
            <p><asp:Label ID="Label3" runat="server" Text="商品名称："></asp:Label>
                <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
            </p>
            <p>
                <asp:Label ID="Label4" runat="server" Text="填写地址："></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></p>
            <p>
                <asp:Label ID="Label5" runat="server" Text="手机号码："></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            </p>
            <p>
                <asp:Button CssClass="buy_btn" ID="Button1" runat="server" Text="支付" OnClick="Button1_Click" />
                <asp:Button CssClass="buy_btn" ID="Button3" runat="server" Text="我在看看" OnClick="Button3_Click" />
            </p>
        </div>
    </form>
</body>
</html>
