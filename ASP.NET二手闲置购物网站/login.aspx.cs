using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.ToString().Trim() == "" || TextBox2.Text.ToString().Trim() == "")
        {
            Response.Write("<script>javascript:alert('请输入完整');history.back();</script>");
            Response.End();
        }
        Session["username"] = TextBox1.Text;
        string connstr = ConfigurationManager.ConnectionStrings["SecondtradingConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connstr);
        if (RadioButton3.Checked)
        {
            string str = "select count(*) from manager where mangername='" + TextBox1.Text + "' and mangerpasswprd='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if (count > 0)
            {
                Response.Redirect("managerlogined.aspx");
            }
            else
            {
                Response.Write("<script> alert('用户名或密码不正确！')</script>");
            }
        }
        else
        { 
            string str = "select count(*) from [user] where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
            SqlCommand cmd = new SqlCommand(str, conn);
            conn.Open();
            int count = Convert.ToInt32(cmd.ExecuteScalar());
            if (count > 0)
            {
                Response.Redirect("logined.aspx");
            }
        }
       
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("homepage.aspx");
    }
}
