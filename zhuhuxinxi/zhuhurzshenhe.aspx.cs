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
public partial class zhuhurzshenhe : System.Web.UI.Page
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
        con.Open();                             //打开数据库连接
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_zhuhu", con);
        DataSet ds = new DataSet();         //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_zhuhu");
        this.GridView2.DataSource = ds.Tables[0].DefaultView;
        this.GridView2.DataKeyNames = new string[] { "fanghao" };
        this.GridView2.DataBind();//将数据绑定到GridView控件中
        con.Close();
    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.Cells[7].Text == "已使用")
            {
                e.Row.Cells[7].Text = "<font color=blue>已使用</font>";
            }
            else
            {
                e.Row.Cells[7].Text = "<font color=red>未使用</font>";
            }
          
            e.Row.Cells[8].Text = Convert.ToDateTime(e.Row.Cells[8].Text).ToShortDateString();
        }
    }
    protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        string fanghao = this.GridView2.DataKeys[e.NewSelectedIndex].Value.ToString();
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();                                    //打开数据库连接
        OleDbCommand cmd = new OleDbCommand("select systate from tb_zhuhu where fanghao='" + fanghao + "'", con);

        string count = cmd.ExecuteScalar().ToString();
        if (count == "已使用")
        {
            count = "未使用";
        }
        else
        {
            count = "已使用";
        }
        cmd.CommandText = "update tb_zhuhu set systate='" + count + "'where fanghao='" + fanghao + "'";
        cmd.ExecuteNonQuery();//用OleDbCommand的ExecuteScalar()方法来执行修改操作
        con.Close();
        this.aa();
    }


    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("zhuhuxinxiguanli.aspx");
    }
}
