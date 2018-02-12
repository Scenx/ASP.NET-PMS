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
public partial class qianfeicx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["nameyh"] == null && Session["pwdyh"] == null)
        {
            if (Session["name"] == null && Session["pwd"] == null)
            {
                Response.Redirect("~/denglu.aspx");//跳转到指定的页面中
            }
        }
        this.aa();
    }
    public void aa()
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_qianfei", con);
        DataSet ds = new DataSet();         //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_qianfei");
        this.gvqf.DataSource = ds;
        this.gvqf.DataKeyNames = new string[] { "name" };
        this.gvqf.DataBind();//将数据绑定到GridView控件中
        for (int i = 0; i <= gvqf.Rows.Count - 1; i++)
        {
            DataRowView mydrv;
            string gintro;
            if (this.gvqf.PageIndex == 0)
            {
                mydrv = ds.Tables["tb_qianfei"].DefaultView[i];
                gintro = Convert.ToString(mydrv["address"]);
                this.gvqf.Rows[i].Cells[1].Text = SubStr(gintro, 10);
            }
            else
            {
                mydrv = ds.Tables["tb_qianfei"].DefaultView[i + (5 * gvqf.PageIndex)];
                gintro = Convert.ToString(mydrv["address"]);
                this.gvqf.Rows[i].Cells[1].Text = SubStr(gintro,10);
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
    protected void Button1_Click(object sender, EventArgs e)
    {

        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        DataSet ds = new DataSet();         //声明一个DataSet的ds对象,并将其实例化
        if (this.rbtnqfzh.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_qianfei where name='" + this.txtqfzh.Text + "'", con);
            sda.Fill(ds, "tb_qianfei");
            this.gvqf.DataSource = ds;
            this.gvqf.DataBind();//将数据绑定到GridView控件中

        }
        if (this.rbtnlx.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_qianfei where leibie='" + this.ddllx.SelectedItem.Text.ToString() + "'", con);
            sda.Fill(ds, "tb_qianfei");
            this.gvqf.DataSource = ds;
            this.gvqf.DataBind();//将数据绑定到GridView控件中
        }
        if (this.rbtnqfje.Checked == true)
        {
            OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_qianfei where qianfei='" + this.txtqfje.Text.ToString() + "'", con);
            sda.Fill(ds, "tb_qianfei");
            this.gvqf.DataSource = ds;
            this.gvqf.DataBind();//将数据绑定到GridView控件中
        }
    }
    protected void btnqx_Click(object sender, EventArgs e)
    {
        this.aa();
    }
   
    protected void gvqf_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onMouseOver", "Color=this.style.backgroundColor;this.style.backgroundColor='lightBlue'");
            e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=Color;");
            if (e.Row.Cells[6].Text == "已处理")
            {
                e.Row.Cells[6].Text = "<font color=blue>已处理</font>";
            }
            else
            {
                e.Row.Cells[6].Text = "<font color=red>未处理</font>";
            }
          
            e.Row.Cells[3].Text = Convert.ToDateTime(e.Row.Cells[3].Text).ToShortDateString();
            e.Row.Cells[4].Text = Convert.ToDateTime(e.Row.Cells[4].Text).ToShortDateString();
        }
    }
    protected void gvqf_SelectedIndexChanged(object sender, EventArgs e)
    {
      
    }
    protected void gvqf_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string name = this.gvqf.DataKeys[e.RowIndex].Value.ToString();
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();
        OleDbCommand cmd = new OleDbCommand("delete from tb_qianfei where name='" + name + "'", con);

        cmd.ExecuteNonQuery();
        //this.aa();
        this.gvqf.EditIndex = -1;
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_qianfei", con);
        DataSet ds = new DataSet();         //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_qianfei");
        this.gvqf.DataSource = ds;
        
        this.gvqf.DataBind();//将数据绑定到GridView控件中
        con.Close();
    }
}
