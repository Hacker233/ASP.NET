using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class usermessage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username=Session["username"].ToString();
        Label7.Text = username;
        string connstr=ConfigurationManager.ConnectionStrings["SecondtradingConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();
        string str = "select * from [userinfo] where username='"+username+"'";
        SqlDataAdapter sda = new SqlDataAdapter(str, conn);
        DataTable dt = new DataTable();
        sda.Fill(dt);//把数据填充到dt里，dt是一个表。
        Label1.Text = dt.Rows[0][0].ToString();//dt表第1行第一列 这单元格的内容转换为string类型后赋给label
        Label3.Text = dt.Rows[0][1].ToString();
        Label5.Text = dt.Rows[0][2].ToString();
        Label9.Text = dt.Rows[0][3].ToString();
        Label11.Text = dt.Rows[0][4].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("logined.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("uploadgoods.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("userorder.aspx");
    }
}