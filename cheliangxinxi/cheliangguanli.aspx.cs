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
public partial class caiqianguanli : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null && Session["pwd"] == null)
        {
            Response.Redirect("~/guanliyuan/guanliyuandenglu.aspx");
        }
       
        
        this.CalStime.Visible = false;
        this.Calendar2.Visible =false;
        this.txtstime.Enabled = false;
        this.txtEtime.Enabled = false;
        this.aa();//调用用户自定义方法 
    }
    public void aa()
    {
        OleDbConnection con = DB.createDB();                //调用用户自定义的DB类的createDB()的方法
        con.Open();
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_homePark", con);
        DataSet ds = new DataSet();  //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_homePark");//将停车信息表的数据填充到数据集里
        this.gvcl.DataSource = ds;
        this.gvcl.DataBind();//将数据绑定到GridView控件中
        con.Close();//关闭数据库连接
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();         //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();//打开数据库连接
        cmd.CommandText = "insert into tb_homePark values('" + this.txtCph.Text + "','" + this.txtTcch.Text + "','" + this.txtCz.Text + "','" + this.txtTcdd.Text + "','" + this.txtstime.Text + "','" + this.txtEtime.Text + "','" + this.txtTcglf.Text + "','" + this.txtjsr.Text + "','" + this.ddlsjqk.SelectedItem.Text.ToString() + "','" + this.txtBz.Text + "')";
        cmd.ExecuteNonQuery();
        Response.Write("<script language=javascript>alert('恭喜您，信息添加成功！');</script>");
        con.Close();
        this.aa();
    }
    protected void  Button2_Click(object sender, EventArgs e)
   {
       OleDbConnection con = DB.createDB();                 //调用用户自定义的DB类的createDB()的方法
       OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
     cmd.Connection = con;
     con.Open();
     cmd.CommandText = "delete from tb_homePark where ID='" + this.txtCph.Text + "'";
     cmd.ExecuteNonQuery();
     Response.Write("<script language=javascript>alert('恭喜您，信息删除成功！');</script>");
     con.Close();
     this.aa();
 }
    protected void Button4_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();         //调用用户自定义的DB类的createDB()的方法

        OleDbCommand cmd = new OleDbCommand();      //声明一个OleDbCommand的cmd对象,并将其实例化
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "update tb_homePark set placeID='" + this.txtTcch.Text + "',tenement='" + this.txtCz.Text + "',address='" + this.txtTcdd.Text + "',starDate='" + this.txtstime.Text + "',endDate='" + this.txtEtime.Text + "',placeSum='" + this.txtTcglf.Text + "',person='" + this.txtjsr.Text + "',handle='" + this.ddlsjqk.SelectedItem.Text + "',[memo]='" + this.txtBz.Text + "' where ID='" + this.txtCph.Text + "'";
        cmd.ExecuteNonQuery();
        Response.Write("<script language=javascript>alert('恭喜您，信息修改成功！');</script>");
        con.Close();
        this.aa();
    }
   
 
    protected void Button3_Click(object sender, EventArgs e)
    {

        Response.Redirect("cheliangchaxun.aspx");
   
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("cheliangchaxun.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("cheliangshenhe.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();                    //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();                  //声明一个OleDbCommand的 cmd对象，并将其实例化            //声明一个OleDbCommand的cmd对象,并将其实例化
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "select count(*) from tb_homePark where ID='" + this.txtCph.Text + "'";   //根据用户在文本框输入的ID编号的值查询停车信息表
        int i=Convert.ToInt32(cmd.ExecuteScalar());
        if (i > 0)
        {
            this.txtCph.Text = "";
            this.txtCph.Focus();
            Response.Write("<script language=javascript>alert('车牌号存在，请在添加一个！');location='javascript:history.go(-1)'</script>");
        }
     
        if(i < 1)
        {
            Response.Write("<script language=javascript>alert('车牌号不存在，您可以继续填写！');location='javascript:history.go(-1)'</script>");
        }
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
   
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        this.txtstime.Text=this.CalStime.SelectedDate.ToShortDateString();
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        this.CalStime.Visible = true;
        this.txtstime.Enabled = true;
    }
    protected void Button3_Click1(object sender, EventArgs e)
    {
        this.Calendar2.Visible = true;
        this.txtEtime.Enabled = true;
    }
    protected void Calendar2_SelectionChanged1(object sender, EventArgs e)
    {
        this.txtEtime.Text = this.CalStime.SelectedDate.ToShortDateString();
    }
    protected void btnSelect_Click(object sender, EventArgs e)
    {
        Response.Redirect("cheliangchaxun.aspx");
    }

    protected void gvcl_SelectedIndexChanged1(object sender, EventArgs e)
    {
        this.txtCph.Text = this.gvcl.SelectedRow.Cells[0].Text.ToString();
        this.txtTcch.Text = this.gvcl.SelectedRow.Cells[1].Text.ToString();
        this.txtCz.Text = this.gvcl.SelectedRow.Cells[2].Text.ToString();
        this.txtTcdd.Text = this.gvcl.SelectedRow.Cells[3].Text.ToString();
        this.txtstime.Text = this.gvcl.SelectedRow.Cells[4].Text.ToString();
        this.txtEtime.Text = this.gvcl.SelectedRow.Cells[5].Text.ToString();
        this.txtTcglf.Text = this.gvcl.SelectedRow.Cells[6].Text.ToString();
        this.txtjsr.Text = this.gvcl.SelectedRow.Cells[7].Text.ToString();
        this.ddlsjqk.Text = this.gvcl.SelectedRow.Cells[8].Text.ToString();
        this.txtBz.Text = this.gvcl.SelectedRow.Cells[9].Text.ToString();
    }
}
