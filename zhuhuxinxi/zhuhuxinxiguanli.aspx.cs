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
public partial class zhuhuxinxiguanli : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null && Session["pwd"] == null)
        {
            Response.Redirect("~/guanliyuan/guanliyuandenglu.aspx");//将该页跳转到指定的页面中
        }
       
        this.calqrtime.Visible = false;
        this.txtqrsj.Enabled = false;
        this.aa();
    }
    public void aa()
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();         //打开数据库连接
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_zhuhu", con);
        DataSet ds = new DataSet();         //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_zhuhu");
        this.gvzhzf.DataSource = null;
        this.gvzhzf.DataBind();
        this.gvzhzf.DataSource = ds;
        this.gvzhzf.DataBind();//将数据绑定到GridView控件中
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();  //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();             //打开数据库连接
        cmd.CommandText = "insert into tb_zhuhu values('" + this.txtxqmc.Text + "','" + this.txtlymc.Text + "','" + this.txtlydy.Text + "','" + this.txtfh.Text + "','" + this.DropDownList1.SelectedItem.Text.ToString() + "','" + this.txtjzmj.Text + "','" + this.DropDownList2.SelectedItem.Text.ToString() + "','" + this.txtfwbz.Text + "','" + this.DropDownList3.SelectedItem.Text.ToString() + "','" + this.txtqrsj.Text + "','" + this.txtzfmc.Text + "','" + this.txtsfz.Text + "','" + this.txtgzdw.Text + "','" + this.txtlxdh.Text + "','" + this.txtlxdz.Text + "')";
        cmd.ExecuteNonQuery();
        Response.Write("<script language=javascript>alert('恭喜您，信息添加成功！！');</script>");
        con.Close();
        this.aa();
        this.cleartext();
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("zhuhurzshenhe.aspx");//将该页跳转到指定的页面中
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("zhuhucx.aspx");//将该页跳转到指定的页面中
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();         //打开数据库连接
        cmd.CommandText = "select count(*) from tb_zhuhu where zfname='" + this.txtzfmc.Text + "'";
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        if (i > 0)
        {
    
            this.txtzfmc.Text = "";
            this.txtzfmc.Focus();
            Response.Write("<script language=javascript>alert('住房名称存在，请在添加一个！');</script>");
        }
        else
        {

            Response.Write("<script language=javascript>alert('住房名称不存在，请您继续添加！');</script>");
        }
        con.Close();    
    }
    protected void calqrtime_SelectionChanged(object sender, EventArgs e)
    {
        this.txtqrsj.Text = this.calqrtime.SelectedDate.ToShortDateString();
    }
    protected void btnqrtime_Click(object sender, EventArgs e)
    {
        this.calqrtime.Visible = true;
        this.txtqrsj.Enabled = true;
    }
    protected void gvzhzf_SelectedIndexChanged(object sender, EventArgs e)
    {   
        this.txtxqmc.Text = this.gvzhzf.SelectedRow.Cells[1].Text.ToString();
        this.txtlymc.Text = this.gvzhzf.SelectedRow.Cells[2].Text.ToString();
        this.txtlydy.Text = this.gvzhzf.SelectedRow.Cells[3].Text.ToString();
        this.txtfh.Text = this.gvzhzf.SelectedRow.Cells[4].Text.ToString();
        this.DropDownList1.Text = this.gvzhzf.SelectedRow.Cells[5].Text.ToString();
        this.txtjzmj.Text = this.gvzhzf.SelectedRow.Cells[6].Text.ToString();
        this.DropDownList2.Text = this.gvzhzf.SelectedRow.Cells[7].Text.ToString();
        this.txtfwbz.Text = this.gvzhzf.SelectedRow.Cells[8].Text.ToString();
        this.DropDownList3.Text = this.gvzhzf.SelectedRow.Cells[9].Text.ToString();
        this.txtqrsj.Text = this.gvzhzf.SelectedRow.Cells[10].Text.ToString();
       
        this.txtzfmc.Text = this.gvzhzf.SelectedRow.Cells[0].Text.ToString();
        this.txtsfz.Text = this.gvzhzf.SelectedRow.Cells[11].Text.ToString();
        this.txtgzdw.Text = this.gvzhzf.SelectedRow.Cells[12].Text.ToString();
        this.txtlxdh.Text=this.gvzhzf.SelectedRow.Cells[13].Text.ToString();
        this.txtlxdz.Text = this.gvzhzf.SelectedRow.Cells[14].Text.ToString();
        this.txtzfmc.Enabled = false;
        
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();                           //打开数据库连接
        //,work='" + this.txtgzdw.Text + "'
        cmd.CommandText = "update tb_zhuhu set name='" + this.txtzfmc.Text + "',lyname='" + this.txtlymc.Text + "',lydy='" + this.txtlydy.Text + "',fangxing='" + this.DropDownList1.Text + "',jzmj='" + this.txtjzmj.Text + "',cqstate='" + this.DropDownList2.Text + "',fwbiezhu='" + this.txtfwbz.Text + "',systate='" + this.DropDownList3.Text + "',qrtime='" + this.txtqrsj.Text + "',zfname='" + this.txtzfmc.Text + "',idcard='" + this.txtsfz.Text + "',lxtel='" + this.txtlxdh.Text + "',address='" + this.txtlxdz.Text + "' where zfname='" + this.txtzfmc.Text + "'";
        cmd.ExecuteNonQuery();                //用OleDbCommand的ExecuteScalar()方法来执行修改操作  
        Response.Write("<script language=javascript>alert('恭喜您，信息修改成功！！');</script>");
        con.Close();
        this.aa();
    }
    protected void gvzhzf_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            
          
            e.Row.Cells[10].Text = Convert.ToDateTime(e.Row.Cells[10].Text).ToShortDateString();

        }
    }
    protected void gvzhzf_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();                          //打开数据库连接
        cmd.CommandText = "delete from tb_zhuhu where zfname='" + this.txtzfmc.Text + "'";
        cmd.ExecuteNonQuery();//用OleDbCommand的ExecuteScalar()方法来执行删除操作
        Response.Write("<script language=javascript>alert('恭喜您，信息删除成功！！')</script>");
        con.Close();
        this.aa();
    }
    public void cleartext()
    {
        this.txtxqmc.Text = "";
        this.txtlymc.Text ="";
        this.txtlydy.Text = "";
        this.txtfh.Text = "";
        this.txtjzmj.Text = "";
        this.txtfwbz.Text = "";
        this.txtqrsj.Text = "";
        this.txtzfmc.Text = "";
        this.txtsfz.Text = "";
        this.txtgzdw.Text = "";
        this.txtlxdh.Text = "";
        this.txtlxdz.Text = ""; 
    
    }
}
