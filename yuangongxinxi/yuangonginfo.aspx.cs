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
public partial class yuangonginfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] == null && Session["pwd"] == null)
        {
            Response.Redirect("~/guanliyuan/guanliyuandenglu.aspx");
        }
       
        this.aa();                                  //调用aa()自定义方法
       
        
    }
    public void aa()
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();                                 //打开数据库连接
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        OleDbDataAdapter sda = new OleDbDataAdapter("select * from tb_yuangong", con);
        DataSet ds = new DataSet();                 //声明一个DataSet的ds对象,并将其实例化
        sda.Fill(ds, "tb_yuangong");
        this.gvYgcx.DataSource = ds;
        this.gvYgcx.DataBind();                        //将数据源绑定到 GridView 控件
        con.Close();                                    //关闭数据库的连接
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string FullFileName = this.flLl.PostedFile.FileName;
        string fileName = FullFileName.Substring(FullFileName.LastIndexOf("\\") + 1);
        this.txtimage.Text = "~/photo/"+ fileName;
        string type = fileName.Substring(fileName.LastIndexOf(".") + 1);
        if (type == "bmp" || type == "jpg" || type == "gif")
        {
            this.flLl.PostedFile.SaveAs(Server.MapPath("~/photo") + "\\" + fileName);
            this.imgphoto.ImageUrl = "~/photo/" + fileName;
        }
        else
        {
            Response.Write("<script lanuage='javaScript'>alert('你上传的格式有误!');location='javascript:history.go(-1)'</script>");
        }
    }
    protected void btnok_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "insert into tb_yuangong values('" + this.txtid.Text + "','" + this.txtimage.Text + "','" + this.txtygname.Text + "','" + this.txtengname.Text + "','" + this.ddlgzzc.Text + "','" + this.ddlgzzt.Text + "','" + this.ddlxb.Text + "','" + this.ddlhy.Text + "','" + this.ddljjkk.Text + "','" + this.Txtnation.Text + "','" + this.Txtbird.Text + "','" + this.txtlocus.Text + "','" + this.Txtjg.Text + "','" + this.Txtsb.Text + "','" + this.Txtgj.Text + "','" + this.txtyb.Text + "','" + this.txthz.Text + "','" + this.txtyzbm.Text + "','" + this.txtzhuanye.Text + "','" + this.Txtbyschool.Text + "','" + this.Txtemail.Text + "','" + this.Txttc.Text + "','" + this.ddlxueli.Text + "','" + this.ddlwyyz.Text + "','" + this.ddlwysp.Text + "','" + this.ddldnsp.Text + "','" + this.Txtgwid.Text + "','" + this.Txtphone.Text + "','" + this.Txttel.Text + "','" + this.Txtaddress.Text + "','" + this.Txtcard.Text + "')";
        Response.Write("<script lanuage='javaScript'>alert('恭喜您！！员工信息添加成功！')</script>");
        cmd.ExecuteNonQuery();
        con.Close();
    }
    protected void btnSh_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();
        OleDbCommand cmd = new OleDbCommand();          //声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "select count(*) from tb_yuangong where id='" + this.txtid.Text + "'";
        int i = Convert.ToInt32(cmd.ExecuteScalar());
        if (i > 0)
        {
           this.txtygname.Text = "";
           this.txtygname.Focus();

           Response.Write("<script language=javascript>alert('员工编号存在，请重新输入！');</script>");
        }
        else
        {
            Response.Write("<script language=javascript>alert('员工编号不存在,您可继续录入其他数据！');</script>");
        }
        con.Close();
    }
    protected void gvYgcx_SelectedIndexChanged(object sender, EventArgs e)
    { 
        this.txtid.Text = this.gvYgcx.SelectedRow.Cells[1].Text;//显示员工编号
        this.txtygname.Text = this.gvYgcx.SelectedRow.Cells[2].Text;//显示员工的中文姓名
        this.ddlgzzc.Text = this.gvYgcx.SelectedRow.Cells[3].Text;//显示员工工作职称
        this.ddlgzzt.Text = this.gvYgcx.SelectedRow.Cells[4].Text;//显示员工工作状态
        this.txtengname.Text = this.gvYgcx.SelectedRow.Cells[5].Text;//显示员工的英文姓名
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        con.Open();                                  //打开数据库连接
        OleDbCommand cmd = new OleDbCommand();      //声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        cmd.CommandText = "select * from tb_yuangong where id='" + this.txtid.Text + "'";
        cmd.ExecuteNonQuery();
        OleDbDataReader sdr = cmd.ExecuteReader();
        sdr.Read();
        this.imgphoto.ImageUrl = sdr.GetString(1);//显示员工照片
        this.txtimage.Text = sdr.GetString(1);//显示员工照片路径
        this.ddlxb.Text = sdr.GetString(6);//根据编号显示员工性别
        this.ddlhy.Text = sdr.GetString(7);//婚姻状态
        this.ddljjkk.Text = sdr.GetString(8);//健康状态
        this.Txtnation.Text = sdr.GetString(9);//民族
        this.Txtbird.Text = sdr.GetDateTime(10).ToShortDateString();//出生日期
        this.txtlocus.Text = sdr.GetString(11);//户口所在地
        this.Txtjg.Text = sdr.GetString(12);//籍贯
        this.Txtsb.Text = sdr.GetString(13);//社保个人帐号
        this.Txtgj.Text = sdr.GetString(14);//公基金帐号
        this.txtyb.Text = sdr.GetString(15);//医疗保险帐号
        this.txthz.Text = sdr.GetString(16);//护照号
        this.txtyzbm.Text = sdr.GetString(17);//邮政编号
        this.txtzhuanye.Text = sdr.GetString(18);//专业
        this.Txtbyschool.Text = sdr.GetString(19);//毕业院校
        this.Txtemail.Text = sdr.GetString(20);//电子邮箱
        this.Txttc.Text = sdr.GetString(21);//特长
        this.ddlxueli.Text = sdr.GetString(22);//学历
        this.ddlwyyz.Text = sdr.GetString(23);//外语语种
        this.ddlwysp.Text = sdr.GetString(24);//外语水平
        this.ddldnsp.Text = sdr.GetString(25);//电脑水平
        this.Txtgwid.Text = sdr.GetString(26);//岗位编号
        this.Txtphone.Text = sdr.GetString(27);//移动电话
        this.Txttel.Text = sdr.GetString(28);//联系电话
        this.Txtaddress.Text = sdr.GetString(29);//家庭住址
        this.Txtcard.Text = sdr.GetString(30);//身份证号
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();    //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "update tb_yuangong set chname='" + this.txtygname.Text + "',engname='" + this.txtengname.Text + "' ,working='" + this.ddlgzzc.SelectedItem.Text.ToString() + "',state='" + this.ddlgzzt.SelectedItem.Text.ToString() + "',sex='" + this.ddlxb.SelectedItem.Text.ToString() + "',marriage='" + this.ddlhy.SelectedItem.Text.ToString() + "',helith='" + this.ddljjkk.SelectedItem.Text.ToString() + "',nation='" + this.Txtnation.Text + "',birth='" + this.Txtbird.Text + "',locus='" + this.txtlocus.Text + "', native='" + this.Txtjg.Text + "',sraccounts='" + this.Txtsb.Text + "',gjaccounts='" + this.Txtgj.Text + "',ylaccounts='" + this.txtyb.Text + "',PassPort='" + this.txthz.Text + "',postalcode='" + this.txtyzbm.Text + "', specialty='" + this.txtzhuanye.Text + "' ,finishschool='" + this.Txtbyschool.Text + "',email='" + this.Txtemail.Text + "',suit='" + this.Txttc.Text + "',degree='" + this.ddlxueli.Text + "',forfind='" + this.ddlwyyz.Text + "',forlevel='" + this.ddlwysp.Text + "',computerlevel='" + this.ddldnsp.Text + "' ,postID='" + this.Txtgwid.Text + "',mobilePhone='" + this.Txtphone.Text + "',address='" + this.Txtaddress.Text + "',idCard='" + this.Txtcard.Text + "',homePhone='" + this.Txttel.Text + "'  where id='" + this.txtid.Text + "'";
        cmd.ExecuteNonQuery();//用OleDbCommand的ExecuteScalar()方法来执行修改操作
        Response.Write("<script language=javascript>alert('恭喜您，信息修改成功！')</script>");
        con.Close();
        this.aa();
    }
 
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        OleDbConnection con = DB.createDB();        //调用用户自定义的DB类的createDB()的方法
        OleDbCommand cmd = new OleDbCommand();//声明一个OleDbCommand的 cmd对象，并将其实例化
        cmd.Connection = con;
        con.Open();
        cmd.CommandText = "delete from tb_yuangong where id='" + this.txtid.Text + "'";
        cmd.ExecuteNonQuery();//用OleDbCommand的ExecuteScalar()方法来执行删除操作
        Response.Write("<script language=javascript>alert('恭喜您，信息删除成功！')</script>");
        con.Close();
        this.aa();
    }
   
 
    protected void gvYgcx_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.gvYgcx.PageIndex = e.NewPageIndex;
        this.aa();//调用填充GridView控件的用户自定义方法
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("yuangongcx.aspx");
    }
}
