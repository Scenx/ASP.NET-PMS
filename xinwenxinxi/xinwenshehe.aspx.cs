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
public partial class xinwenshehe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null && Session["pwd"] == null)
        {
            Response.Redirect("~/guanliyuan/guanliyuandenglu.aspx");//跳转到指定的页面中
        }
        this.aa();
    }
    private void aa()
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_xinwen", con);
        DataSet ds = new DataSet();         //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_xinwen");
        this.GridView2.DataSource = ds.Tables[0].DefaultView;
        this.GridView2.DataKeyNames = new string[] { "title" };
        this.GridView2.DataBind();//将数据绑定到GridView控件中
        con.Close();
    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onMouseOver", "Color=this.style.backgroundColor;this.style.backgroundColor='lightBlue'");
            e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=Color;");
            if (e.Row.Cells[6].Text == "已处理")
            {
                e.Row.Cells[6].Text = "<font color=blue>已处理</font>";
            }
            else
            {
                e.Row.Cells[6].Text = "<font color=red>未处理</font>";
            }
          
            e.Row.Cells[2].Text = Convert.ToDateTime(e.Row.Cells[2].Text).ToShortDateString();
        }
    }
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView2.PageIndex = e.NewPageIndex;
        this.aa();//调用用户自定义的函数
    }
    protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        string title = this.GridView2.DataKeys[e.NewSelectedIndex].Value.ToString();
        OleDbConnection con = DB.createDB();         //调用用户自定义的DB类的createDB()的方法
        con.Open();
        OleDbCommand cmd = new OleDbCommand("select beizhu from tb_xinwen where title='" + title + "'", con);

        string count = cmd.ExecuteScalar().ToString();//执行查询语句，并返回查询所返回的结果集中第一行的第一列，并将此转换为字符串类型加以显示。
        if (count == "已处理")
        {
            count = "未处理";
        }
        else
        {
            count = "已处理";
        }
        cmd.CommandText = "update tb_xinwen set beizhu='" + count + "'where title='" + title + "'";
        cmd.ExecuteNonQuery();
        con.Close();//关闭数据库连接
        this.aa();
    }
   

 
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("xinwenguanli.aspx");
    }
}
