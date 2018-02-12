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
public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        this.xinwenfillgv();//调用用户自定义的xinwenfillgv()方法
        this.fillgougao();//调用用户自定义的fillgougao()方法
        this.qianfeifillgv();//调用用户自定义的qianfeifillgv()方法
        
    }
    public void xinwenfillgv()            //用户自定义的方法
    {
        OleDbConnection con = DB.createDB();//调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的对象,并将该对象cmd实例化
        cmd.Connection = con;
        con.Open();//打开数据库连接
        OleDbDataAdapter sda = new OleDbDataAdapter("select top 9 * from tb_xinwen order by fabushijian desc", con);//从新闻表tb_xinwen按发布时间fabushijian的降序排序
        DataSet ds = new DataSet();//声明一个DataSet的对象,并将该对象ds实例化
        sda.Fill(ds, "tb_xinwen");//将新闻表tb_xinwen填充到数据库中
        this.gvXw.DataSource = ds;
        //this.GridView2.DataKeyNames = new string[] { "title" }; 
        this.gvXw.DataBind();//将数据绑定到GridView控件中
        for (int i = 0; i <= gvXw.Rows.Count - 1; i++)
        {
            DataRowView mydrv;  //声明一个DataRowView的对象
            string gintro;
            if (this.gvXw.PageIndex == 0)
            {
                mydrv = ds.Tables["tb_xinwen"].DefaultView[i];
                gintro = Convert.ToString(mydrv["title"]);
                this.gvXw.Rows[i].Cells[0].Text = SubStr(gintro, 10);
            }
            else
            {
                mydrv = ds.Tables["tb_xinwen"].DefaultView[i + (5 * gvXw.PageIndex)];
                gintro = Convert.ToString(mydrv["title"]);
                this.gvXw.Rows[i].Cells[0].Text = SubStr(gintro, 10);
            }
        }
        con.Close();//关闭数据库连接
    }
   
    public void fillgougao()
    {
        OleDbConnection con = DB.createDB();//调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand(" select  * from tb_zhannei", con);
        con.Open();//打开数据库连接
        OleDbDataReader sdr = cmd.ExecuteReader(); 
        sdr.Read();//
        this.lblGgxx.Text = sdr.GetString(0);//从数据库中读取第一个数据放到Label标签中
        sdr.Close();//关闭阅读器
        con.Close();//关闭数据库连接
    }
    public void qianfeifillgv()
    {
        OleDbConnection con = DB.createDB();
        con.Open(); //打开数据库连接
        OleDbCommand cmd = new OleDbCommand();//调用用户自定义的DB类的createDB()的方法
        OleDbDataAdapter sda = new OleDbDataAdapter("select top 10 * from tb_qianfei", con);
        DataSet ds = new DataSet();         //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_qianfei");
        this.gvQf.DataSource = ds;
        this.gvQf.DataBind();//将数据绑定到GridView控件中
        con.Close();//关闭数据库连接
    }
    public string SubStr(string sString, int nLeng)
    {
        if (sString.Length <= nLeng)  //判断字符串的长度
        {
            return sString;//返回一个string类型的变量
        }
        string sNewStr = sString.Substring(0, nLeng);//截取字符串
        sNewStr = sNewStr + "...";//在变量后面加上"...."
        return sNewStr; //返回一个string类型的变量
    }

   
   
    protected void gvXw_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onMouseOver", "Color=this.style.backgroundColor;this.style.backgroundColor='lightBlue'");
            e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=Color;");
            e.Row.Cells[1].Text = Convert.ToDateTime(e.Row.Cells[1].Text).ToShortDateString(); 
        }
    }
   
    protected void gvQf_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onMouseOver", "Color=this.style.backgroundColor;this.style.backgroundColor='lightBlue'");
            e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=Color;");
            e.Row.Cells[3].Text = Convert.ToDateTime(e.Row.Cells[3].Text).ToShortDateString();
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/guanliyuan/guanliyuandenglu.aspx");//跳转到管理员登录页
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/zhuce/zhuce.aspx");//将改页跳转到注册页面中
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        OleDbConnection con = DB.createDB();      //调用用户自定义的DB类的createDB()的方法

        OleDbCommand cmd = new OleDbCommand();
        cmd.Connection = con;
        con.Open();//打开数据库连接
        cmd.CommandText = "select count(*) from tb_zhuce where name='" + this.txtyhname.Text + "'and pwd='" + this.txtyhmm.Text + "' ";//查询注册表tb_zhuce
        int a = Convert.ToInt32(cmd.ExecuteScalar());
        if (a > 0) //如果变量大于0
        {
            this.lblshibai.Visible = true;//登录后提示登录失败信息的标签不可用
            this.lblxzchdl.Visible = false;//登录后提示登录成功信息的标签可用
            Session["nameyh"] = this.txtyhname.Text.ToString();//把传来的姓名存储到Session["nameyh"]中
            Session["pwdyh"] = this.txtyhmm.Text.ToString();//把传来的密码存储到Session["pwdyh"]中
        }
        else
        {
            this.lblshibai.Visible = true;//登录后提示登录失败信息的标签可用
            this.lblxzchdl.Visible = false;//登录后提示登录成功信息的标签不可用
            this.lblshibai.Text = "登录失败,请重新登录...";//登录失败后提示信息为“登录失败，请重新登录...”
        }
        con.Close();//关闭数据库连接
    }
}
