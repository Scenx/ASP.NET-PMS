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
public partial class xinwencx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["nameyh"] == null && Session["pwdyh"] == null)
            {
                if (Session["name"] == null && Session["pwd"] == null)
                {

                    Response.Redirect("~/denglu.aspx");//跳转到指定的页面中
                }


            }
            this.xinwenfillgv();
        }
    }
    public void xinwenfillgv()
    {
        OleDbConnection con = DB.createDB();
        //OleDbConnection con = new OleDbConnection("server=(local);uid=sa;pwd=sa;database=wygl");
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        OleDbDataAdapter sda = new OleDbDataAdapter("select  * from tb_xinwen order by fabushijian desc", con);
        DataSet ds = new DataSet();             //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_xinwen");
        this.gvXw.DataSource = ds;
        this.gvXw.DataKeyNames = new string[] { "title" }; 
        this.gvXw.DataBind();//将数据绑定到GridView控件中
        con.Close();
    }
    protected void btnSelect_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        DataSet ds = new DataSet();//声明一个DataSet的ds对象,并将其实例化

        if (this.rbtnname.Checked == true)
        {
           
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_xinwen where faburen='" + this.txtName.Text + "'", con);
            sda.Fill(ds, "tb_xinwen");
            this.gvXw.DataSource = ds;
            this.gvXw.DataBind();//将数据绑定到GridView控件中

        }
        if (this.rbtnlb.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_xinwen where xinwenleibie='" + this.txtlb.Text + "'", con);
            sda.Fill(ds, "tb_xinwen");
            this.gvXw.DataSource = ds;
            this.gvXw.DataBind();//将数据绑定到GridView控件中

        }
        if (this.rbtnzt.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_xinwen where beizhu='" + this.ddlzt.SelectedItem.Text.ToString() + "'", con);
            sda.Fill(ds, "tb_xinwen");
            this.gvXw.DataSource = ds;
            this.gvXw.DataBind();//将数据绑定到GridView控件中
        }
    }
    protected void gvXw_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onMouseOver", "Color=this.style.backgroundColor;this.style.backgroundColor='lightBlue'");
            e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=Color;");

            if (e.Row.Cells[5].Text == "已处理")
            {
                e.Row.Cells[5].Text = "<font color=blue>已处理</font>";
            }
            else
            {
                e.Row.Cells[5].Text = "<font color=red>未处理</font>";
            }
            ((LinkButton)(e.Row.Cells[8].Controls[0])).Attributes.Add("onclick", "return confirm('确定删除吗？')");
            e.Row.Cells[2].Text = Convert.ToDateTime(e.Row.Cells[2].Text).ToShortDateString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        this.xinwenfillgv();
    }
  
    protected void gvXw_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string title = this.gvXw.DataKeys[e.RowIndex].Value.ToString();
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();
        OleDbCommand cmd = new OleDbCommand("delete from tb_xinwen where title='" + title + "'", con);
        cmd.ExecuteNonQuery();
        this.xinwenfillgv();
        this.gvXw.EditIndex = -1;
    }
    protected void lbAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("xinwenguanli.aspx");
    }
    protected void gvXw_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.gvXw.PageIndex = e.NewPageIndex;
        this.xinwenfillgv();
    }
}
