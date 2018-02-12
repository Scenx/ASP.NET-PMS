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
public partial class weixuiguanli : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null && Session["pwd"] == null)
        {
            Response.Redirect("~/guanliyuan/guanliyuandenglu.aspx");//跳转到指定的页面中
        }
       
  
        this.caletime.Visible = false;
        this.Calendar2.Visible = false;
        this.txttime.Enabled = false;
        this.txtzzrq.Enabled = false;
        this.aa();
    }
    public void aa()
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();                 //打开数据库连接
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_weihu", con);
        DataSet ds = new DataSet();             //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_weihu");
        this.GridView2.DataSource = ds;
        this.GridView2.DataBind();//将数据绑定到GridView控件中
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();                 //打开数据库连接
        cmd.CommandText = "insert into tb_weihu values('"+this.txtid.Text+"','"+txtperson.Text+"','"+this.txttime.Text+"','"+this.txtzzrq.Text+"','"+this.txtjsr.Text+"','"+this.txtfy.Text+"','"+this.DropDownList1.SelectedItem.Text.ToString()+"','"+this.txtbz.Text+"','"+this.Txtnr.Text+"')";
        cmd.ExecuteNonQuery();//用OleDbCommand的ExecuteScalar()方法来执行添加操作
        Response.Write("<script language=javascript>alert('恭喜您，信息添加成功！')</script>");
        con.Close();
        this.aa();
        this.txtbz.Text = "";
        this.txtfy.Text = "";
        this.txtjsr.Text = "";
        this.Txtnr.Text = "";
        this.txtperson.Text = "";
        this.txttime.Text = "";
        this.txtzzrq.Text = "";
        this.txtid.Text = "";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "delete from tb_weihu where id='" + this.txtid.Text + "'";
        cmd.ExecuteNonQuery();//用OleDbCommand的ExecuteScalar()方法来执行删除操作
        Response.Write("<script language=javascript>alert('恭喜您，信息删除成功！')</script>");
        con.Close();
        this.aa();
        this.txtbz.Text = "";
        this.txtfy.Text = "";
        this.txtjsr.Text = "";
        this.Txtnr.Text = "";
        this.txtperson.Text = "";
        this.txttime.Text = "";
        this.txtzzrq.Text = "";
        this.txtid.Text = "";
     
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        //OleDbConnection con = new OleDbConnection("server=(local);uid=sa;pwd=sa;database=wygl");
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();                 //打开数据库连接
        cmd.CommandText = "update tb_weihu set name='"+ this.txtperson.Text +"',stime='"+ this.txttime.Text +"',etime='"+this.txtzzrq.Text+"',person='"+this.txtjsr.Text+"',feiyong='"+this.txtfy.Text+"',state='"+this.DropDownList1.SelectedItem.Text.ToString()+"',beizhu='"+this.txtbz.Text+"',neirong='"+this.Txtnr.Text+"' where id='"+this.txtid.Text+"'";
        cmd.ExecuteNonQuery();//用OleDbCommand的ExecuteScalar()方法来执行修改操作
        Response.Write("<script language=javascript>alert('恭喜您，信息修改成功！')</script>");
        con.Close();
        this.aa();
        this.txtbz.Text = "";
        this.txtfy.Text = "";
        this.txtjsr.Text = "";
        this.Txtnr.Text = "";
        this.txtperson.Text = "";
        this.txttime.Text = "";
        this.txtzzrq.Text = "";
        this.txtid.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("weixuichaxun.aspx");//将该页跳转到指定的页面中
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.txtid.Text = this.GridView2.SelectedRow.Cells[0].Text.ToString();
        this.txtperson.Text = this.GridView2.SelectedRow.Cells[1].Text.ToString();
        this.txttime.Text = this.GridView2.SelectedRow.Cells[2].Text.ToString();
        this.txtzzrq.Text = this.GridView2.SelectedRow.Cells[3].Text.ToString();
        this.txtjsr.Text = this.GridView2.SelectedRow.Cells[4].Text.ToString();
        this.txtfy.Text = this.GridView2.SelectedRow.Cells[5].Text.ToString();
        this.DropDownList1.Text = this.GridView2.SelectedRow.Cells[6].Text.ToString();
        this.txtbz.Text = this.GridView2.SelectedRow.Cells[7].Text.ToString();
       
        this.Txtnr.Text = this.GridView2.SelectedRow.Cells[8].Text.ToString();
    }
    protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
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
            e.Row.Cells[2].Text = Convert.ToDateTime(e.Row.Cells[2].Text).ToShortDateString();
            e.Row.Cells[3].Text = Convert.ToDateTime(e.Row.Cells[3].Text).ToShortDateString();
        }
       
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();                 //打开数据库连接
        cmd.CommandText = "select count(*) from tb_weihu where id='" + this.txtid.Text + "'";
       
        int i = Convert.ToInt32(cmd.ExecuteScalar());
     
        if (i > 0)
        {
         
            this.txtid.Text = "";
            this.txtid.Focus();

            Response.Write("<script language=javascript>alert('设备编号存在，请重新输入！');</script>");
        }

        else
        {
      
            Response.Write("<script language=javascript>alert('设备编号不存在，你可继续录入信息！');</script>");
        }
        con.Close();          
       

    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("weixuichaxun.aspx");//跳转到指定的页面中
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("weihushenhe.aspx");//跳转到指定的页面中
    }
    protected void caletime_SelectionChanged(object sender, EventArgs e)
    {
        this.txtzzrq.Text = this.caletime.SelectedDate.ToShortDateString();
    }
    protected void btnwxgl_Click(object sender, EventArgs e)
    {
        this.caletime.Visible = true;//当按下Button时，让日期控件处于可见状态
        this.txtzzrq.Enabled = true;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        this.txttime.Text = this.Calendar2.SelectedDate.ToShortDateString();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        this.Calendar2.Visible = true;//当按下Button时，让日期控件处于可见状态
        this.txttime.Enabled = true;
    }
}
