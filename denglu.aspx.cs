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
using System.Data.OleDb;                                               //引入命名空间
public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
                                                    
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");//将该页跳转到指定的页面中
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        OleDbConnection con = DB.createDB();                           //调用用户自定义的DB类的createDB()的方法

        OleDbCommand cmd = new OleDbCommand();                         //声明一个OleDbCommand的cmd对象,并将其实例化
        cmd.Connection = con;
        con.Open();                                                      //打开数据库连接
        cmd.CommandText = "select count(*) from tb_zhuce where name='" + this.TextBox1.Text + "'and pwd='" + this.TextBox2.Text + "' ";
        int a = Convert.ToInt32(cmd.ExecuteScalar());
        if (a > 0)                                                     //数据库中有这条字段的信息
        {
           
            this.LinkButton1.Visible = true;
            //this.lblxzchdl.Visible = false;//显示登录失败信息的Label标签让它不可见
            Session["nameyh"] = this.TextBox1.Text.ToString();//将管理员输入的姓名存储在Session["name"]中
            Session["pwdyh"] = this.TextBox2.Text.ToString();//将管理员输入的密码存储在Session["pwd"]中
            this.LinkButton1.Visible = true;
            //Response.Write("<script language=javascript>alert('恭喜您，登录成功！！');location='javascript:history.go(-1)'</script>");
            
            Response.Redirect("~/default.aspx");//将该页跳转到指定的页面中
        }
        else                                                           //数据库中没有这条字段的信息
        {
            // this.lblshibai.Visible = true;
            // this.lblxzchdl.Visible = false;
            Response.Write("<script language=javascript>alert('很遗憾，登录失败！！');location='javascript:history.go(-1)'</script>");
            //this.lblshibai.Text = "登录失败,请重新登录...";             //用Label标签显示登录失败的信息
        }
        con.Close();   //关闭数据库的连接    
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/zhuce/zhuce.aspx");//将改页跳转到注册页面中
    }
}
