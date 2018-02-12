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
public partial class weixuichaxun : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["nameyh"] == null && Session["pwdyh"] == null)
        {
            if (Session["name"] == null && Session["pwd"] == null)
            {

                Response.Redirect("~/denglu.aspx");
            }
        }
        this.Button1_Click(null,null);
    }
    public void LoadData()
    {
        OleDbConnection con = DB.createDB();
        con.Open();
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_weihu", con);
        DataSet ds = new DataSet();             //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_weihu");
        this.gvS.DataSource = ds;
        this.gvS.DataBind();//将数据绑定到GridView控件中
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        DataSet ds = new DataSet();             //声明一个DataSet的ds对象,并将其实例化

        if (this.rbtnyhm.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_weihu where name like '%" + this.txtyhm.Text + "%'", con);
            sda.Fill(ds, "tb_weihu");
            this.gvS.DataSource = ds;
            this.gvS.DataBind();//将数据绑定到GridView控件中

        }
        else if (this.rbtnzt.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_weihu where state='" + this.ddlzt.SelectedItem.Text.ToString() + "'", con);
            sda.Fill(ds, "tb_weihu");
            this.gvS.DataSource = ds;
            this.gvS.DataBind();//将数据绑定到GridView控件中
        }
        else if (this.rbtnjsr.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_weihu where person like '%" + this.txtjsr.Text.ToString() + "%'", con);
            sda.Fill(ds, "tb_weihu");
            this.gvS.DataSource = ds;
            this.gvS.DataBind();//将数据绑定到GridView控件中
        }
        else
        {
            LoadData();
        }

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("weixuiguanli.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        this.LoadData();
    }
    protected void gvS_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.Cells[6].Text == "已处理")
            {
                e.Row.Cells[6].Text = "<font color=blue>已处理</font>";
            }
            else
            {
                e.Row.Cells[6].Text = "<font color=red>未处理</font>";
            }
            //((LinkButton)(e.Row.Cells[10].Controls[0])).Attributes.Add("onclick", "return confirm('确定删除吗？')");
            e.Row.Cells[2].Text = Convert.ToDateTime(e.Row.Cells[2].Text).ToShortDateString();
            e.Row.Cells[3].Text = Convert.ToDateTime(e.Row.Cells[3].Text).ToShortDateString();
        }
    }
}
