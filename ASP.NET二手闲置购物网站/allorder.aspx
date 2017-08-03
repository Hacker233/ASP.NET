<%@ Page Language="C#" AutoEventWireup="true" CodeFile="allorder.aspx.cs" Inherits="allorder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="css/goodsdetails.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <div class="top">
        <div class="top_title">大学生二手交易网</div>
        <div class="top_right">
            <div class="top_button">        
                <asp:Button ID="Button2" runat="server" Text="退出" OnClick="Button2_Click" />
            </div>
        </div>
    </div>
        <div class="goodsgridview">
            <div class="griview_title">
                <h1 class="goods_title">所有订单信息表</h1>
            </div>
            <div class="gridview_top">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ordernum" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="797px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="ordernum" HeaderText="订单编号" ReadOnly="True" SortExpression="ordernum" />
                        <asp:BoundField DataField="orderusername" HeaderText="用户名" SortExpression="orderusername" />
                        <asp:BoundField DataField="goodsname" HeaderText="商品名称" SortExpression="goodsname" />
                        <asp:BoundField DataField="orderaddress" HeaderText="订单地址" SortExpression="orderaddress" />
                        <asp:BoundField DataField="phonenum" HeaderText="手机号码" SortExpression="phonenum" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SecondtradingConnectionString %>" DeleteCommand="DELETE FROM [order] WHERE [ordernum] = @original_ordernum AND [orderusername] = @original_orderusername AND [goodsname] = @original_goodsname AND [orderaddress] = @original_orderaddress AND [phonenum] = @original_phonenum" InsertCommand="INSERT INTO [order] ([ordernum], [orderusername], [goodsname], [orderaddress], [phonenum]) VALUES (@ordernum, @orderusername, @goodsname, @orderaddress, @phonenum)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [order]" UpdateCommand="UPDATE [order] SET [orderusername] = @orderusername, [goodsname] = @goodsname, [orderaddress] = @orderaddress, [phonenum] = @phonenum WHERE [ordernum] = @original_ordernum AND [orderusername] = @original_orderusername AND [goodsname] = @original_goodsname AND [orderaddress] = @original_orderaddress AND [phonenum] = @original_phonenum">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ordernum" Type="String" />
                        <asp:Parameter Name="original_orderusername" Type="String" />
                        <asp:Parameter Name="original_goodsname" Type="String" />
                        <asp:Parameter Name="original_orderaddress" Type="String" />
                        <asp:Parameter Name="original_phonenum" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="ordernum" Type="String" />
                        <asp:Parameter Name="orderusername" Type="String" />
                        <asp:Parameter Name="goodsname" Type="String" />
                        <asp:Parameter Name="orderaddress" Type="String" />
                        <asp:Parameter Name="phonenum" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="orderusername" Type="String" />
                        <asp:Parameter Name="goodsname" Type="String" />
                        <asp:Parameter Name="orderaddress" Type="String" />
                        <asp:Parameter Name="phonenum" Type="String" />
                        <asp:Parameter Name="original_ordernum" Type="String" />
                        <asp:Parameter Name="original_orderusername" Type="String" />
                        <asp:Parameter Name="original_goodsname" Type="String" />
                        <asp:Parameter Name="original_orderaddress" Type="String" />
                        <asp:Parameter Name="original_phonenum" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    
    </div>
    </form>
</body>
</html>
