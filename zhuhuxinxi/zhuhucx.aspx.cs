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
public partial class zhuhucx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null && Session["pwd"] == null)
        {
            Response.Redirect("~/guanliyuan/guanliyuandenglu.aspx");//跳转到指定的页面中
        }
        this.aa();
    }
    public void aa()
    {
        OleDbConnection con = DB.createDB();
        con.Open();
        OleDbCommand cmd = new OleDbCommand();　　//声明一个OleDbCommand的 cmd对象，并将其实例化
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_zhuhu", con);
        DataSet ds = new DataSet();        　 　　//声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_zhuhu");
        this.gvZh.DataSource = ds;
        this.gvZh.DataBind();　　　　　　　　　　　//将数据绑定到GridView控件中
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
      
        OleDbConnection con = DB.createDB();
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        DataSet ds = new DataSet();         //声明一个DataSet的ds对象,并将其实例化

        if (this.rbtnname.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_zhuhu where name='" + this.txtName.Text + "'", con);
            sda.Fill(ds, "tb_zhuhu");
            this.gvZh.DataSource = ds;
            this.gvZh.DataBind();//将数据绑定到GridView控件中
        }
        if (this.rbtnsyqk.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_zhuhu where systate='" + this.ddlSyzk.SelectedItem.Text.ToString() + "'", con);
            sda.Fill(ds, "tb_zhuhu");
            this.gvZh.DataSource = ds;
            this.gvZh.DataBind();//将数据绑定到GridView控件中
        }
        if (this.rbtnzfname.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_zhuhu where zfname='" + this.txtZfmc.Text + "'", con);
            sda.Fill(ds, "tb_zhuhu");
            this.gvZh.DataSource = ds;
            this.gvZh.DataBind();//将数据绑定到GridView控件中
        }
    }
    protected void btnqx_Click(object sender, EventArgs e)
    {

    }
}
