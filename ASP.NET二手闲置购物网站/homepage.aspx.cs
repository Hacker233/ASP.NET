using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {

        Response.Write(@"<script>alert('请登录！');</script>");
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Write(@"<script>alert('请登录！');</script>");
    }
    protected void Button9_Click(object sender, EventArgs e)
    {
        Response.Write(@"<script>alert('请登录！');</script>");
    }
    protected void Button11_Click(object sender, EventArgs e)
    {
        Response.Write(@"<script>alert('请登录！');</script>");
    }
    protected void Button13_Click(object sender, EventArgs e)
    {
        Response.Write(@"<script>alert('请登录！');</script>");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Write(@"<script>alert('请登录！');</script>");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Write(@"<script>alert('请登录！');</script>");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Write(@"<script>alert('请登录！');</script>");
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        Response.Write(@"<script>alert('请登录！');</script>");
    }
    protected void Button10_Click(object sender, EventArgs e)
    {
        Response.Write(@"<script>alert('请登录！');</script>");
    }
    protected void Button12_Click(object sender, EventArgs e)
    {
        Response.Write(@"<script>alert('请登录！');</script>");
    }
    protected void Button14_Click(object sender, EventArgs e)
    {
        Response.Write(@"<script>alert('请登录！');</script>");
    }
}