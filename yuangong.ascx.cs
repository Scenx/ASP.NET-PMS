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
public partial class yuangong : System.Web.UI.UserControl
{
    private string id;
    public string id1
    {
        set
        {
            this.id = value.ToString();
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();     //打开数据库连接
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        cmd.CommandText = "select * from tb_yuangong where id='"+this.id+"'";
        cmd.ExecuteNonQuery();
        OleDbDataReader sdr =cmd.ExecuteReader();
        sdr.Read();
        this.lblName.Text = "姓名："+sdr.GetString(2);
        this.lblId.Text = sdr.GetString(0);
        this.lblSex.Text = sdr.GetString(6);
        this.lblZt.Text = sdr.GetString(5);
        this.lblZw.Text = sdr.GetString(4);
        this.imgPhoto.ImageUrl = sdr.GetString(1);
        this.hlCk.NavigateUrl = "~/yuangongxinxi/xiangxi.aspx?id="+lblId.Text;
        sdr.Close();
        con.Close();
    }

}
