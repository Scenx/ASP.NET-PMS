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
public partial class zhibanyuangong : System.Web.UI.Page
{
    private int numrow = 3;   //设置表格中一行显示的个数
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null && Session["pwd"] == null)
        {
            Response.Redirect("~/guanliyuan/guanliyuandenglu.aspx");//将该页跳转到指定的页面中
        }
       
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "select top 6 id from tb_yuangong  where state='在岗'order by id Desc";
        int i = 0;
        System.Web.UI.WebControls.TableRow tr = new TableRow();
        
        OleDbDataReader sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            i = i + 1;
            System.Web.UI.WebControls.TableCell tc = new TableCell();
            yuangong yg = (yuangong)this.LoadControl("~/yuangong.ascx");
            yg.id1 = sdr.GetString(0);
            tc.Controls.Add(yg);
            tr.Controls.Add(tc);
            if (i % numrow == 0)
            {
                this.Table1.Rows.Add(tr);
                tr = new TableRow();
            }
            if (i % numrow != 0)
            {
                this.Table1.Rows.Add(tr);
            }
        }

        sdr.Close();
        con.Close();
    }
    protected void Head1_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
}
