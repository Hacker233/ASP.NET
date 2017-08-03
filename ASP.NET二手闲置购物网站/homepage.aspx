<%@ Page Language="C#" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>首页</title>
    <link href="css/top.css" rel="stylesheet" />
    <style type="text/css">
        .top_right {
            height: 46px;
            width: 612px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="top">
        <div class="top_title">大学生二手交易网</div>
        <div class="top_right">
            <div class="top_button">
                <asp:Button ID="Button1" runat="server" Text="登录" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="注册" OnClick="Button2_Click" />
            </div>
        </div>
    </div>
    <div class="search">
        <div class="search_content">
            <div class="search_content_1">
                <asp:Label CssClass="search_1" ID="Label_search" runat="server" Text="站内搜索"></asp:Label>
                <asp:TextBox CssClass="search_1" ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button CssClass="search_1" ID="Button17" runat="server" Text="搜一搜" />
           </div>
        </div>
    </div>
        <div class="ad1">
            <span class="ad_title1">闲&nbsp; 置&nbsp; 物&nbsp; 品&nbsp; 大&nbsp; 杂&nbsp; 烩</span>
        </div>
        <div class="content">
            <div class="show_content">
                <div class="show_things">
                    <img src="images/1.jpg" class="jpg" />
                    <div class="buy">
                        <asp:Label ID="Label7" runat="server" Text="￥100-二手摩托"></asp:Label>
                        <div class="btn_buy">
                            <asp:Button CssClass="btn_shopping" ID="Button3" runat="server" Text="购买" OnClick="Button3_Click" BorderStyle="Groove" />
                            <asp:Button CssClass="btn_shopping" ID="Button4" runat="server" Text="添加到购物车" OnClick="Button4_Click" />
                        </div>
                        <asp:Label CssClass="goods_lable" ID="Label1" runat="server" Text="&gt;&gt;&gt;"></asp:Label>
                        <asp:Label ID="Label13" runat="server" Text="001"></asp:Label>
                    </div>
                </div>
                <div class="show_things">
                    <img src="images/2.jpg" class="jpg" />
                    <div class="buy">
                        <asp:Label ID="Label8" runat="server" Text="￥100-二手车"></asp:Label>
                        <div class="btn_buy">
                            <asp:Button CssClass="btn_shopping" ID="Button5" runat="server" Text="购买" OnClick="Button5_Click" BorderStyle="Groove" />
                            <asp:Button CssClass="btn_shopping" ID="Button6" runat="server" Text="添加到购物车" OnClick="Button6_Click" />
                        </div>
                        <asp:Label CssClass="goods_lable" ID="Label2" runat="server" Text="&gt;&gt;&gt;"></asp:Label>
                        <asp:Label ID="Label14" runat="server" Text="002"></asp:Label>
                    </div>
                </div>
                <div class="show_things_2">
                    <img src="images/3.jpg" class="jpg" />
                    <div class="buy">
                        <asp:Label ID="Label9" runat="server" Text="￥100-创意桌子"></asp:Label>
                        <div class="btn_buy">
                            <asp:Button CssClass="btn_shopping" ID="Button7" runat="server" Text="购买" OnClick="Button7_Click" />
                            <asp:Button CssClass="btn_shopping" ID="Button8" runat="server" Text="添加到购物车" OnClick="Button8_Click" />
                        </div>
                        <asp:Label CssClass="goods_lable" ID="Label3" runat="server" Text="&gt;&gt;&gt;"></asp:Label>
                        <asp:Label ID="Label15" runat="server" Text="003"></asp:Label>
                    </div>
                </div>
                <div class="show_things_2">
                    <img src="images/4.jpg" class="jpg" />
                    <div class="buy">
                        <asp:Label ID="Label10" runat="server" Text=" ￥100-二手衣柜 "></asp:Label>
                        <div class="btn_buy">
                            <asp:Button CssClass="btn_shopping" ID="Button9" runat="server" Text="购买" OnClick="Button9_Click" />
                            <asp:Button CssClass="btn_shopping" ID="Button10" runat="server" Text="添加到购物车" OnClick="Button10_Click" />
                        </div>
                        <asp:Label CssClass="goods_lable" ID="Label4" runat="server" Text="&gt;&gt;&gt;"></asp:Label>
                        <asp:Label ID="Label16" runat="server" Text="004"></asp:Label>
                    </div>
                </div>
                <div class="show_things_3">
                    <img src="images/5.jpg" class="jpg" />
                    <div class="buy">
                        <asp:Label ID="Label11" runat="server" Text="￥100-饭店套装"></asp:Label>
                        <div class="btn_buy">
                            <asp:Button CssClass="btn_shopping" ID="Button11" runat="server" Text="购买" OnClick="Button11_Click" />
                            <asp:Button CssClass="btn_shopping" ID="Button12" runat="server" Text="添加到购物车" OnClick="Button12_Click" />
                        </div>
                        <asp:Label CssClass="goods_lable" ID="Label5" runat="server" Text="&gt;&gt;&gt;"></asp:Label>
                        <asp:Label ID="Label17" runat="server" Text="005"></asp:Label>
                    </div>
                </div>
                <div class="show_things_3">
                    <img src="images/6.jpg" class="jpg" />
                    <div class="buy">
                        <asp:Label ID="Label12" runat="server" Text="￥100-iphone5"></asp:Label>
                        <div class="btn_buy">
                            <asp:Button CssClass="btn_shopping" ID="Button13" runat="server" Text="购买" OnClick="Button13_Click" />
                            <asp:Button CssClass="btn_shopping" ID="Button14" runat="server" Text="添加到购物车" OnClick="Button14_Click" />
                        </div>
                        <asp:Label CssClass="goods_lable" ID="Label6" runat="server" Text="&gt;&gt;&gt;"></asp:Label>
                        <asp:Label ID="Label18" runat="server" Text="006"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="wrap">
                <ul class="content_ul">
                    <li class="content_li" data-id="a">
                        <span>生活用品</span>
                    </li>
                    <li class="content_li" data-id="b">
                        <span>体育用品</span>
                    </li>
                    <li class="content_li" data-id="c">
                        <span>男士服装</span>
                    </li>
                    <li class="content_li" data-id="d">
                        <span>特价爆款</span>
                    </li>
                    <li class="content_li" data-id="e">
                        <span>女士服装</span>
                    </li>
                    <li class="content_li" data-id="f">
                        <span>电子产品</span>
                    </li>
                    <li class="content_li" data-id="g">
                        <span>教学资源</span>
                    </li>
                    <li class="content_li" data-id="h">
                        <span>手机专卖</span>
                    </li>
                </ul>
            </div>
            <div class="ad_image_right">
                <img class="body8" src="images/body8.jpg" />
            </div>
        </div>
        <div class="buttom">
         <div class="dowm">
                <ul>
                    <li class="buttom_li"><a href="#">联系我们</a></li>
                    <li class="buttom_li"><a href="#">客服人员</a></li>
                    <li class="buttom_li"><a href="#">联系地址</a></li>
                    <li class="buttom_li"><a href="#">意见反馈</a></li>
                    <li class="buttom_li"><a href="#">应聘工作</a></li>
                    <li class="buttom_li"><a href="#">关注我们</a></li>
                    <li class="buttom_li"><a href="#">投诉我们</a></li>
                </ul>
           </div>
        </div>
    </form>
</body>
</html>
