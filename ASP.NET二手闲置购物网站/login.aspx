<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>登录</title>
    <link href="css/register.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="top_title">大学生二手交易网</div>
    <div class="login">
        <div class="login_content"> 
            <div class="login_cu">        
                用户名：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br/>
                密&nbsp;&nbsp;&nbsp;码：<asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>

                <br />
                <asp:RadioButton  ID="RadioButton1" runat="server" Text="记住用户名" Checked="True" />
                <asp:RadioButton  ID="RadioButton2" runat="server" Text="记住密码" />
                <asp:RadioButton ID="RadioButton3" runat="server" Text="管理员" />
                <br />
                <asp:Button CssClass="login_btn" ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button CssClass="login_btn" ID="Button2" runat="server" Text="退出" OnClick="Button2_Click" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SecondtradingConnectionString %>" DeleteCommand="DELETE FROM [user] WHERE [用户名] = @original_用户名 AND [密码] = @original_密码 AND [手机号] = @original_手机号 AND [所在地址] = @original_所在地址 AND [购买数量] = @original_购买数量" InsertCommand="INSERT INTO [user] ([用户名], [密码], [手机号], [所在地址], [购买数量]) VALUES (@用户名, @密码, @手机号, @所在地址, @购买数量)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [user]" UpdateCommand="UPDATE [user] SET [密码] = @密码, [手机号] = @手机号, [所在地址] = @所在地址, [购买数量] = @购买数量 WHERE [用户名] = @original_用户名 AND [密码] = @original_密码 AND [手机号] = @original_手机号 AND [所在地址] = @original_所在地址 AND [购买数量] = @original_购买数量">
                    <DeleteParameters>
                        <asp:Parameter Name="original_用户名" Type="String" />
                        <asp:Parameter Name="original_密码" Type="String" />
                        <asp:Parameter Name="original_手机号" Type="String" />
                        <asp:Parameter Name="original_所在地址" Type="String" />
                        <asp:Parameter Name="original_购买数量" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="用户名" Type="String" />
                        <asp:Parameter Name="密码" Type="String" />
                        <asp:Parameter Name="手机号" Type="String" />
                        <asp:Parameter Name="所在地址" Type="String" />
                        <asp:Parameter Name="购买数量" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="密码" Type="String" />
                        <asp:Parameter Name="手机号" Type="String" />
                        <asp:Parameter Name="所在地址" Type="String" />
                        <asp:Parameter Name="购买数量" Type="String" />
                        <asp:Parameter Name="original_用户名" Type="String" />
                        <asp:Parameter Name="original_密码" Type="String" />
                        <asp:Parameter Name="original_手机号" Type="String" />
                        <asp:Parameter Name="original_所在地址" Type="String" />
                        <asp:Parameter Name="original_购买数量" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div> 
        </div>
    </div>
    </form>
</body>
</html>
