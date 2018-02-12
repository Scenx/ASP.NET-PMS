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
public partial class yuangongcx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null && Session["pwd"] == null)
        {
            Response.Redirect("~/guanliyuan/guanliyuandenglu.aspx");
        }
       
        this.aa();//调用填充GridView控件的用户自定义方法
    }
    public void aa()
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();             //打开数据库连接
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_yuangong", con);
        DataSet ds = new DataSet();             //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_yuangong");
        this.gvYgcx.DataSource = ds;
        this.gvYgcx.DataBind();//将数据源绑定到 GridView 控件
        con.Close();//关闭数据库的连接
    }
    protected void lbAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("yuangonginfo.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();             //打开数据库连接
        DataSet ds = new DataSet();                 //声明一个DataSet的ds对象,并将其实例化

        if (this.rbtnbh.Checked == true)
        {
           
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_yuangong where id='" + this.txtYgbh.Text + "'", con);
            sda.Fill(ds, "tb_yuangong");
            this.gvYgcx.DataSource = ds;
            this.gvYgcx.DataBind();//将数据源绑定到 GridView 控件

        }
        if (this.rbtnzc.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_yuangong where working='" + this.ddlLx.Text + "'", con);
            sda.Fill(ds, "yuangong");
            this.gvYgcx.DataSource = ds;
            this.gvYgcx.DataBind();//将数据源绑定到 GridView 控件
        }
        if (this.rbtnzt.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_yuangong where state='" + this.ddlGzzt.Text + "'", con);
            sda.Fill(ds, "tb_yuangong");
            this.gvYgcx.DataSource = ds;
            this.gvYgcx.DataBind();//将数据源绑定到 GridView 控件
        }
       
    }

    protected void gvYgcx_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.gvYgcx.PageIndex = e.NewPageIndex;
        this.aa();//调用填充GridView控件的用户自定义方法
    }
}
