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
public partial class xinwenxiangxi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            string title = Request["title"];
            OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
            con.Open();
            OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
            OleDbCommand cmd1 = new OleDbCommand();
            cmd.Connection = con;
            cmd1.Connection = con;
            cmd.CommandText = "select * from tb_xinwen where title='" + title + "'";
            cmd1.CommandText = "update tb_xinwen set renqi=renqi+1 where title='" + title + "'";
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            OleDbDataReader sdr = cmd.ExecuteReader();
            sdr.Read();
            if (title != "")
            {
                this.lbltitle.Text = sdr.GetString(0).ToString();
                this.TextBox1.Text = sdr.GetString(1).ToString();
                this.lblFbsj.Text = sdr.GetDateTime(2).ToShortDateString();
                this.lblfbr.Text = sdr.GetString(3);
                this.lblzzlb.Text = sdr.GetString(4).ToString();
                this.lblzs.Text = sdr.GetString(5).ToString();
                this.lblbz.Text = sdr.GetString(6).ToString();
            }
            else
            {
                Response.Write("暂无主题,不能显示");
                Response.Redirect("~/Default.aspx");//将该页跳转到指定的页面中
            }
            con.Close();
        }
      
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");//将该页跳转到指定的页面中
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("xinwenguanli.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("xinwenguanli.aspx");
    }
}
