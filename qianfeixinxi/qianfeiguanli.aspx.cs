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
public partial class qianfeichaxun : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null && Session["pwd"] == null)
        {
            Response.Redirect("~/guanliyuan/guanliyuandenglu.aspx");//跳转到指定的页面中
        }
       
        this.Calendar2.Visible = false;
        this.Calendar3.Visible = false;
        this.aa();
    }
    public void aa()
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_qianfei", con);
        DataSet ds = new DataSet();         //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_qianfei");
        this.gvqf.DataSource = ds;
        this.gvqf.DataBind();//将数据绑定到GridView控件中
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "insert into tb_qianfei values('"+this.txtname.Text+"','"+this.txtaddress.Text+"','"+this.DropDownList1.Text+"','"+this.txtstime.Text+"','"+this.txtetime.Text+"','"+this.txtqianfei.Text+"','"+this.ddlZt.SelectedItem.Text.ToString() +"','"+this.txtperson.Text+"')";
        cmd.ExecuteNonQuery();//用OleDbCommand的ExecuteScalar()方法来执行添加语句
        Response.Write("<script language=javascript>alert('恭喜您，信息添加成功！！');</script>");
        con.Close();
        this.aa();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();            //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "delete from tb_qianfei where name='" + this.txtname.Text+ "'";
        cmd.ExecuteNonQuery();               //用OleDbCommand的ExecuteScalar()方法来执行删除操作
        Response.Write("<script language=javascript>alert('恭喜您，信息删除成功！！');</script>");
        con.Close();
        this.aa();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();         //调用用户自定义的DB类的createDB()的操作
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "update tb_qianfei set name='" + this.txtname.Text + "',address='" + this.txtaddress.Text + "',leibie='" + this.DropDownList1.Text + "',stime='" + this.txtstime.Text + "',etime='" + this.txtetime.Text + "',qianfei='" + this.txtqianfei.Text + "',state='" + this.ddlZt.SelectedItem.Text.ToString() + "',person='" + this.txtperson.Text + "' where name='" + this.txtname.Text + "'";
        cmd.ExecuteNonQuery();//用OleDbCommand的ExecuteScalar()方法来执行修改操作
        Response.Write("<script language=javascript>alert('恭喜您，信息修改成功！！');</script>");
        con.Close();
        this.aa();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("qianfeicx.aspx");//跳转到指定的页面中
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("qianfeicx.aspx");//跳转到指定的页面中
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.txtname.Text = this.gvqf.SelectedRow.Cells[0].Text;
        this.txtaddress.Text = this.gvqf.SelectedRow.Cells[1].Text;
        this.DropDownList1.Text = this.gvqf.SelectedRow.Cells[2].Text;
        this.txtstime.Text = this.gvqf.SelectedRow.Cells[3].Text;
        this.txtetime.Text = this.gvqf.SelectedRow.Cells[4].Text;
        this.txtqianfei.Text = this.gvqf.SelectedRow.Cells[5].Text;
        this.ddlZt.Text = this.gvqf.SelectedRow.Cells[6].Text;
        this.txtperson.Text = this.gvqf.SelectedRow.Cells[7].Text;
       
    }
   
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("qianfeishenhe.aspx");//跳转到指定的页面中
    }
    protected void gvqf_RowDataBound(object sender, GridViewRowEventArgs e)
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

            e.Row.Cells[3].Text = Convert.ToDateTime(e.Row.Cells[3].Text).ToShortDateString();
            e.Row.Cells[4].Text = Convert.ToDateTime(e.Row.Cells[4].Text).ToShortDateString();
        }
    }
    protected void Button5_Click1(object sender, EventArgs e)
    {

    }
    protected void Calendar3_SelectionChanged(object sender, EventArgs e)
    {
        this.txtetime.Text = this.Calendar3.SelectedDate.ToShortDateString();//将日期显示到文本框中
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        this.txtstime.Text = this.Calendar2.SelectedDate.ToShortDateString();//将日期显示到文本框中
    }
    protected void btnetime_Click(object sender, EventArgs e)
    {
        this.Calendar3.Visible = true;
    }
    protected void btnstime_Click(object sender, EventArgs e)
    {
        this.Calendar2.Visible = true;
    }
   
}
