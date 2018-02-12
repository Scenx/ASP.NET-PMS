using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;
/// <summary>
/// DB 的摘要说明
/// </summary>
public class DB
{
	public DB()
	{
		//
		// TODO: 在此处添加构造函数逻辑
		//
	}
  
    public static OleDbConnection createDB()
    {
        OleDbConnection odbc = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;Data source=|DataDirectory|db_wygl.mdb;");
        return odbc;
    }
   
}
