<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>注册</title>
    <link href="css/register.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="top_title">大学生二手交易网站</div>
       
    <div class="login">
        <div class="login_content"> 
            <div class="login_cu">        
                用户名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                <br/>
                密&nbsp;&nbsp;&nbsp;码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox2" ErrorMessage="密码不一致"></asp:CompareValidator>
                <br />
                确认密码：<asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="密码不一致"></asp:CompareValidator>
                <br />
                手机号码：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                <br/>
                <asp:Button ID="Button1" runat="server" Text="注册" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="退出" OnClick="Button2_Click" CausesValidation="False" />
            </div> 
        </div>
    </div>
    </form>
</body>
</html>
