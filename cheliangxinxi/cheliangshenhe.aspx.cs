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
public partial class cheliangshenhe : System.Web.UI.Page
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
        con.Open();
        OleDbCommand cmd = new OleDbCommand();      //声明一个OleDbCommand的cmd对象,并将其实例化
        cmd.Connection = con;     
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_homePark", con);
        DataSet ds = new DataSet();         //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_homePark");
        this.gvcl.DataSource = ds.Tables[0].DefaultView;
        this.gvcl.DataKeyNames = new string[] { "ID" };
        this.gvcl.DataBind();//将数据绑定到GridView控件中
        con.Close();
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
    protected void gvcl_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvcl.PageIndex = e.NewPageIndex;
        this.aa();
    }
    protected void gvcl_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        string ID = this.gvcl.DataKeys[e.NewSelectedIndex].Value.ToString();
        OleDbConnection con = DB.createDB();           //调用用户自定义的DB类的createDB()的方法
        con.Open();
        OleDbCommand cmd = new OleDbCommand("select handle from tb_homePark where ID='" + ID + "'", con);//根据传来的ID编号查询停车信息表
        cmd.Connection = con;
        string count = cmd.ExecuteScalar().ToString();
        if (count == "已缴纳")
        {
            count = "未缴纳";
        }
        else
        {
            count = "已缴纳";
        }
        cmd.CommandText = "update tb_homePark set handle='" + count + "'where ID='" + ID + "'";
        cmd.ExecuteNonQuery();                     //用OleDbCommand的ExecuteScalar()方法来执行修改语句
        con.Close();
        this.aa();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("cheliangguanli.aspx");
    }
 
}
