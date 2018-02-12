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

public partial class userControl_syhead : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
 
    protected void imgTscx_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void imgTccx_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/cheliangxinxi/cheliangchaxun.aspx");
    }
    protected void imgSbwh_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/weihuxinxi/weixuichaxun.aspx");
    }
    protected void imbSy_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
    protected void imbYgxx_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/yuangongxinxi/yuangonginfo.aspx");
    }

    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/xinwenxinxi/xinwenguanli.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/cheliangxinxi/cheliangguanli.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/qianfeixinxi/qianfeiguanli.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/zhuhuxinxi/zhuhuxinxiguanli.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/weihuxinxi/weixuiguanli.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/tousuxinxi/tousuguanli.aspx");
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/zhibanyuangong.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {

        Response.Redirect("~/guanliyuan/guanliyuandenglu.aspx");
    }
}
