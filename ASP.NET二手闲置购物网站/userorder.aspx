<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userorder.aspx.cs" Inherits="userorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/userinfo.css" rel="stylesheet" />
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
    <div class="left">
        <div class="left-1">
            <asp:Button CssClass="lable" ID="Button4" runat="server" Text="账号管理" OnClick="Button4_Click" />
        </div>
        <div class="left-1">
            <asp:Button CssClass="lable" ID="Button3" runat="server" Text="我要上传" OnClick="Button3_Click"/>
        </div>
        <div class="left-1">
            <asp:Button CssClass="lable" ID="Button5" runat="server" Text="订单管理" />
        </div>
        <div class="left-1">
            <asp:Button CssClass="lable" ID="Button6" runat="server" Text="我的店铺" />
        </div>
        <div class="left-1">
            <asp:Button CssClass="lable" ID="Button7" runat="server" Text="系统通知" />
        </div>
        <div class="left-1">
            <asp:Button CssClass="lable" ID="Button8" runat="server" Text="客服中心" />
        </div>
        <div class="left-1">
            <asp:Button CssClass="lable" ID="Button9" runat="server" Text="购 物 车" />
        </div>
        <div class="left-1">
            <asp:Button CssClass="lable" ID="Button10" runat="server" Text="我的收藏" />
        </div>
    </div>
    <div class="right">
        <div class="image">
            <asp:Image ID="Image1" runat="server" Height="131px" ImageUrl="~/images/youxiang.jpg" Width="145px" />
        </div>
        <div class ="username">
            <asp:Label ID="Label7" runat="server" Text="用户名：admin" ForeColor="#333399"></asp:Label>
        </div>
        <div class="info_content">
           <p class="p1">
                <asp:Label ID="Label8" runat="server" Text="商品编号："></asp:Label>
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
           </p>
            <p class="p1">
                <asp:Label ID="Label2" runat="server" Text="用户名："></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
           </p>
            <p class="p1">
                <asp:Label ID="Label4" runat="server" Text="商品名："></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
           </p>
            <p class="p1">
                <asp:Label ID="Label6" runat="server" Text="收货地址："></asp:Label>
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
           </p>
            <p class="p1">
                <asp:Label ID="Label10" runat="server" Text="手机号码："></asp:Label>
                <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
           </p>
        </div>
    </div>
    </form>
</body>
</html>
