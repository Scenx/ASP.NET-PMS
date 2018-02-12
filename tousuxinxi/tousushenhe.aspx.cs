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
public partial class tousushenhe : System.Web.UI.Page
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
        OleDbCommand cmd = new OleDbCommand();     //声明一个OleDbCommand的 cmd对象，并将其实例化     
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_tousu", con);
        DataSet ds = new DataSet();                //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_tousu");
        this.GridView1.DataSource = ds.Tables[0].DefaultView;
        this.GridView1.DataKeyNames = new string[] { "id" };
        this.GridView1.DataBind();                   //将数据绑定到GridView控件中
        con.Close();
    }
  
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
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
       
            e.Row.Cells[2].Text = Convert.ToDateTime(e.Row.Cells[2].Text).ToShortDateString();
         
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = this.GridView1.DataKeys[e.RowIndex].Value.ToString();
        OleDbConnection con = DB.createDB();
        con.Open();
        OleDbCommand cmd = new OleDbCommand("delete from tb_tousu where id='" + id + "'", con);
        cmd.ExecuteNonQuery();
        this.aa();
        this.GridView1.EditIndex = -1;
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        this.aa();
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        string id = this.GridView1.DataKeys[e.NewSelectedIndex].Value.ToString();
        OleDbConnection con = DB.createDB();     //调用用户自定义的DB类的createDB()的方法
        con.Open();
        OleDbCommand cmd = new OleDbCommand("select zhuangtai from tb_tousu where id='" + id + "'", con);

        string count = cmd.ExecuteScalar().ToString();
        if (count == "已处理")
        {
            count = "未处理";
        }
        else
        {
            count = "已处理";
        }
        cmd.CommandText = "update tb_tousu set zhuangtai='" + count + "'where id='" + id + "'";
        cmd.ExecuteNonQuery();
        con.Close();
        this.aa();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("tousuguanli.aspx");//跳转到指定的页面中
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("tousucx.aspx");//跳转到指定的页面中
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}
