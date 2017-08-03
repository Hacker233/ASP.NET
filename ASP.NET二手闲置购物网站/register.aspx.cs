using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["phonenum"] = TextBox4.Text;
        string username = TextBox1.Text;
        string password = TextBox2.Text;
        string phonenum = TextBox4.Text;
        string phonenumber = TextBox4.Text;
        string connstr = ConfigurationManager.ConnectionStrings["SecondtradingConnectionString"].ConnectionString;
        string sql = "insert into [user](username,password,phonenum) values(@username,@password,@phonenum)";
        SqlParameter[] parameters = { new SqlParameter("@username", username), new SqlParameter("@password", password), new SqlParameter("@phonenum", phonenum) };
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
        string sql2 = "insert into [userinfo](username,phonenumber) values(@username,@phonenumber)";
        SqlParameter[] parameters2 = { new SqlParameter("@username", username), new SqlParameter("@phonenumber", phonenumber) };
     
       using (SqlConnection conn = new SqlConnection(connstr))
        {
            conn.Open();
            using (SqlCommand cmd = conn.CreateCommand())
            {
                cmd.CommandText = sql2;
                cmd.Parameters.AddRange(parameters2);
                cmd.ExecuteNonQuery();
            }
        }
        Response.Write(@"<script>alert('注册成功！');</script>");
        Response.Redirect("login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("homepage.aspx");
    }
}