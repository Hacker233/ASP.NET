using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class uploadgoods : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label10.Text = Session["username"].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("userinfo.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("userinfo.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string username = Session["username"].ToString();
        string goodsname = TextBox2.Text;
        string goodsprice = TextBox3.Text;
        string goodsaddress = TextBox4.Text;
        string connstr = ConfigurationManager.ConnectionStrings["SecondtradingConnectionString"].ConnectionString;
        string sql = "insert into [goodsDetials](username,goodsname,goodsprice,goodsaddress) values(@username,@goodsname,@goodsprice,@goodsaddress)";
        SqlParameter[] parameters = { new SqlParameter("@username", username), new SqlParameter("@goodsname", goodsname), new SqlParameter("@goodsprice", goodsprice), new SqlParameter("@goodsaddress", goodsaddress) };
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

        Response.Write(@"<script>alert('上传成功！');</script>");
    }
}