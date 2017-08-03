<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uploadgoods.aspx.cs" Inherits="uploadgoods" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>我要上传</title>
    <link href="css/uploadgoods.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="top">
        <div class="top_title">大学生二手交易网</div>
        <div class="top_right">
            <div class="top_button">        
                <asp:Button ID="Button2" runat="server" Text="退出" OnClick="Button2_Click" CausesValidation="False"/>
            </div>
        </div>
    </div>
    <div class="up_content">
        <p>
            <asp:Label ID="Label1" runat="server" Text="用户名："></asp:Label>
            <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="商品名称："></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="商品价格："></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" Text="商品地址："></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Label ID="Label9" runat="server" Text="选 择图 片:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="..."/>
        </p>
        <p>
            <asp:Button CssClass="up_btn" ID="Button3" runat="server" Text="上传" OnClick="Button3_Click" />
            <asp:Button CssClass="up_btn" ID="Button4" runat="server" Text="退出" OnClick="Button4_Click" CausesValidation="False" />
        </p>
    </div>
    </form>
    </body>
</html>
