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
using System.Text.RegularExpressions;
public partial class yuangongzhuce : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void btnYhm_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();         //打开数据库连接
        cmd.CommandText = "select * from tb_zhuce where name='" + this.TextBox1.Text + "'";
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        if (i > 1)
        {
            this.TextBox1.Text = "";
            this.TextBox1.Focus();
            Response.Write("<script language=javascript>alert('姓名存在，请在添加一个！');location='javascript:history.go(-1)'</script>");
        }
        else
        {
            Response.Write("<script language=javascript>alert('姓名不存在，你可以继续注册！');location='javascript:history.go(-1)'</script>");
        }
        con.Close();    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");//将该页跳转到指定的页面中
    }
  
    protected void Button2_Click(object sender, EventArgs e)
    {
            
            OleDbConnection con = DB.createDB();  //调用用户自定义的DB类的createDB()的方法
            OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
            cmd.Connection = con;
            con.Open();             //打开数据库连接
            cmd.CommandText = "insert into tb_zhuce values('" + this.TextBox1.Text + "','" + this.TextBox2.Text + "','" + this.DropDownList2.Text + "','" + this.TextBox4.Text + "','" + this.TextBox5.Text + "','" + this.DropDownList3.Text + "','" + this.TextBox6.Text + "','" + this.TextBox7.Text + "','" + this.TextBox8.Text + "','" + this.TextBox9.Text + "','" + this.TextBox10.Text + "','" + this.TextBox11.Text + "','" + this.TextBox12.Text + "','" + this.TextBox13.Text + "')";
            cmd.ExecuteNonQuery();//用OleDbCommand的ExecuteScalar()方法来执行添加操作
            Response.Redirect("~/Default.aspx");//将该页跳转到指定的页面中
           // Response.Write("<script>alert('恭喜您！！信息添加成功！');location='javascript:history.go(-1)'</script>");
            con.Close();
      
    }

    
    
}
