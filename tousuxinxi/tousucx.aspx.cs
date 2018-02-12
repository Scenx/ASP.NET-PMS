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
public partial class tousucx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["nameyh"] == null && Session["pwdyh"] == null)
        {
            if (Session["name"] == null && Session["pwd"] == null)
            {
                Response.Redirect("~/denglu.aspx");//跳转到指定的页面中
            }


        }
        this.aa();
    }
    public void aa()
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_tousu", con);
        DataSet ds = new DataSet();         //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_tousu");
        this.gvTscx.DataSource = ds;
        this.gvTscx.DataBind();//将数据绑定到GridView控件中
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        DataSet ds = new DataSet();         //声明一个DataSet的ds对象,并将其实例化
        if (this.rbtntsr.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_tousu where person='" + this.txtTsxm.Text + "'", con);
            sda.Fill(ds, "tb_tousu");
            this.gvTscx.DataSource = ds;
            this.gvTscx.DataBind();//将数据绑定到GridView控件中
        }
        if (this.rbtnzt.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_tousu where zhuangtai='" + this.ddlzt.SelectedItem.Text.ToString() + "'", con);
            sda.Fill(ds, "tb_tousu");
            this.gvTscx.DataSource = ds;
            this.gvTscx.DataBind();//将数据绑定到GridView控件中
        }
        if (this.rbtnbh.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_tousu where id='" + this.txtbh.Text.ToString() + "'", con);
            sda.Fill(ds, "tb_tousu");
            this.gvTscx.DataSource = ds;
            this.gvTscx.DataBind();//将数据绑定到GridView控件中

        }
    }
    
    protected void btnqx_Click(object sender, EventArgs e)
    {
        this.aa();
    }
    protected void gvTscx_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onMouseOver", "Color=this.style.backgroundColor;this.style.backgroundColor='lightBlue'");
            e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=Color;");
            if (e.Row.Cells[4].Text == "已处理")
            {
                e.Row.Cells[4].Text = "<font color=blue>已处理</font>";
            }
            else
            {
                e.Row.Cells[4].Text = "<font color=red>未处理</font>";
            }
            //((LinkButton)(e.Row.Cells[6].Controls[0])).Attributes.Add("onclick", "return confirm('确定删除吗？')");
            e.Row.Cells[2].Text = Convert.ToDateTime(e.Row.Cells[2].Text).ToShortDateString();
            
        }
    }
}
