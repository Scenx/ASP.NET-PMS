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
using System.Data.OleDb;
public partial class qianfei : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!this.IsPostBack)
        {
            string name = Request["name"].ToString();
            OleDbConnection con = DB.createDB();
            con.Open();
            OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
            cmd.Connection = con;
            cmd.CommandText = "select * from tb_qianfei where name='" + name + "'";
            cmd.ExecuteNonQuery();
            OleDbDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read() && name!= "")
            {
                this.lblqfname.Text = sdr.GetString(0).ToString();
                this.lblzz.Text = sdr.GetString(1);
                this.lbllb.Text = sdr.GetString(2);
                this.lblrqzs.Text = sdr.GetDateTime(3).ToShortDateString();
                this.lblzzsj.Text = sdr.GetDateTime(4).ToShortDateString();
                this.lblje.Text = sdr.GetString(5).ToString();
                this.Lblzt.Text = sdr.GetString(6).ToString();
                this.lbljsr.Text = sdr.GetString(7).ToString();
            }
            else
            {
                Response.Write("暂无主题,不能显示");
                Response.Redirect("~/Default.aspx");//将该页跳转到指定的页面中
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");//将该页跳转到指定的页面中
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("qianfeicx.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("qianfeishenhe.aspx");
    }
}
