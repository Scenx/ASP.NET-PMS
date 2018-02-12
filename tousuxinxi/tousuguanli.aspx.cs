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
public partial class tousuguanli : System.Web.UI.Page
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
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_tousu", con);
        DataSet ds = new DataSet();         //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_tousu");
        this.gvZhts.DataSource = ds;
        this.gvZhts.DataBind();//将数据绑定到GridView控件中
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "insert into tb_tousu values('"+this.txtTsbh.Text+"','"+this.txtTszhm.Text+"','"+this.txtDate.Text+"','"+this.txtTsnr.Text+"','"+this.ddlZt.Text+"')";
        cmd.ExecuteNonQuery();//用OleDbCommand的ExecuteScalar()方法来执行添加操作
        Response.Write("<script language=javascript>alert('恭喜您，信息添加成功！')</script>");
        con.Close();
        this.aa();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();      //声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "delete from tb_tousu where id='" + this.txtTsbh.Text + "'";
        cmd.ExecuteNonQuery();                      //用OleDbCommand的ExecuteScalar()方法来执行删除操作
        Response.Write("<script language=javascript>alert('恭喜您，信息删除成功！')</script>");
        con.Close();
        this.aa();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();       //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();     //声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        //,neirong='"+this.txtTsnr.Text+"',zhuangtai='"+this.ddlZt.Text+"'
        cmd.CommandText = "update tb_tousu set id='" + this.txtTsbh.Text + "',person='" + this.txtTszhm.Text + "',neirong='" + this.txtTsnr.Text + "',zhuangtai='" + this.ddlZt.Text + "' where id='" + this.txtTsbh.Text + "'";
        cmd.ExecuteNonQuery();                     //用OleDbCommand的ExecuteScalar()方法来执行修改操作
        Response.Write("<script language=javascript>alert('恭喜您，信息修改成功！');</script>");
        con.Close();
        this.aa();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.txtTsbh.Text = this.gvZhts.SelectedRow.Cells[0].Text;
        this.txtTszhm.Text = this.gvZhts.SelectedRow.Cells[1].Text;
        this.txtDate.Text = this.gvZhts.SelectedRow.Cells[2].Text;
        this.txtTsnr.Text = this.gvZhts.SelectedRow.Cells[3].Text;
        this.ddlZt.Text = this.gvZhts.SelectedRow.Cells[4].Text;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("tousushenhe.aspx");     //跳转到指定的页面中
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("tousucx.aspx");         //跳转到指定的页面中
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();      //声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "select count(*) from tb_tousu where id='" + this.txtTsbh.Text + "'";
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        if (i > 0)
        {
            this.txtTsbh.Text = "";
            this.txtTsbh.Focus();
            Response.Write("<script language=javascript>alert('投诉编号存在，请重新输入！');</script>");
        }
        else
        {
            Response.Write("<script language=javascript>alert('投诉编号不存在，您可继续输入其他信息！');</script>");
        }
        con.Close();  
    }
    protected void btnSelect_Click(object sender, EventArgs e)
    {
           Response.Redirect("tousucx.aspx");            //跳转到指定的页面中
    }
    protected void gvZhts_RowDataBound(object sender, GridViewRowEventArgs e)
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
 
   
}
