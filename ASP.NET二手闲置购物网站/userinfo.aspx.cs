using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string username=Session["username"].ToString();
        Label7.Text ="用户名："+ username;
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("logined.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("uploadgoods.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("usermessage.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("userorder.aspx");
    }
}