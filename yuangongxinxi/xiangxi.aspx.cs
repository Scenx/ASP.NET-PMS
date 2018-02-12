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

public partial class xiangxi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null && Session["pwd"] == null)
        {
            Response.Redirect("~/guanliyuan/guanliyuandenglu.aspx");//将该页跳转到指定的页面中
        }
       
       // this.lblSj.Text = System.DateTime.Now.ToLongTimeString();
        string id = Request["id"];

        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();             //打开数据库连接
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        cmd.CommandText = "select * from tb_yuangong where id='" + id + "'";
        cmd.ExecuteNonQuery();
        OleDbDataReader sdr = cmd.ExecuteReader();
        sdr.Read();
        this.imgTp.ImageUrl = sdr.GetString(1);
        this.lblBhx.Text = sdr.GetString(0);
        this.lblZwmx.Text = sdr.GetString(2);
        this.lblYwmx.Text = sdr.GetString(3);
        this.lblZzlbx.Text = sdr.GetString(4);
        this.lblGzztx.Text = sdr.GetString(5);
        this.lblXbx.Text = sdr.GetString(6);
        this.lblHyztx.Text = sdr.GetString(7);
        this.lblJkztx.Text = sdr.GetString(8);
        this.lblMzx.Text = sdr.GetString(9);
        this.lblCsnyx.Text = sdr.GetDateTime(10).ToShortDateString();
        this.lblHkszx.Text = sdr.GetString(11);
        this.lblSjx.Text = sdr.GetString(27);
        this.lblJldhx.Text = sdr.GetString(28);
     

        
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/zhibanyuangong.aspx");//将该页跳转到指定的页面中
    }


    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("yuangonginfo.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("yuangongcx.aspx");
    }
}
