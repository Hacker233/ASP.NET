using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class buy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string ordernum = Session["ordernum"].ToString();
        Label6.Text = ordernum;
        string orderusername = Session["username"].ToString();
        Label7.Text = orderusername;
        string goodsname = Session["goodsname"].ToString();
        Label8.Text =goodsname;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("logined.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string ordernum = Label6.Text;
        string orderusername = Label7.Text;
        string goodsname = Label8.Text;
        string orderaddress = TextBox1.Text;
        string phonenum = TextBox2.Text;
        string connstr = ConfigurationManager.ConnectionStrings["SecondtradingConnectionString"].ConnectionString;
        string sql = "insert into [order] (orderusername,goodsname,orderaddress,phonenum) values(@orderusername,@goodsname,@orderaddress,@phonenum)";
        SqlParameter[] parameters = {new SqlParameter("@orderusername", orderusername), new SqlParameter("@goodsname", goodsname), new SqlParameter("@orderaddress", orderaddress), new SqlParameter("@phonenum", phonenum) };
        using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            using (SqlCommand cmd = conn.CreateCommand())
            {
                cmd.CommandText = sql;
                cmd.Parameters.AddRange(parameters);
                cmd.ExecuteNonQuery();
            }
        }

        Response.Write(@"<script>alert('购买成功！');</script>");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("logined.aspx");
    }
}