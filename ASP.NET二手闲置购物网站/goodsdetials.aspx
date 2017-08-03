<%@ Page Language="C#" AutoEventWireup="true" CodeFile="goodsdetials.aspx.cs" Inherits="goodsdetials" %>

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
                <h1 class="goods_title">所有商品信息表</h1>
            </div>
            <div class="gridview_top">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="goodsnum" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" Width="797px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                        <asp:BoundField DataField="goodsnum" HeaderText="goodsnum" ReadOnly="True" SortExpression="goodsnum" InsertVisible="False" />
                        <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                        <asp:BoundField DataField="goodsname" HeaderText="goodsname" SortExpression="goodsname" />
                        <asp:BoundField DataField="goodsprice" HeaderText="goodsprice" SortExpression="goodsprice" />
                        <asp:BoundField DataField="goodsaddress" HeaderText="goodsaddress" SortExpression="goodsaddress" />
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
                
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SecondtradingConnectionString %>" DeleteCommand="DELETE FROM [goodsDetials] WHERE [goodsnum] = @original_goodsnum AND [username] = @original_username AND [goodsname] = @original_goodsname AND [goodsprice] = @original_goodsprice AND [goodsaddress] = @original_goodsaddress" InsertCommand="INSERT INTO [goodsDetials] ([username], [goodsname], [goodsprice], [goodsaddress]) VALUES (@username, @goodsname, @goodsprice, @goodsaddress)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [goodsDetials]" UpdateCommand="UPDATE [goodsDetials] SET [username] = @username, [goodsname] = @goodsname, [goodsprice] = @goodsprice, [goodsaddress] = @goodsaddress WHERE [goodsnum] = @original_goodsnum AND [username] = @original_username AND [goodsname] = @original_goodsname AND [goodsprice] = @original_goodsprice AND [goodsaddress] = @original_goodsaddress">
                    <DeleteParameters>
                        <asp:Parameter Name="original_goodsnum" Type="Int32" />
                        <asp:Parameter Name="original_username" Type="String" />
                        <asp:Parameter Name="original_goodsname" Type="String" />
                        <asp:Parameter Name="original_goodsprice" Type="String" />
                        <asp:Parameter Name="original_goodsaddress" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="goodsname" Type="String" />
                        <asp:Parameter Name="goodsprice" Type="String" />
                        <asp:Parameter Name="goodsaddress" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="username" Type="String" />
                        <asp:Parameter Name="goodsname" Type="String" />
                        <asp:Parameter Name="goodsprice" Type="String" />
                        <asp:Parameter Name="goodsaddress" Type="String" />
                        <asp:Parameter Name="original_goodsnum" Type="Int32" />
                        <asp:Parameter Name="original_username" Type="String" />
                        <asp:Parameter Name="original_goodsname" Type="String" />
                        <asp:Parameter Name="original_goodsprice" Type="String" />
                        <asp:Parameter Name="original_goodsaddress" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                
            </div>
        </div>
        
    
    </div>
    </form>
</body>
</html>
