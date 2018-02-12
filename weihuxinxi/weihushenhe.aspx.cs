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
public partial class weihushenhe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null && Session["pwd"] == null)
        {
            Response.Redirect("~/guanliyuan/guanliyuandenglu.aspx");
        }
       
        this.aa();
    }
    private void aa()
    {

        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();                                     //打开数据库连接
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_weihu", con);
        DataSet ds = new DataSet();             //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_weihu");
        this.gvWh.DataSource = ds.Tables[0].DefaultView;
        this.gvWh.DataKeyNames = new string[] { "id" };
        this.gvWh.DataBind();//将数据绑定到GridView控件中
        con.Close();
    }
   
 
  
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("weixuiguanli.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("weixuichaxun.aspx");
    }
    protected void gvWh_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        string id = this.gvWh.DataKeys[e.NewSelectedIndex].Value.ToString();
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();                                 //打开数据库连接
        OleDbCommand cmd = new OleDbCommand("select state from tb_weihu where id='" + id + "'", con);

        string count = cmd.ExecuteScalar().ToString();
        if (count == "已处理")
        {
            count = "未处理";
        }
        else
        {
            count = "已处理";
        }
        cmd.CommandText = "update tb_weihu set state='" + count + "'where id='" + id + "'";
        cmd.ExecuteNonQuery();
        con.Close();
        this.aa();
    }
    protected void gvWh_RowDataBound(object sender, GridViewRowEventArgs e)
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
           // ((LinkButton)(e.Row.Cells[10].Controls[0])).Attributes.Add("onclick", "return confirm('确定删除吗？')");
            e.Row.Cells[2].Text = Convert.ToDateTime(e.Row.Cells[2].Text).ToShortDateString();
            e.Row.Cells[3].Text = Convert.ToDateTime(e.Row.Cells[3].Text).ToShortDateString();
        }
    }
    protected void gvWh_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string id = this.gvWh.DataKeys[e.RowIndex].Value.ToString();
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();                                //打开数据库连接
        OleDbCommand cmd = new OleDbCommand("delete from tb_weihu where id='" + id + "'", con);
        cmd.ExecuteNonQuery();//用OleDbCommand的ExecuteScalar()方法来执行删除操作
        this.aa();
        this.gvWh.EditIndex = -1;
    }
    protected void gvWh_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvWh.PageIndex = e.NewPageIndex;
        this.aa();
    }
}
