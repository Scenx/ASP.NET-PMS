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
public partial class caiqianchaxun : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["nameyh"] == null && Session["pwdyh"] == null)  //判断住户是否登录
        {
            if (Session["name"] == null && Session["pwd"] == null)   //判断管理员是否登录
            {
              Response.Redirect("~/denglu.aspx");      //将页面重新定向到登录页面中
            }
        }
        this.aa();                                  //调用填充GridView控件的用户自定义方法
    }
    public void aa()
    {
        OleDbConnection con = DB.createDB();    //调用用户自定义的DB类的createDB()的方法
        con.Open();                              //打开数据库连接
        OleDbCommand cmd = new OleDbCommand();      //声明一个OleDbCommand的cmd对象,并将其实例化
        cmd.Connection = con;
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_homePark", con);
        DataSet ds = new DataSet();            //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_homePark");            //将停车信息表绑定到数据集中
        this.gvcl.DataSource = ds;
        this.gvcl.DataBind();                  //将数据绑定到GridView控件中
        con.Close();                           //关闭数据库的连接
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();      //声明一个OleDbCommand的cmd对象,并将其实例化
        cmd.Connection = con;
        con.Open();                                 //打开数据库连接
        DataSet ds = new DataSet();                 //声明一个DataSet的ds对象,并将其实例化

        if (this.rbtncph.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_homePark where ID='" + this.txtTch.Text + "'", con);
            sda.Fill(ds, "tb_homePark");
            this.gvcl.DataSource = ds;
            this.gvcl.DataBind();//将数据绑定到GridView控件中

        }
        if (this.rbtnsjqk.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_homePark where handle='" + this.ddlcz.SelectedItem.Text.ToString() + "'", con);
            sda.Fill(ds, "tb_homePark");
            this.gvcl.DataSource = ds;
            this.gvcl.DataBind();//将数据绑定到GridView控件中
        }
        if (this.rbtncz.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_homePark where tenement='" + this.txtCz.Text + "'", con);
            sda.Fill(ds, "tb_homePark");
            this.gvcl.DataSource = ds;
            this.gvcl.DataBind();//将数据绑定到GridView控件中
        }
        con.Close();　　　　　　　//关闭数据库连接
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        this.aa();
    }
    protected void lbAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("cheliangguanli.aspx");
    }
    protected void gvcl_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onMouseOver", "Color=this.style.backgroundColor;this.style.backgroundColor='lightBlue'");
            e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=Color;");
            if (e.Row.Cells[8].Text == "已缴纳")
            {
                e.Row.Cells[8].Text = "<font color=blue>已缴纳</font>";
            }
            else
            {
                e.Row.Cells[8].Text = "<font color=red>未缴纳</font>";
            }
            e.Row.Cells[4].Text = Convert.ToDateTime(e.Row.Cells[4].Text).ToShortDateString();
            e.Row.Cells[5].Text = Convert.ToDateTime(e.Row.Cells[5].Text).ToShortDateString();
        }
    }
}
