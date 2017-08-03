using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class logined : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button15_Click(object sender, EventArgs e)
    {
        Response.Redirect("userinfo.aspx");
    }
    protected void Button16_Click(object sender, EventArgs e)
    {
        Response.Redirect("homepage.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["goodsname"] = Label7.Text;
        Session["ordernum"] = Label13.Text;
        Response.Redirect("buy.aspx");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Session["goodsname"] = Label10.Text;
        Session["ordernum"] = Label16.Text;
        Response.Redirect("buy.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Session["goodsname"] = Label9.Text;
        Session["ordernum"] = Label14.Text;
        Response.Redirect("buy.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Session["goodsname"] = Label9.Text;
        Session["ordernum"] = Label15.Text;
        Response.Redirect("buy.aspx");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Session["goodsname"] = Label11.Text;
        Session["ordernum"] = Label17.Text;
        Response.Redirect("buy.aspx");
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        Session["goodsname"] = Label12.Text;
        Session["ordernum"] = Label18.Text;
        Response.Redirect("buy.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        string goodsname = Label7.Text;
        string username = Session["username"].ToString();
        string connstr = ConfigurationManager.ConnectionStrings["SecondtradingConnectionString"].ConnectionString;
        string sql = "insert into [buycar] (goodsname,username) values(@goodsname,@username)";
        SqlParameter[] parameters = {new SqlParameter("@goodsname", goodsname), new SqlParameter("@username", username) };
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

        Response.Write(@"<script>alert('加入购物车成功！');</script>");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        string goodsname = Label8.Text;
        string username = Session["username"].ToString();
        string connstr = ConfigurationManager.ConnectionStrings["SecondtradingConnectionString"].ConnectionString;
        string sql = "insert into [buycar] (goodsname,username) values(@goodsname,@username)";
        SqlParameter[] parameters = { new SqlParameter("@goodsname", goodsname), new SqlParameter("@username", username) };
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

        Response.Write(@"<script>alert('加入购物车成功！');</script>");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        string goodsname = Label9.Text;
        string username = Session["username"].ToString();
        string connstr = ConfigurationManager.ConnectionStrings["SecondtradingConnectionString"].ConnectionString;
        string sql = "insert into [buycar] (goodsname,username) values(@goodsname,@username)";
        SqlParameter[] parameters = { new SqlParameter("@goodsname", goodsname), new SqlParameter("@username", username) };
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

        Response.Write(@"<script>alert('加入购物车成功！');</script>");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        string goodsname = Label10.Text;
        string username = Session["username"].ToString();
        string connstr = ConfigurationManager.ConnectionStrings["SecondtradingConnectionString"].ConnectionString;
        string sql = "insert into [buycar] (goodsname,username) values(@goodsname,@username)";
        SqlParameter[] parameters = { new SqlParameter("@goodsname", goodsname), new SqlParameter("@username", username) };
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

        Response.Write(@"<script>alert('加入购物车成功！');</script>");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        string goodsname = Label11.Text;
        string username = Session["username"].ToString();
        string connstr = ConfigurationManager.ConnectionStrings["SecondtradingConnectionString"].ConnectionString;
        string sql = "insert into [buycar] (goodsname,username) values(@goodsname,@username)";
        SqlParameter[] parameters = { new SqlParameter("@goodsname", goodsname), new SqlParameter("@username", username) };
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

        Response.Write(@"<script>alert('加入购物车成功！');</script>");
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        string goodsname = Label12.Text;
        string username = Session["username"].ToString();
        string connstr = ConfigurationManager.ConnectionStrings["SecondtradingConnectionString"].ConnectionString;
        string sql = "insert into [buycar] (goodsname,username) values(@goodsname,@username)";
        SqlParameter[] parameters = { new SqlParameter("@goodsname", goodsname), new SqlParameter("@username", username) };
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

        Response.Write(@"<script>alert('加入购物车成功！');</script>");
    }
}