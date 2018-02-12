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
public partial class xinwenguanli : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            if (Session["name"] == null && Session["pwd"] == null)
            {
                Response.Redirect("~/guanliyuan/guanliyuandenglu.aspx");//跳转到指定的页面中
            }
            this.calfbtime.Visible = false;
            this.txtfbsj.Enabled = false;
            this.aa();
        }
       
    }
    public void aa()
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();                           //打开数据库连接
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_xinwen", con);
        DataSet ds = new DataSet();             //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_xinwen");
        this.gvxw.DataSource = ds;
        this.gvxw.DataBind();
        for (int i = 0; i <= gvxw.Rows.Count - 1; i++)
        {
            DataRowView mydrv;
            string gintro;
            if (this.gvxw.PageIndex == 0)
            {
                mydrv = ds.Tables["tb_xinwen"].DefaultView[i];
                gintro = Convert.ToString(mydrv["neirong"]);
                this.gvxw.Rows[i].Cells[1].Text = SubStr(gintro, 2);
            }
            else 
            {
                mydrv = ds.Tables["tb_xinwen"].DefaultView[i+(5*gvxw.PageIndex)];
                gintro = Convert.ToString(mydrv["neirong"]);
                this.gvxw.Rows[i].Cells[1].Text = SubStr(gintro, 5);
            }
        }
            con.Close();

    }
    public string SubStr(string sString, int nLeng)
    {
        if (sString.Length <= nLeng)
        {
            return sString;
        }
        string sNewStr = sString.Substring(0, nLeng);
        sNewStr = sNewStr + "...";
        return sNewStr;
    }
    public void fill()
    {
        OleDbConnection con = DB.createDB();                //调用用户自定义的DB类的createDB()的方法
        con.Open();
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_xinwen", con);
        DataSet ds = new DataSet();  //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_xinwen");//将停车信息表的数据填充到数据集里
        this.gvxw.DataSource = ds;
        this.gvxw.DataBind();
        con.Close();//关闭数据库连接
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();             //打开数据库连接
        cmd.CommandText = "insert into tb_xinwen values('" + this.txtxwbt.Text + "','" + this.txtxwnr.Text + "','" + this.txtfbsj.Text + "','" + this.txtfbr.Text + "','" + this.txtxwlb.Text + "','" + this.txtrqzs.Text + "','" + this.ddlZt.SelectedItem.Text.ToString() + "')";
        cmd.ExecuteNonQuery();//用OleDbCommand的ExecuteScalar()方法来执行添加操作
        Response.Write("<script language=javascript>alert('恭喜您，信息添加成功！！')</script>");
        //RegisterStartupScript("", "<script language=javascript>alert('恭喜您，信息添加成功！！')</script>");
        con.Close();
        this.fill();
        this.txtxwbt.Text="";
        this.txtxwnr.Text="";
        this.txtfbsj.Text="";
        this.txtfbr.Text="";
        this.txtxwlb.Text = "";
        this.txtrqzs.Text="";
        

       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();                          //打开数据库连接
        cmd.CommandText = "delete from tb_xinwen where title='" + this.txtxwbt.Text + "'";
        cmd.ExecuteNonQuery();//用OleDbCommand的ExecuteScalar()方法来执行删除操作
        Response.Write("<script language=javascript>alert('恭喜您，信息删除成功！！')</script>");
        con.Close();
        this.fill();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();                           //打开数据库连接
        cmd.CommandText = "update tb_xinwen set neirong='" + this.txtxwnr.Text + "',fabushijian='" + this.txtfbsj.Text + "',faburen='" + this.txtfbr.Text + "',xinwenleibie='" + this.txtxwlb.Text + "',renqi='" + this.txtrqzs.Text + "',beizhu='" + this.ddlZt.SelectedItem.Text.ToString() + "' where title='" + this.txtxwbt.Text + "'";
        cmd.ExecuteNonQuery();                //用OleDbCommand的ExecuteScalar()方法来执行修改操作  
        Response.Write("<script language=javascript>alert('恭喜您，信息修改成功！！')</script>");
        con.Close();
        this.aa();
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("xinwencx.aspx");       //跳转到指定的页面中
    }
    protected void btnxwbt_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();             //打开数据库连接
        cmd.CommandText = "select count(*) from tb_xinwen where title='" + this.txtxwbt.Text + "'";
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        if (i > 0)
        {
            Response.Write("<script language=javascript>alert('标题存在，请在添加一个！');</script>");
        }

        else
        {
            Response.Write("<script language=javascript>alert('标题不存在,你可以继续录入其他信息！');</script>");
        }
        con.Close();          
       
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("xinwenshehe.aspx");//跳转到指定的页面中
    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        e.Row.Attributes.Add("onMouseOver", "Color=this.style.backgroundColor;this.style.backgroundColor='lightBlue'");
        e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=Color;");
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
        }
    }
    protected void calfbtime_SelectionChanged(object sender, EventArgs e)
    {
        this.txtfbsj.Text = this.calfbtime.SelectedDate.ToShortDateString();
        this.calfbtime.Visible = false;
    }
    protected void btnfbtime_Click(object sender, EventArgs e)
    {
        this.calfbtime.Visible = true;
        this.txtfbsj.Enabled = false;
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("xinwencx.aspx");
    }
    protected void gvxw_SelectedIndexChanged(object sender, EventArgs e)
    {
        this.txtxwbt.Text = this.gvxw.SelectedRow.Cells[0].Text.ToString();
        this.txtxwnr.Text = this.gvxw.SelectedRow.Cells[1].Text.ToString();
        this.txtfbsj.Text = this.gvxw.SelectedRow.Cells[2].Text.ToString();
        this.txtfbr.Text = this.gvxw.SelectedRow.Cells[3].Text.ToString();
        this.txtxwlb.Text = this.gvxw.SelectedRow.Cells[4].Text.ToString();
        this.txtrqzs.Text = this.gvxw.SelectedRow.Cells[5].Text.ToString();
     
    }
    protected void gvxw_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gvxw.PageIndex = e.NewPageIndex;
        this.aa();//调用用户自定义的函数
    }
   
}
