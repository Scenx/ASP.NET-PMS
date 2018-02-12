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
public partial class denglu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        { 
        
        }
    
       
    }


  
   
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
       
        OleDbConnection con = DB.createDB();                        //调用连库操作类里的createDB()方法
        OleDbCommand cmd = new OleDbCommand();                      //声明一个OleDbCommand对象，并将其实例化
        cmd.Connection = con;
        con.Open();                                                 //打开数据库连接
        cmd.CommandText = "select count(*) from tb_zhuce where name='" + this.txtworkname.Text + "'and pwd='" + this.txtworkpwd.Text + "'and zhiwu='" + this.ddlQx.Text + "' ";//通过员工姓名、密码、权限查询tb_zhuce数据库已找出相映的信息
        Session["name"] = this.txtworkname.Text.ToString();          //把员工输入的用户名存储到Session变量中
        Session["pwd"] = this.txtworkpwd.Text.ToString();            //把员工输入的用户密码存储到Session变量中
        int a = Convert.ToInt32(cmd.ExecuteScalar());                //
        if (a > 0)
        {
            Response.Redirect("~/guanliyuan/guanliindex.aspx");      //登录成功跳转到管理员主界面
        }
        else
        {

            Response.Write("<script language=javascript>alert('很遗憾，用户名或密码错误！');</script>");
        }
        con.Close();   //关闭数据库连接              
    }
}
