﻿using System;
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
public partial class qianfeishenhe : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null && Session["pwd"] == null)
        {
            Response.Redirect("~/guanliyuan/guanliyuandenglu.aspx");//跳转到指定的页面中
        }
       
        this.aa();
    }
    private void aa()
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_qianfei", con);
        DataSet ds = new DataSet();             //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_qianfei");
        this.GridView1.DataSource = ds.Tables[0].DefaultView;
        this.GridView1.DataKeyNames = new string[] { "name" };
        this.GridView1.DataBind();//将数据绑定到GridView控件中
        con.Close();
    }
   
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onMouseOver", "Color=this.style.backgroundColor;this.style.backgroundColor='#FFF000'");
            e.Row.Attributes.Add("onMouseOut", "this.style.backgroundColor=Color;");
            if (e.Row.Cells[6].Text == "已处理")
            {
                e.Row.Cells[6].Text = "<font color=blue>已处理</font>";
            }
            else
            {
                e.Row.Cells[6].Text = "<font color=red>未处理</font>";
            }
            ((LinkButton)(e.Row.Cells[9].Controls[0])).Attributes.Add("onclick", "return confirm('确定删除吗？')");
            e.Row.Cells[3].Text = Convert.ToDateTime(e.Row.Cells[3].Text).ToShortDateString();
            e.Row.Cells[4].Text = Convert.ToDateTime(e.Row.Cells[4].Text).ToShortDateString();
        }
    }
   
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        this.aa();
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        string name = this.GridView1.DataKeys[e.NewSelectedIndex].Value.ToString();
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();
        OleDbCommand cmd = new OleDbCommand("select state from tb_qianfei where name='" + name + "'", con);
    
        string count = cmd.ExecuteScalar().ToString();
        if (count == "已处理")
        {
            count = "未处理";
        }
        else 
        {
            count = "已处理";
        }
        cmd.CommandText = "update tb_qianfei set state='"+count+"'where name='"+name+"'";
        cmd.ExecuteNonQuery();
        con.Close();
        this.aa();
    }
    
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        string name = this.GridView1.DataKeys[e.RowIndex].Value.ToString();
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();
        OleDbCommand cmd = new OleDbCommand("delete from tb_qianfei where name='" + name + "'", con);
       
        cmd.ExecuteNonQuery();
        //this.aa();
        this.GridView1.EditIndex = -1;
      
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_qianfei", con);
        DataSet ds = new DataSet();             //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_qianfei");
        this.GridView1.DataSource = ds.Tables["tb_qianfei"];
   
        this.GridView1.DataBind();//将数据绑定到GridView控件中
        con.Close();
        

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("qianfeiguanli.aspx");//跳转到指定的页面中
    }
    
}
