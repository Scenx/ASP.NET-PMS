using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class zhuce : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void lbtnty_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/zhuce/yuangongzhuce.aspx");
    }
    protected void lbtnbty_Click(object sender, EventArgs e)
    {
　　　　Response.Redirect("~/Default.aspx");             //如果不同意跳转到网站首页
    }
}
